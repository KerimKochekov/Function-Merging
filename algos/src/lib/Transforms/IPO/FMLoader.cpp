//===-NextFMLoader.cpp - LLVM Link Time Optimizer Backend -----------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

// #include "llvm/Analysis/DumpFunctionSize.h"
// #include "llvm/Analysis/InstCount2.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
// #include "llvm/Transforms/IPO/FunctionMerging.h"
// #include "llvm/Transforms/IPO/MultipleSequenceAlignment.h"
// #include "llvm/Transforms/Scalar/SimplifyCFG.h"

using namespace llvm;

llvm::PassPluginLibraryInfo getFMPluginInfo() {
    return { LLVM_PLUGIN_API_VERSION, "FM", LLVM_VERSION_STRING,
        [](PassBuilder& PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager& PM,
                    ArrayRef<PassBuilder::PipelineElement>) {
                    return false;
                }
            );
        }
    };
}

extern "C" LLVM_ATTRIBUTE_WEAK::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    llvm::dbgs() << "plugin loaded\n";
    return getFMPluginInfo();
}

