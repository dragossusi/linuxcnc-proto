load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def com_google_protobuf():
    if "com_google_protobuf" not in native.existing_rules():
        http_archive(
            name = "com_google_protobuf",
            sha256 = "3ed7131962a357b35b1d55238fcc6c6a177eae766ef3e25aa916157bc6e45819",
            strip_prefix = "protobuf-63def39e881afa496502d9c410f4ea948e59490d",
            urls = [
                # https://github.com/protocolbuffers/protobuf/commits/v27.2
                "https://storage.googleapis.com/grpc-bazel-mirror/github.com/protocolbuffers/protobuf/archive/63def39e881afa496502d9c410f4ea948e59490d.tar.gz",
                "https://github.com/protocolbuffers/protobuf/archive/63def39e881afa496502d9c410f4ea948e59490d.tar.gz",
            ],
            patches = [
                "@com_github_grpc_grpc//third_party:protobuf.patch",
                "@com_github_grpc_grpc//third_party:protobuf.10007.patch",
            ],
            patch_args = ["-p1"],
        )

def com_github_grpc_grpc():
    GRPC_VERSION = "1.66.0"
    if "com_github_grpc_grpc" not in native.existing_rules():
        http_archive(
            name = "com_github_grpc_grpc",
            #        sha256 = "09640607a340ff0d97407ed22fe4adb177e5bb85329821122084359cd57c3dea",
            integrity = "sha256-lO3A6povBqKs0Ty3aS1kDJy3wS8w7h4lCo9PPuBjE+w=",
            strip_prefix = "grpc-%s" % GRPC_VERSION,
            url = "https://github.com/grpc/grpc/archive/refs/tags/v%s.zip" % GRPC_VERSION,
        )
