#ifndef LLVM_ADT_TREESTRING_H
#define LLVM_ADT_TREESTRING_H

#include "llvm/ADT/SmallVector.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"

#include "llvm/ADT/SequenceAlignment.h"

// #include "ilcplex/cplex.h"
// #include "ilcplex/ilocplex.h"

#include <list>
#include <queue>
#include <set>
#include <unordered_map>
#include <vector>

namespace llvm {

class TreeNode {
private:
  int nodeID;
  bool isLeaf = true;
  int father = -1, sibling = -1, elderSibling = -1;
  int depth = 0;
  std::vector<int> blocks, branches;
  SmallVector<Value *, 8> FVec; // store both BasicBlocks and Instructions
  /*  This class stores a structured (sub)string following T -> S | S [T ... T]
     T.
      - If isLeaf = true, this represents straight-line program S,
        where 'blocks' stores the sequence of blocks (not instructinos!) in S,
        'branches' is empty, and sibling = -1;
      - If isLeaf = false, this represents substring S | [br] | ch,
        where 'blocks' stores the sequence of blocks (not instructions!) in S,
        'branches stores' the sequence of substrings (sibling tree nodes) in
     [br], and 'sibling' stores the substring (sibling tree node) representing
     ch.
  */
public:
  TreeNode(int ID, int fa) : nodeID(ID), father(fa) {}
  void addBlock(int block, BasicBlock *BB) {
    blocks.push_back(block);
    FVec.push_back(BB);
    for (Instruction &I : *BB) {
      if (!isa<LandingPadInst>(&I) && !isa<PHINode>(&I)) {
        FVec.push_back(&I);
      }
    }
  }
  void addElderSibling(int ch) { elderSibling = ch; }
  void addSibling(int ch) { isLeaf = false, sibling = ch; }
  void addBranch(int br) { isLeaf = false, branches.push_back(br); }
  void setDepth(int d) { depth = d; }
  int getID() { return nodeID; }
  int getSibling() { return sibling; }
  int getDepth() { return depth; }
  int getFather() { return father; }
  int getElderSibling() { return elderSibling; }
  std::vector<int> getBlocks() { return blocks; }
  SmallVectorImpl<Value *> &getFVec() { return FVec; }
  Value *getFVecByPos(int pos) { return FVec[pos]; }
  int getFVecSize() { return FVec.size(); }
  std::vector<int> getBranches() { return branches; }
  void deleteLastBranch() {
    if (!branches.empty())
      branches.pop_back();
    if (branches.empty())
      isLeaf = true;
  }
  void clearBranches() {
    branches.clear();
    isLeaf = true;
  }
  void shuffleBranches() {
    std::random_shuffle(branches.begin(), branches.end());
  }
  void printNode() {
    errs() << 'P' << nodeID << ": (";
    for (int block : blocks) {
      errs() << 'B' << block;
      if (block != blocks.back())
        errs() << ' ';
    }
    errs() << ')';
    if (!isLeaf) {
      errs() << " [";
      for (int br : branches) {
        errs() << 'P' << br;
        if (br != branches.back())
          errs() << ' ';
      }
      errs() << "] ";
      if (sibling != -1)
        errs() << 'P' << sibling;
      else
        errs() << "none";
    }
    errs() << '\n';
    errs() << "\t";
    for (auto x : getFVec()) {
      if (isa<BasicBlock>(x))
        errs() << "[B] ";
      else if (isa<Instruction>(x))
        errs() << "[I] ";
    }
    errs() << '\n';
  }
};

class TreeString {
public:
  int root = -1, numNodes = 0;
  int numBlocks = 0, numInstrs = 0;
  std::vector<TreeNode> nodes;
  std::vector<BasicBlock *> BlockSeq;
  std::vector<Instruction *> InstrSeq;
  std::vector<std::vector<int>> BlockInstrs;
  std::unordered_map<BasicBlock *, int> BlockIdx;
  std::unordered_map<Instruction *, int> InstrIdx;
  std::vector<std::vector<int>> CFG; // CFG without backward edges
  TreeString(Function *F) {
    for (BasicBlock &BB : *F) {
      BlockIdx[&BB] = numBlocks++;
      BlockSeq.push_back(&BB);
      BlockInstrs.push_back(std::vector<int>());
      for (Instruction &I : BB) {
        InstrIdx[&I] = numInstrs++;
        InstrSeq.push_back(&I);
        BlockInstrs[BlockIdx[&BB]].push_back(InstrIdx[&I]);
      }
    }
    std::vector<bool> visited, marked;
    visited.resize(numBlocks, false);
    marked.resize(numBlocks, false);
    CFG.resize(numBlocks);
    getTrimmedCFG(0, visited, marked);

    std::set<int> allBlocks;
    for (int i = 0; i < numBlocks; i++)
      if (marked[i])
        allBlocks.insert(i);
    root = buildTree(allBlocks, -1);
  }

  void setDepth(int node, int cur_depth = 0) {
    nodes[node].setDepth(cur_depth);
    for (auto child_branch : nodes[node].getBranches())
      setDepth(child_branch, cur_depth + 1);
    if (nodes[node].getSibling() != -1)
      setDepth(nodes[node].getSibling(), cur_depth);
  }

  void confirmDepth(int limitDepth, int node) {
    MY_ASSERT(nodes[node].getDepth() < limitDepth &&
              "Tree depth exceeds limit!");
    for (auto child_branch : nodes[node].getBranches())
      confirmDepth(limitDepth, child_branch);
    if (nodes[node].getSibling() != -1)
      confirmDepth(limitDepth, nodes[node].getSibling());
  }
  void confirmBranchingFactor(int limitBranchFactor, int node) {
    MY_ASSERT(nodes[node].getBranches().size() <= limitBranchFactor &&
              "Branching factor exceeds limit!");
    for (auto child_branch : nodes[node].getBranches())
      confirmBranchingFactor(limitBranchFactor, child_branch);
    if (nodes[node].getSibling() != -1)
      confirmBranchingFactor(limitBranchFactor, nodes[node].getSibling());
  }

  void getTrimmedCFG(int u, std::vector<bool> &visited,
                     std::vector<bool> &marked) {
    visited[u] = true;
    marked[u] = true;
    BasicBlock *BB = BlockSeq[u];
    Instruction *TI = BB->getTerminator();
    for (int i = 0; i < TI->getNumSuccessors(); i++) {
      int v = BlockIdx[TI->getSuccessor(i)];
      if (u != v && !visited[v]) {
        if (std::find(CFG[u].begin(), CFG[u].end(), v) == CFG[u].end()) {
          CFG[u].push_back(v), getTrimmedCFG(v, visited, marked);
        }
      } else {
        // errs() << "Deleted backward edge (B" << u << " -> B" << v << ").\n";
      }
    }
    visited[u] = false;
  }

  int buildTree(std::set<int> &curBlocks, int fa) {
    int curNode = numNodes++;
    int totalBlocksAdded = 0;
    nodes.push_back(TreeNode(curNode, fa));
    for (int x : curBlocks) {
      std::unordered_map<int, int> indeg;
      for (int u : curBlocks)
        for (int v : CFG[u])
          if (curBlocks.find(v) != curBlocks.end())
            indeg[v]++;
      if (indeg.find(x) != indeg.end())
        continue;
      nodes[curNode].addBlock(x, BlockSeq[x]);
      totalBlocksAdded++;
      int numCols = 0;
      for (int y : CFG[x])
        if (curBlocks.find(y) != curBlocks.end())
          numCols++;
      std::queue<int> que;
      std::unordered_map<int, std::set<int>> col;
      // get indegrees of all blocks in the subgraph
      int ind = 0;
      for (int i = 0; i < numCols; i++) {
        if (curBlocks.find(CFG[x][i]) == curBlocks.end())
          continue;
        col[CFG[x][i]] = std::set<int>{ind++};
        indeg[CFG[x][i]]--;
        if (indeg[CFG[x][i]] == 0)
          que.push(CFG[x][i]);
      }
      // topological BFS on the subgraph, color each branch
      while (!que.empty()) {
        int u = que.front();
        que.pop();
        for (int v : CFG[u])
          if (curBlocks.find(v) != curBlocks.end()) {
            if (col.find(v) == col.end())
              col[v] = col[u];
            else {
              for (int c : col[u])
                col[v].insert(c);
            }
            indeg[v]--;
            if (indeg[v] == 0)
              que.push(v);
          }
      }
      // classify blocks into different branches (and those succeeding all
      // branches). if a block is accessed by more than two branches (happens if
      // switch or goto exists), classify it to the one with smallest color
      // labeling (won't affect correctness).
      std::set<int> ch;
      std::vector<std::set<int>> br(numCols);
      for (int u : curBlocks) {
        if (col.find(u) != col.end()) {
          if (col[u].size() < numCols)
            br[*col[u].begin()].insert(u);
          else {
            ch.insert(u);
          }
        } else if (u != x) {
          ch.insert(u);
        }
      }
      for (int c = 0; c < numCols; c++) {
        if (!br[c].empty()) {
          int brNode = buildTree(br[c], curNode);
          nodes[curNode].addBranch(brNode);
          totalBlocksAdded += br[c].size();
        }
      }
      if (!ch.empty()) {
        // It is sibling node, so it should not have a father.
        int chNode = buildTree(ch, -1);
        nodes[curNode].addSibling(chNode);
        nodes[chNode].addElderSibling(curNode);
        totalBlocksAdded += ch.size();
      }
      break;
    }
    if (totalBlocksAdded != curBlocks.size()) {
      errs() << "**************** ERROR in building tree string! "
                "****************\n";
      errs() << "node " << curNode << " has " << curBlocks.size() << " blocks, "
             << "but its subtree contains " << totalBlocksAdded
             << " blocks in total!\n";
    }
    return curNode;
  }

  void visit(int nd, std::vector<int> &subtree_blocks) {
    auto blocks = nodes[nd].getBlocks(); // copy
    subtree_blocks.insert(subtree_blocks.end(), blocks.begin(), blocks.end());
    for (auto child_branch : nodes[nd].getBranches())
      visit(child_branch, subtree_blocks);
    if (nodes[nd].getSibling() != -1)
      visit(nodes[nd].getSibling(), subtree_blocks);
  }

  void capDepth(int limitDepth, int nd) {
    if (nodes[nd].getDepth() == limitDepth - 1) {
      std::vector<int> subtree_blocks;
      for (auto child_branch : nodes[nd].getBranches())
        visit(child_branch, subtree_blocks);
      nodes[nd].clearBranches();
      for (auto block : subtree_blocks)
        nodes[nd].addBlock(block, BlockSeq[block]);
    } else {
      for (auto child_branch : nodes[nd].getBranches())
        capDepth(limitDepth, child_branch);
    }
    if (nodes[nd].getSibling() != -1)
      capDepth(limitDepth, nodes[nd].getSibling());
  }

  void capBranchingFactor(int limitBranchFactor, int nd) {
    if (nodes[nd].getBranches().size() > limitBranchFactor) {
      nodes[nd].shuffleBranches();
      while (nodes[nd].getBranches().size() > limitBranchFactor) {
        int child_branch = nodes[nd].getBranches().back();
        nodes[nd].deleteLastBranch();
        std::vector<int> subtree_blocks;
        visit(child_branch, subtree_blocks);
        int minSize = 1e9, minIdxChild = -1;
        std::vector<int> branches = nodes[nd].getBranches(); // copy
        for (int i = 0; i < limitBranchFactor; i++)
          if (minSize > nodes[branches[i]].getFVec().size()) {
            minSize = nodes[branches[i]].getFVec().size();
            minIdxChild = branches[i];
          }
        for (auto block : subtree_blocks)
          nodes[minIdxChild].addBlock(block, BlockSeq[block]);
      }
    } else {
      for (auto child_branch : nodes[nd].getBranches())
        capBranchingFactor(limitBranchFactor, child_branch);
    }
    if (nodes[nd].getSibling() != -1)
      capBranchingFactor(limitBranchFactor, nodes[nd].getSibling());
  }

  void getReachableNodes(int nd, std::vector<int> &reachNodes) {
    reachNodes.push_back(nd);
    for (auto child_branch : nodes[nd].getBranches())
      getReachableNodes(child_branch, reachNodes);
    if (nodes[nd].getSibling() != -1)
      getReachableNodes(nodes[nd].getSibling(), reachNodes);
  }

  int getTotalInstrSize() {
    std::vector<int> Fnodes;
    getReachableNodes(root, Fnodes);
    int Fmemory = 0;
    for (auto nd : Fnodes)
      Fmemory += nodes[nd].getFVec().size() + 1;
    return Fmemory;
  }

  void printCFG() {
    for (int u = 0; u < numBlocks; u++) {
      // errs() << 'B' << u << " -> ";
      for (int v : CFG[u])
        errs() << u << " " << v << '\n';
      //     errs() << 'B' << v << ' ';
      // errs() << '\n';
    }
  }

  void printTree() {
    for (TreeNode &v : nodes)
      v.printNode();
  }
};

class Signature {
private:
  std::vector<int> sig;
  int rows, cols;

public:
  Signature(int _rows, int _cols) {
    rows = _rows, cols = _cols;
    sig.resize(rows);
    for (int i = 0; i < rows; i++)
      sig[i] = 0;
  }
  Signature(const Signature &S) : sig(S.sig), rows(S.rows), cols(S.cols) {}
  // Mark all branches at certain depth as unvisited
  Signature allZero(int depth) {
    MY_ASSERT(depth < rows && "depth exceeds signature size!");
    Signature S = *this;
    S.sig[depth] = 0;
    return S;
  }
  // Mark all branches at certain depth as visited
  Signature allOne(int depth) {
    MY_ASSERT(depth < rows && "depth exceeds signature size!");
    Signature S = *this;
    S.sig[depth] = (1 << cols) - 1;
    return S;
  }
  // Mark a certain branch at certain depth as visited
  Signature set(int depth, int index) {
    MY_ASSERT(depth < rows && "depth exceeds signature size!");
    MY_ASSERT(index < cols && "index exceeds branch size!");
    Signature S = *this;
    S.sig[depth] |= (1 << index);
    return S;
  }
  // Check if a certain branch at certain depth is visited
  bool get(int depth, int index) {
    MY_ASSERT(depth < rows && "depth exceeds signature size!");
    MY_ASSERT(index < cols && "index exceeds branch size!");
    return sig[depth] >> index & 1;
  }
  int getMask() {
    int mask = 0;
    for (int i = 0; i < rows; i++) {
      mask = (mask << cols) | sig[i];
      MY_ASSERT(sig[i] < (1 << cols) && "Signature row overflow!");
    }
    MY_ASSERT(mask < (1 << (rows * cols)) && "Signature mask overflow!");
    return mask;
  }
  void printSig() {
    for (int i = 0; i < rows; i++, errs() << '\n')
      for (int j = 0; j < cols; j++)
        errs() << (sig[i] >> j & 1) << ' ';
  }
};

template <typename ContainerType,
          typename Ty = typename ContainerType::value_type, Ty Blank = Ty(0),
          typename MatchFnTy = std::function<bool(Ty, Ty)>>
class TreeStringAlignment
    : public SequenceAligner<ContainerType, Ty, Blank, MatchFnTy> {
private:
  TreeString *F1str, *F2str;
  std::vector<int> F1ord, F2ord;
  using BaseType = SequenceAligner<ContainerType, Ty, Blank, MatchFnTy>;

  void initialize(Function *F1, Function *F2, bool showDebug = false) {
    if (F1 == nullptr || F2 == nullptr)
      return;
    F1str = new TreeString(F1);
    if (showDebug) {
      errs() << "-------- Function #1 Details --------\n";
      errs() << *F1;
      errs() << "Function #1:\n";
      errs() << "-------- Control-Flow Graph (trimmed) --------\n";
      F1str->printCFG();
      errs() << "-------- Tree String --------\n";
      F1str->printTree();
      errs() << '\n';
    }

    F2str = new TreeString(F2);
    if (showDebug) {
      errs() << "-------- Function #2 Details --------\n";
      errs() << *F2;
      errs() << "Function #2:\n";
      errs() << "-------- Control-Flow Graph (trimmed) --------\n";
      F2str->printCFG();
      errs() << "-------- Tree String --------\n";
      F2str->printTree();
      errs() << '\n';
    }

    F1ord.clear();
    F2ord.clear();

    // Set depth for each node in both tree strings
    F1str->setDepth(F1str->root);
    F2str->setDepth(F2str->root);
  }

  // Get all possible next moves from current node with current signature
  std::vector<std::pair<std::pair<int, Signature>, int>>
  getNextMoves(int node, TreeString *Fstr, Signature S) {
    std::vector<std::pair<std::pair<int, Signature>, int>> moves;
    TreeNode &curNode = Fstr->nodes[node];
    int index = 0;
    for (auto child_branch : curNode.getBranches()) {
      if (!S.get(curNode.getDepth(), index)) // not visited
        moves.push_back({{child_branch, S.set(curNode.getDepth(), index)}, 0});
      index += 1;
    }
    // Move to one of the branches
    if (!moves.empty())
      return moves;
    // Move to sibling
    else if (curNode.getSibling() != -1)
      moves.push_back(
          {{curNode.getSibling(), S.allZero(curNode.getDepth())}, 0});
    // Move to father
    else {
      int tempNode = node;
      while (Fstr->nodes[tempNode].getElderSibling() != -1 and
             Fstr->nodes[tempNode].getFather() == -1)
        tempNode = Fstr->nodes[tempNode].getElderSibling();
      if (Fstr->nodes[tempNode].getFather() != -1)
        moves.push_back(
            {{Fstr->nodes[tempNode].getFather(), S.allZero(curNode.getDepth())},
             1});
    }
    return moves;
  }
  // Compute match score between two blocks
  int matchScore(int node1, int node2, int pos1, int pos2) {
    return BaseType::match(F1str->nodes[node1].getFVecByPos(pos1),
                           F2str->nodes[node2].getFVecByPos(pos2))
               ? BaseType::getScoring().getMatchProfit()
               : BaseType::getScoring().getMismatchPenalty();
  }

  int gapScore() { return BaseType::getScoring().getGapPenalty(); }

  // Recursive DP function to compute optimal alignment score
  int rec(int node1, int node2, int pos1, int pos2, Signature S1, Signature S2,
          std::vector<std::vector<
              std::vector<std::vector<std::vector<std::vector<int>>>>>> &dp,
          std::vector<std::vector<
              std::vector<std::vector<std::vector<std::vector<int>>>>>> &way) {
    int &ret = dp[node1][node2][pos1][pos2][S1.getMask()][S2.getMask()];
    if (~ret)
      return ret;
    int &way_ret = way[node1][node2][pos1][pos2][S1.getMask()][S2.getMask()];
    ret = -1e9;

    int node1Size = F1str->nodes[node1].getFVecSize();
    int node2Size = F2str->nodes[node2].getFVecSize();

    if (pos1 < node1Size) {
      int temp =
          rec(node1, node2, pos1 + 1, pos2, S1, S2, dp, way) + gapScore();
      if (temp > ret) {
        ret = temp;
        way_ret = 1; // gap in F2
      }
    }
    if (pos2 < node2Size) {
      int temp =
          rec(node1, node2, pos1, pos2 + 1, S1, S2, dp, way) + gapScore();
      if (temp > ret) {
        ret = temp;
        way_ret = 2; // gap in F1
      }
    }
    if (pos1 < node1Size and pos2 < node2Size) {
      int temp = rec(node1, node2, pos1 + 1, pos2 + 1, S1, S2, dp, way) +
                 matchScore(node1, node2, pos1, pos2);
      if (temp > ret) {
        ret = temp;
        way_ret = 3; // match/mismatch
      }
    }
    if (pos1 == node1Size and pos2 == node2Size) {
      auto F1moves = getNextMoves(node1, F1str, S1);
      auto F2moves = getNextMoves(node2, F2str, S2);
      if (F1moves.empty() and F2moves.empty()) {
        way_ret = 0; // end
        return ret = 0;
      }
      for (auto elem : F1moves) {
        auto move1 = elem.first.first;
        auto newS1 = elem.first.second;
        auto flag = elem.second;
        int moveSize = F1str->nodes[move1].getFVecSize();
        int temp = rec(move1, node2, moveSize * flag, pos2, newS1, S2, dp, way);
        if (temp > ret) {
          ret = temp;  // F1 moves, F2 stays
          way_ret = 4; // F1 moves
        }
      }
      for (auto elem : F2moves) {
        auto move2 = elem.first.first;
        auto newS2 = elem.first.second;
        auto flag = elem.second;
        int moveSize = F2str->nodes[move2].getFVecSize();
        int temp = rec(node1, move2, pos1, moveSize * flag, S1, newS2, dp, way);
        if (temp > ret) {
          ret = temp;  // F1 stays, F2 moves
          way_ret = 5; // F2 moves
        }
      }
    } else if (pos1 == node1Size) {
      auto F1moves = getNextMoves(node1, F1str, S1);
      for (auto elem : F1moves) {
        auto move1 = elem.first.first;
        auto newS1 = elem.first.second;
        auto flag = elem.second;
        int moveSize = F1str->nodes[move1].getFVecSize();
        int temp = rec(move1, node2, moveSize * flag, pos2, newS1, S2, dp, way);
        if (temp > ret) {
          ret = temp;  // F1 moves, F2 stays
          way_ret = 4; // F1 moves
        }
      }
    } else if (pos2 == node2Size) {
      auto F2moves = getNextMoves(node2, F2str, S2);
      for (auto elem : F2moves) {
        auto move2 = elem.first.first;
        auto newS2 = elem.first.second;
        auto flag = elem.second;
        int moveSize = F2str->nodes[move2].getFVecSize();
        int temp = rec(node1, move2, pos1, moveSize * flag, S1, newS2, dp, way);
        if (temp > ret) {
          ret = temp;  // F1 stays, F2 moves
          way_ret = 5; // F2 moves
        }
      }
    }
    return ret;
  }

  void get_orderings_from_dp(
      int node1, int node2, int pos1, int pos2, Signature S1, Signature S2,
      std::vector<
          std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>>
          &dp,
      std::vector<
          std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>>
          &way) {
    // errs() << "At node1: P" << node1 << ", pos1: " << pos1
    //        << "; node2: P" << node2 << ", pos2: " << pos2 << '\n';
    // errs() << "S1:\n"; S1.printSig(); errs() << "S2:\n"; S2.printSig();
    int ret = rec(node1, node2, pos1, pos2, S1, S2, dp, way);
    int move = way[node1][node2][pos1][pos2][S1.getMask()][S2.getMask()];
    if (move == 0)
      return;
    else if (move == 1) {
      Value *value = F1str->nodes[node1].getFVecByPos(pos1);
      if (isa<BasicBlock>(value))
        F1ord.push_back(F1str->BlockIdx[dyn_cast<llvm::BasicBlock>(value)]);
      get_orderings_from_dp(node1, node2, pos1 + 1, pos2, S1, S2, dp, way);
    } else if (move == 2) {
      Value *value = F2str->nodes[node2].getFVecByPos(pos2);
      if (isa<BasicBlock>(value))
        F2ord.push_back(F2str->BlockIdx[dyn_cast<llvm::BasicBlock>(value)]);
      get_orderings_from_dp(node1, node2, pos1, pos2 + 1, S1, S2, dp, way);
    } else if (move == 3) {
      Value *value1 = F1str->nodes[node1].getFVecByPos(pos1);
      if (isa<BasicBlock>(value1))
        F1ord.push_back(F1str->BlockIdx[dyn_cast<llvm::BasicBlock>(value1)]);
      Value *value2 = F2str->nodes[node2].getFVecByPos(pos2);
      if (isa<BasicBlock>(value2))
        F2ord.push_back(F2str->BlockIdx[dyn_cast<llvm::BasicBlock>(value2)]);
      get_orderings_from_dp(node1, node2, pos1 + 1, pos2 + 1, S1, S2, dp, way);
    } else if (move == 4) {
      auto F1moves = getNextMoves(node1, F1str, S1);
      for (auto elem : F1moves) {
        auto move1 = elem.first.first;
        auto newS1 = elem.first.second;
        auto flag = elem.second;
        int moveSize = F1str->nodes[move1].getFVec().size();
        if (ret ==
            rec(move1, node2, moveSize * flag, pos2, newS1, S2, dp, way)) {
          get_orderings_from_dp(move1, node2, moveSize * flag, pos2, newS1, S2,
                                dp, way);
          break;
        }
      }
    } else if (move == 5) {
      auto F2moves = getNextMoves(node2, F2str, S2);
      for (auto elem : F2moves) {
        auto move2 = elem.first.first;
        auto newS2 = elem.first.second;
        auto flag = elem.second;
        int moveSize = F2str->nodes[move2].getFVec().size();
        if (ret ==
            rec(node1, move2, pos1, moveSize * flag, S1, newS2, dp, way)) {
          get_orderings_from_dp(node1, move2, pos1, moveSize * flag, S1, newS2,
                                dp, way);
          break;
        }
      }
    }
  }

  int getTotalSize(int branchFactorF1, int maxDepthF1, int branchFactorF2,
                   int maxDepthF2) {
    if (branchFactorF1 * maxDepthF1 + branchFactorF2 * maxDepthF2 >= 25)
      return 1e9;
    long long total_size =
        F1str->getTotalInstrSize() * 1LL * F2str->getTotalInstrSize();
    if (total_size > 1e9)
      return 1e9;
    total_size *= 1LL << (branchFactorF1 * maxDepthF1);
    if (total_size > 1e9)
      return 1e9;
    total_size *= 1LL << (branchFactorF2 * maxDepthF2);
    if (total_size > 1e9)
      return 1e9;
    return total_size;
  }

  std::map<std::string, int> getOptReorderingDP(int memoryLimit = 5e7) {
    int branchFactorF1 = 0, branchFactorF2 = 0;
    int maxDepthF1 = 0, maxDepthF2 = 0;
    int n = F1str->nodes.size(), m = F2str->nodes.size();

    for (int i = 0; i < n; i++) {
      maxDepthF1 = std::max(maxDepthF1, F1str->nodes[i].getDepth());
      branchFactorF1 =
          std::max(branchFactorF1, (int)F1str->nodes[i].getBranches().size());
    }
    for (int i = 0; i < m; i++) {
      maxDepthF2 = std::max(maxDepthF2, F2str->nodes[i].getDepth());
      branchFactorF2 =
          std::max(branchFactorF2, (int)F2str->nodes[i].getBranches().size());
    }
    maxDepthF1 += 1;
    maxDepthF2 += 1;

    std::map<std::string, int> verdict;

    // Best parameters estimation
    int best_bFactorF1 = branchFactorF1, best_bFactorF2 = branchFactorF2;
    int best_dF1 = maxDepthF1, best_dF2 = maxDepthF2;
    bool cap = true;

    if (cap) {
      while (getTotalSize(best_bFactorF1, best_dF1, best_bFactorF2, best_dF2) >
             memoryLimit) {
        if (best_bFactorF1 * 1LL * best_dF1 >=
            best_bFactorF2 * 1LL * best_dF2) {
          if (best_dF1 > 1 and best_dF1 >= best_bFactorF1)
            best_dF1--;
          else if (best_bFactorF1 > 1)
            best_bFactorF1--;
          else
            break;
        } else {
          if (best_dF2 > 1 and best_dF2 >= best_bFactorF2)
            best_dF2--;
          else if (best_bFactorF2 > 1)
            best_bFactorF2--;
          else
            break;
        }
      }
      // errs()<<"\t"<<branchFactorF1 << " "<< maxDepthF1 << " "
      //         << branchFactorF2 << " " << maxDepthF2 << " to "
      //         << " "<< best_bFactorF1 << " " << best_dF1 << " "
      //         << best_bFactorF2 << " " << best_dF2 << "\n";

      F1str->capDepth(best_dF1, F1str->root);
      F2str->capDepth(best_dF2, F2str->root);
      F1str->confirmDepth(best_dF1, F1str->root);
      F2str->confirmDepth(best_dF2, F2str->root);

      F1str->capBranchingFactor(best_bFactorF1, F1str->root);
      F2str->capBranchingFactor(best_bFactorF2, F2str->root);
      F1str->confirmBranchingFactor(best_bFactorF1, F1str->root);
      F2str->confirmBranchingFactor(best_bFactorF2, F2str->root);
    }

    // getTotalInstrSize() vs getTotalSize(best_bFactorF1, best_dF1,
    // best_bFactorF2, best_dF2)
    verdict["naive_memory"] =
        F1str->getTotalInstrSize() * F2str->getTotalInstrSize();
    verdict["actual_memory"] =
        getTotalSize(branchFactorF1, maxDepthF1, branchFactorF2, maxDepthF2);
    verdict["dp_memory"] =
        getTotalSize(best_bFactorF1, best_dF1, best_bFactorF2, best_dF2);
    verdict["best_bFactorF1"] = best_bFactorF1;
    verdict["best_dF1"] = best_dF1;
    verdict["best_bFactorF2"] = best_bFactorF2;
    verdict["best_dF2"] = best_dF2;

    verdict["failed"] = 0;

    if (getTotalSize(best_bFactorF1, best_dF1, best_bFactorF2, best_dF2) >
        memoryLimit) {
      // errs() << "\tERR: DP table too large to handle! Abort DP-based
      // reordering.\n";
      verdict["failed"] = 1;
      return verdict;
    }

    double start_time = clock();
    std::vector<
        std::vector<std::vector<std::vector<std::vector<std::vector<int>>>>>>
        dp, way; // node1, node2, pos1, pos2, sig1, sig2

    std::vector<int> F1nodes, F2nodes;
    F1str->getReachableNodes(F1str->root, F1nodes);
    F2str->getReachableNodes(F2str->root, F2nodes);

    dp.resize(n);
    for (auto node1 : F1nodes) {
      dp[node1].resize(m);
      for (auto node2 : F2nodes) {
        dp[node1][node2].resize(F1str->nodes[node1].getFVec().size() + 1);
        for (int k = 0; k < dp[node1][node2].size(); k++) {
          dp[node1][node2][k].resize(F2str->nodes[node2].getFVec().size() + 1);
          for (int l = 0; l < dp[node1][node2][k].size(); l++) {
            dp[node1][node2][k][l].resize(1 << (best_bFactorF1 * best_dF1));
            for (int s1 = 0; s1 < dp[node1][node2][k][l].size(); s1++) {
              dp[node1][node2][k][l][s1].resize(
                  1 << (best_bFactorF2 * best_dF2), -1);
            }
          }
        }
      }
    }
    way = dp;
    // errs() << "Total cost: " <<
    //     rec(F1str->root, F2str->root, 0, 0,
    //         Signature(best_dF1, best_bFactorF1), Signature(best_dF2,
    //         best_bFactorF2), dp, way) << "\n";

    get_orderings_from_dp(F1str->root, F2str->root, 0, 0,
                          Signature(best_dF1, best_bFactorF1),
                          Signature(best_dF2, best_bFactorF2), dp, way);
    double end_time = clock();
    dp.clear();
    dp.shrink_to_fit();
    way.clear();
    way.shrink_to_fit();

    return verdict;
  }

  void genFlattening(std::vector<int> &BlockOrd, TreeString *Fstr,
                     SmallVector<Value *, 8> &Fseq) {

    for (int idx : BlockOrd) {
      BasicBlock *BB = Fstr->BlockSeq[idx];
      Fseq.push_back(BB);
      for (Instruction &I : *BB)
        if (!isa<LandingPadInst>(&I) && !isa<PHINode>(&I))
          Fseq.push_back(&I);
    }

    std::vector<int> in(Fstr->numBlocks, 0);
    for (int u = 0; u < Fstr->numBlocks; u++)
      for (auto v : Fstr->CFG[u])
        if (!in[v])
          in[v] += 1;

    std::queue<int> q;
    for (int u = 0; u < Fstr->numBlocks; u++)
      if (!in[u])
        q.push(u);

    std::vector<int> ordering;
    while (!q.empty()) {
      int u = q.front();
      q.pop();
      ordering.push_back(u);
      for (auto v : Fstr->CFG[u])
        if (!(--in[v]))
          q.push(v);
    }

    for (int i = 0; i < int(ordering.size()) - 1; i++)
      Fstr->BlockSeq[ordering[i + 1]]->moveAfter(Fstr->BlockSeq[ordering[i]]);
  }

public:
  TreeStringAlignment()
      : BaseType(ScoringSystem(-1, 2, -1), nullptr), F1str(nullptr),
        F2str(nullptr) {}
  TreeStringAlignment(ScoringSystem Scoring, MatchFnTy Match = nullptr)
      : BaseType(Scoring, Match), F1str(nullptr), F2str(nullptr) {}
  ~TreeStringAlignment() {
    if (F1str != nullptr)
      delete F1str;
    if (F2str != nullptr)
      delete F2str;
  }

  std::map<std::string, int> getOptFlattening(Function *F1, Function *F2,
                                              TreeString *F1TrSt,
                                              TreeString *F2TrSt,
                                              SmallVector<Value *, 8> &F1seq,
                                              SmallVector<Value *, 8> &F2seq) {
    initialize(F1, F2, false);

    auto verdict = getOptReorderingDP();

    if (verdict["failed"])
      return verdict;

    F1seq.clear();
    genFlattening(F1ord, F1str, F1seq);

    F2seq.clear();
    genFlattening(F2ord, F2str, F2seq);

    // for (int &x : F1ord)
    //     errs() << "B" << x << ' ';
    // errs() << '\n';
    // for (int &x : F2ord)
    //     errs() << "B" << x << ' ';
    // errs() << '\n';

    return verdict;
  }

  virtual AlignedSequence<Ty, Blank> getAlignment(ContainerType &F1seq,
                                                  ContainerType &F2seq) {
    return AlignedSequence<Ty, Blank>();
  }
};

} // namespace llvm

#endif