# ILP for LCS

Given two strings $A=A_1\cdots A_n$ and $B=B_1\cdots B_m$. We would like to find the longest common subsequence of them.

Create indicator variables $`\{z_{i,j}\}_{i\in[n],j\in[m]}`$ to represent whether $A_i$ is matched with $B_j$ in the final common subsequence. Apparently, 

$$
\begin{aligned}
z_{i,j}&\le\mathbb{1}[A_i=B_j]&&\forall i\in[n],j\in[m]\\
\sum_{j=1}^mz_{i,j}&\le1&&\forall i\in[n]\\
\sum_{i=1}^nz_{i,j}&\le1&&\forall j\in[m]
\end{aligned}
$$

Let $l=\min(n,m)$. For each $i\in[n]$, create position variable $p_i\in\{0,1,\cdots,l\}$. $p_i=0$ represents $A_i$ is not chosen into the common subsequence; otherwise, $A_i$ is placed at position $p_i$ in the common subsequence. Similarly, create $q_j\in\{0,1,\cdots,l\}$ for $j\in[m]$.

First, we need to make sure $1\le p_i\le l$ iff $z_{i,j}=1$ for some $j\in[m]$, and analogously for $q_j$. We use the following constraints:

$$
\begin{aligned}
\sum_{j=1}^mz_{i,j}&\le p_i\le l\cdot\sum_{j=1}^mz_{i,j}&&\forall i\in[n]\\
\sum_{i=1}^nz_{i,j}&\le q_j\le l\cdot\sum_{i=1}^nz_{i,j}&&\forall j\in[m]
\end{aligned}
$$

Then we need to ensure $p_i=q_j$ if $z_{i,j}=1$. Note that if they are not matched, $|p_i-q_j|$ can be any value from $0$ to $l$. We use constraints

$$
-l\cdot(1-z_{i,j})\le p_i-q_j\le l\cdot(1-z_{i,j})\qquad\forall i\in[n],\forall j\in[m]
$$

What remains is to guarantee the order of characters in the common subsequence to match with their original ordering. For any $i,k\in[n]$ with $i<k$, if $A_i$ and $A_k$ are both chosen into the common subsequence (i.e., $\sum_{j=1}^mz_{i,j}=1$ and $\sum_{j=1}^mz_{k,j}=1$), then we must have $p_i<p_k$. Similar constraints exists for $`\{q_j\}_{j\in[m]}`$. Thus

$$
\begin{aligned}
p_k&\ge p_i+1-l\cdot\left(2-\sum_{j=1}^mz_{i,j}-\sum_{j=1}^mz_{k,j}\right)&&\forall i,k\in[n]\;\text{s.t.}\;i\lt k\\
q_k&\ge q_j+1-l\cdot\left(2-\sum_{i=1}^nz_{i,j}-\sum_{i=1}^nz_{i,k}\right)&&\forall j,k\in[m]\;\text{s.t.}\;j\lt k
\end{aligned}
$$

Finally, to find the length of LCS, the objective is

$$
\sum_{i=1}^n\sum_{j=1}^m z_{i,j}
$$

and to find the solution with penalties on non-matched characters ($c_1$ gain for a match, and $c_2$ penalty for a non-matched character), the objective is

$$
c_1\sum_{i=1}^n\sum_{j=1}^mz_{i,j}
-c_2\sum_{i=1}^n\left(1-\sum_{j=1}^mz_{i,j}\right)
-c_2\sum_{j=1}^m\left(1-\sum_{i=1}^nz_{i,j}\right)
$$

which is equivalent to $c_1\sum_{i=1}^n\sum_{j=1}^mz_{i,j}-c_2\left(n+m-\sum_{i=1}^n\sum_{j=1}^mz_{i,j}\right)$.

This integer program is linear, with $nm+n+m$ variables and $O(nm+n^2+m^2)$ constraints, where the largest constraint contains $O(nm)$ variables.

# IP for LCS on reordered sequence

Suppose we can partially reorder the sequence and would like to find the LCS after the reordering. Create indicator variables $a_{ri}$ for any $r,i\in[n]$ to represent whether $A_r$ is place at the $i$-th position. Create indicator variables $b_{sj}$ for any $s,j\in[m]$ to represent whether $B_s$ is place at the $j$-th position.

We adopt the previous LCS formulation by changing the first constraint ($z_{i,j}\le\mathbb{1}[A_i=B_j]$) to

$$
z_{i,j}\le\bigvee_{1\le r\le n}\bigvee_{1\le s\le m}(\mathbb{1}[A_r=B_s]\wedge a_{r,i}\wedge b_{s,j})\qquad\forall i\in[n],\forall j\in[m]
$$

There are $nm$ such constraints, each of which contains $O(n+m)$ variables.

# IP for Branch Reordering

A tree string is a tree $T=(V,E)$ where each node $v$ is of the form

$$
blk_1\;blk_2\;\cdots\;blk_{|blk(v)|}\;\;[br_1\;br_2\;\cdots\;br_{|br(v)|}]\;\;ch
$$

where $blk_1,\cdots,blk_{|blk(v)|}$ are basic blocks and $br_1,\cdots,br_{|br(v)|},ch\in V$.

Each node consists of a sequence of basic blocks, follower by multiple branches (each represented by a descendant node on the tree), and a child (a special descendant node). We may reorder the branches of each node.
The reordered block sequence is obtained by a pre-order traversal on the tree.

For each node $v$ on the tree string $T_A=(V_A,E_A)$ of Function A, create indicator variables $x_{v,i,j}$ for $i,j\in[|br(v)|]$ to represent whether $br_i$ of $v$ is reorder as the $j$-th branch of $v$. Then

$$
\begin{aligned}
\sum_{j=1}^{|br(v)|}x_{v,i,j}&=1&&\forall v\in V_A,\forall i\in[|br(v)|]\\
\sum_{i=1}^{|br(v)|}x_{v,i,j}&=1&&\forall v\in V_A,\forall j\in[|br(v)|]
\end{aligned}
$$

Define $sz(blk(v)):=\sum_{i=1}^{|blk(v)|}|blk_i(v)|$ as the total number of instructions in $blk_1,\cdots,blk_{|blk(v)|}$ of node $v$. Let $sz(v):=sz(blk(v))+\sum_{i=1}^{|br(v)|}sz(br_i(v))+sz(ch(v))$ be the total number of instructions in the subtree of node $v$.
Consider the $r$-th instruction in Function A, i.e., $A_r$. There must be a unique node on $T_A$ which contains a unique block that contains $A_r$. Suppose $A_r$ is the $insidx(A_r)$-th instruction in basic block $blk_{blkidx(A_r)}$ of node $node(A_r)$. For any ancestor $v$ of $node(A_r)$, $node(A_r)$ is in the subtree of $br_{bridx(v,A_r)}$ (i.e., the path from root to $node(A_r)$ passes through the $bridx(v,A_r)$-th branch of $v$).

The position of the $r$-th instruction in Function A after branch reordering can be represented by

$$
\begin{aligned}
posA_r&:=
\sum_{v\in anc(node(A_r))}\left(
sz(blk(v))+
\sum_{i=1}^{|br(v)|}
\left(1-\sum_{j=1}^{i-1}x_{v,bridx(v,A_r),j}\right)
\left(\sum_{j=1}^{|br(v)|}x_{v,j,i}\cdot sz(br_j(v))\right)
\right)\\
&\qquad+\sum_{i=1}^{blkidx(A_r)-1}|blk_i(node(A_r))|
+insidx(A_r)
\qquad\qquad\qquad(*)
\end{aligned}
$$

where $anc(node(A_i))$ is the set of all ancestors of $node(A_i)$ on $T_A$.
The term $\left(1-\sum_{j=1}^{i-1}x_{bridx(v,A_r),k}\right)$ is $1$ if the position $bridx(v,A_r)$-th branch of $v$ is strictly larger than $i$, and is $0$ otherwise. If it is $1$, then all instructions in the $i$-th branch after branch reordering must be placed before instruction $A_r$, and the term $\left(\sum_{j=1}^{|br(v)|}x_{j,i}\cdot sz(br_j(v))\right)$ enumerates all branches of node $v$, finds this branch, and accumulates its size to $posA_r$.

There are $n$ (number of instructions in Function A) such constraints, each containing $O(b^2N+n)$ variables, where $N=|V_A|$ and $b$ is the branching factor.



Similarly, for Function B, define indicator variables $y_{v,i,j}$ analogously. Then the position of the $s$-th instruction after branch reordering can be represented by

$$
\begin{aligned}
posB_s&:=
\sum_{v\in anc(node(B_s))}\left(
sz(blk(v))+
\sum_{i=1}^{|br(v)|}
\left(1-\sum_{j=1}^{i-1}y_{v,bridx(v,B_s),j}\right)
\left(\sum_{j=1}^{|br(v)|}y_{v,j,i}\cdot sz(br_j(v))\right)
\right)\\
&\qquad+\sum_{i=1}^{blkidx(B_s)-1}|blk_i(node(B_s))|
+insidx(B_s)
\qquad\qquad\qquad(**)
\end{aligned}
$$

## Translate Instruction Positions to Indicators

To convert $posA_r$ into indicators $a_{r,i}$ (whether $A_r$ is reordered to position $i$), we use constraints
$$
a_{r,i}=\mathbb{1}[posA_r=i]\qquad\forall i,r\in[n]
$$

We want to find equivalent ILP constraints. The constraint above is equivalent to ensuring both (i) $1-a_{r,i}=0 \Rightarrow posA_r-i = 0$ and (ii) $1-a_{r,i}=1\Rightarrow1\le|posA_r-i|\le n$. Since we would prefer $a_{r,i}$ to be $1$ whenever it is allowed, the constraints above are equivalent to
$$
\begin{aligned}
posA_r-i&\le n(1-a_{r,i})&&\forall i,r\in[n]\\
i-posA_r&\le n(1-a_{r,i})&&\forall i,r\in[n]\\
a_{r,i}&\in\{0,1\}&&\forall i,r\in[n]
\end{aligned}
$$

# IP for Function Merging

Combining all the constraints above, the IP for function merging is

$$
\begin{aligned}
\text{Maximize}\quad
c_1\sum_{i=1}^n\sum_{j=1}^mz_{i,j}-c_2\left(n+m-\sum_{i=1}^n\sum_{j=1}^mz_{i,j}\right)\\
\text{subject to:}\qquad\qquad\qquad\quad&\\
~\\
\textbf{Branch Order to Instr Pos:}\\
\sum_{j=1}^{|br(v)|}x_{v,i,j}=1&\forall v\in V_A,\forall i\in[|br(v)|]\\
\sum_{i=1}^{|br(v)|}x_{v,i,j}=1&\forall v\in V_A,\forall j\in[|br(v)|]\\
\sum_{j=1}^{|br(v)|}y_{v,i,j}=1&\forall v\in V_B,\forall i\in[|br(v)|]\\
\sum_{i=1}^{|br(v)|}y_{v,i,j}=1&\forall v\in V_B,\forall j\in[|br(v)|]\\
x_{v,i,j}\in\{0,1\}&\forall v\in V_A,\forall i,j\in[br(v)]\\
y_{v,i,j}\in\{0,1\}&\forall v\in V_B,\forall i,j\in[br(v)]\\
posA_r=(*)&\forall r\in[n]\\
posB_s=(**)&\forall s\in[m]\\
~\\
\textbf{Instruction Pos to Indicators:}\\
posA_r-i\le n(1-a_{r,i})&\forall i,r\in[n]\\
i-posA_r\le n(1-a_{r,i})&\forall i,r\in[n]\\
posB_s-j\le n(1-b_{s,j})&\forall j,s\in[n]\\
j-posB_s\le n(1-b_{s,j})&\forall j,s\in[n]\\
a_{r,i}\in\{0,1\}&\forall i,r\in[n]\\
a_{s,j}\in\{0,1\}&\forall j,s\in[n]\\
~\\
\textbf{LCS on Reordered Instr Seq:}\\
z_{ij}\le\bigvee_{1\le r\le n}\bigvee_{1\le s\le m}(\mathbb{1}[A_r=B_s]\wedge a_{r,i}\wedge b_{s,j})&\forall i\in[n],\forall j\in[m]\\
\sum_{j=1}^mz_{i,j}\le1&\forall i\in[n]\\
\sum_{i=1}^nz_{i,j}\le1&\forall j\in[m]\\
\sum_{j=1}^mz_{i,j}\le p_i\le l\cdot\sum_{j=1}^mz_{ij}&\forall i\in[n]\\
\sum_{i=1}^nz_{i,j}\le q_j\le l\cdot\sum_{i=1}^nz_{ij}&\forall j\in[m]\\
-l\cdot(1-z_{i,j})\le p_i-q_j\le l\cdot(1-z_{i,j})&\forall i\in[n],\forall j\in[m]\\
p_k\ge p_i+1-l\cdot\left(2-\sum_{1\le j\le m}z_{i,j}-\sum_{1\le j\le m}z_{k,j}\right)&\forall i,k\in[n]\;\text{s.t.}\;i\lt k\\
q_k\ge q_j+1-l\cdot\left(2-\sum_{1\le i\le n}z_{i,j}-\sum_{1\le i\le n}z_{i,k}\right)&\forall j,k\in[m]\;\text{s.t.}\;j\lt k\\
z_{i,j}\in\{0,1\}&\forall i\in[n],\forall j\in[m]\\
p_i\in\{0,1,\cdots,l\}&\forall i\in[n]\\
q_j\in\{0,1,\cdots,l\}&\forall j\in[m]\\
\end{aligned}
$$

There are $O(nm+b^2N)$ variables and $O(nm+n^2+m^2+b^2N)$ constraints in this program, and the largest constraint contains $O(nm+b^2N)$ variables, where $n$ and $m$ are the number of instructions in Function A & B, $N$ is the number of nodes in the tree string, and $b$ is the branching factor.
