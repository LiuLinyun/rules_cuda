load(
    "@bazel_skylib//rules:common_settings.bzl",
    "bool_flag",
    "string_flag",
    "string_list_flag",
)
load("//cuda/private:rules/flags.bzl", "cuda_archs_flag")

package(default_visibility = ["//visibility:public"])

toolchain_type(name = "toolchain_type")

# Command line flag to set ":is_enabled" config setting.
#
# Set with --@rules_cuda//cuda:enable
bool_flag(
    name = "enable",
    build_setting_default = False,
)

# This config setting can be used for conditionally depend on cuda.
#
# Set with --@rules_cuda//cuda:enable
config_setting(
    name = "is_enabled",
    flag_values = {":enable": "True"},
)

# Command line flag to specify the list of CUDA architectures to compile for.
#
# Provides CudaArchsInfo of the list of archs to build.
#
# Example usage: --@rules_cuda//cuda:archs=sm_70,sm_75;sm_80,sm_86
#
# See CudaArchsInfo for detailed grammar
cuda_archs_flag(
    name = "archs",
    build_setting_default = "",
)

# Command line flag to select compiler for cuda_library() code.
string_flag(
    name = "compiler",
    build_setting_default = "nvcc",
    values = [
        "nvcc",
        "clang",
    ],
)

config_setting(
    name = "compiler_is_nvcc",
    flag_values = {":compiler": "nvcc"},
)

config_setting(
    name = "compiler_is_clang",
    flag_values = {":compiler": "clang"},
)

# Command line flag for copts to add to cuda_library() compile command.
string_list_flag(
    name = "copts",
    build_setting_default = [],
)

# Command line flag to specify the CUDA runtime. Use this target as CUDA
# runtime dependency.
#
# This target is implicitly added as a dependency to cuda_library() targets.
#
# Example usage: --@rules_cuda//cuda:runtime=@local_cuda//:cuda_runtime_static
label_flag(
    name = "runtime",
    build_setting_default = "@local_cuda//:cuda_runtime",
)
