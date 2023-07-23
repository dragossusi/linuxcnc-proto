workspace(name = "linuxcnc-proto")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

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
