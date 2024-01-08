load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

GRPC_VERSION = "1.60.0"

def com_github_grpc_grpc():
    GRPC_VERSION = "1.60.0"
    http_archive(
        name = "com_github_grpc_grpc",
        sha256 = "09640607a340ff0d97407ed22fe4adb177e5bb85329821122084359cd57c3dea",
        strip_prefix = "grpc-%s" % GRPC_VERSION,
        url = "https://github.com/grpc/grpc/archive/refs/tags/v%s.zip" % GRPC_VERSION,
    )
