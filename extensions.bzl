load("//:repositories.bzl", "com_github_grpc_grpc")

def _non_module_dependencies_impl(_ctx):
    com_github_grpc_grpc()

non_module_dependencies = module_extension(
    implementation = _non_module_dependencies_impl,
)
