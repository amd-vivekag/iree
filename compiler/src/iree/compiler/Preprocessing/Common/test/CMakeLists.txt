################################################################################
# Autogenerated by build_tools/bazel_to_cmake/bazel_to_cmake.py from           #
# compiler/src/iree/compiler/Preprocessing/Common/test/BUILD.bazel             #
#                                                                              #
# Use iree_cmake_extra_content from iree/build_defs.oss.bzl to add arbitrary   #
# CMake-only content.                                                          #
#                                                                              #
# To disable autogeneration for this file entirely, delete this header.        #
################################################################################

iree_add_all_subdirs()

iree_lit_test_suite(
  NAME
    lit
  SRCS
    "attr_based_pipeline.mlir"
    "conv2d_to_img2col.mlir"
    "conv_filter_to_channels_last.mlir"
    "conv_to_channels_last.mlir"
    "fold_attention_with_transpose.mlir"
    "generalize_linalg_matmul.mlir"
    "make_single_dispatch_for_function.mlir"
    "pad_linalg_ops.mlir"
    "pad_to_intrinsics_mfma.mlir"
    "pad_to_intrinsics_wmma.mlir"
    "pdl_example.mlir"
    "preprocessing_match_ops.mlir"
    "transform_symbol_importing.mlir"
    "transpose_matmul.mlir"
  TOOLS
    FileCheck
    iree-opt
  DATA
    external_function_spec.mlir
    pdl_patterns.mlir
)

### BAZEL_TO_CMAKE_PRESERVES_ALL_CONTENT_BELOW_THIS_LINE ###
