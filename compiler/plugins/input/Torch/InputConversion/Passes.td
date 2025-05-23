// Copyright 2022 The IREE Authors
//
// Licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#ifndef IREE_COMPILER_PLUGINS_INPUT_TORCH_INPUTCONVERSION_PASSES
#define IREE_COMPILER_PLUGINS_INPUT_TORCH_INPUTCONVERSION_PASSES

include "mlir/Pass/PassBase.td"

def BindSymbolicShapesPass :
    InterfacePass<"torch-iree-bind-symbolic-shapes", "mlir::FunctionOpInterface"> {
  let summary = "Process torch dynamic shape bindings into IREE analyzable forms";
}

def BitCastTensorPass :
    InterfacePass<"torch-iree-bitcast-tensor", "mlir::FunctionOpInterface"> {
  let summary = "Bitcasts i8 packed tensors of sub-byte types to the actual bit width";
}

def ConvertTMTensorToLinalgExtPass :
    InterfacePass<"torch-iree-tm-tensor-to-linalg-ext", "mlir::FunctionOpInterface"> {
  let summary = "Convert from TMTensor ops to LinalgExt ops on tensors";
}

def ConvertTorchUnstructuredToLinalgExtPass :
    InterfacePass<"torch-iree-torch-unstructured-to-linalg-ext", "mlir::FunctionOpInterface"> {
  let summary = "Convert unstructured Torch ops to LinalgExt ops";
}

def SetStrictSymbolicShapesPass :
    InterfacePass<"torch-iree-set-strict-symbolic-shapes", "mlir::FunctionOpInterface"> {
  let summary = "Adds the attribute indicating strict symbolic shapes in Torch IR";
}

def FuncConversionPass :
    Pass<"torch-iree-func-conversion", "ModuleOp"> {
  let summary = "Finalizes conversion from torch to IREE";
  let description = [{
    Conversion pass for finalizing functions and ABI. Replaces the generic
    torch-func-backend-type-conversion pass.
  }];
}

#endif // IREE_COMPILER_PLUGINS_INPUT_TORCH_INPUTCONVERSION_PASSES
