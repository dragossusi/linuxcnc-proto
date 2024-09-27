load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def com_github_grpc_grpc():
    GRPC_VERSION = "1.66.1"
    if "com_github_grpc_grpc" not in native.existing_rules():
        http_archive(
            name = "com_github_grpc_grpc",
            strip_prefix = "grpc-%s" % GRPC_VERSION,
            url = "https://github.com/grpc/grpc/archive/refs/tags/v%s.zip" % GRPC_VERSION,
        )
