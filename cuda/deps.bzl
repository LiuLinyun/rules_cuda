load("@rules_cuda//cuda/private:repositories.bzl", _rules_cuda_deps = "rules_cuda_deps")
load("@rules_cuda//cuda/private:toolchain.bzl", _register_detected_cuda_toolchains = "register_detected_cuda_toolchains")

rules_cuda_deps = _rules_cuda_deps
register_detected_cuda_toolchains = _register_detected_cuda_toolchains
