workspace(name = "linuxcnc-proto")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Proto
http_archive(
    name = "rules_proto",
    sha256 = "dc3fb206a2cb3441b485eb1e423165b231235a1ea9b031b4433cf7bc1fa460dd",
    strip_prefix = "rules_proto-5.3.0-21.7",
    urls = [
        "https://github.com/bazelbuild/rules_proto/archive/refs/tags/5.3.0-21.7.tar.gz",
    ],
)

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()

# Repositories
load(
    "//:repositories.bzl",
    "com_github_grpc_grpc",
)

com_github_grpc_grpc()

# gRPC
load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")

grpc_deps()

load("@com_github_grpc_grpc//bazel:grpc_extra_deps.bzl", "grpc_extra_deps")

grpc_extra_deps()

# Protocol Buffers
load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

# CC
load("@rules_cc//cc:repositories.bzl", "rules_cc_dependencies")

rules_cc_dependencies()
