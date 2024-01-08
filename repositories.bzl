load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

GRPC_VERSION = "1.51.1"

def com_github_grpc_grpc():
    http_archive(
        name = "com_github_grpc_grpc",
        sha256 = "4b64cbc454cc4fd0801a2823111e1d99f519c765dfa116905740f7ca2256d085",
        strip_prefix = "grpc-%s" % GRPC_VERSION,
        url = "https://github.com/grpc/grpc/archive/v%s.zip" % GRPC_VERSION,
    )
