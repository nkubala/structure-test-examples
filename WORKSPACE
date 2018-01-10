workspace(name = "structure_test_examples")

git_repository(
    name = "io_bazel_rules_docker",
    commit = "8aeab63328a82fdb8e8eb12f677a4e5ce6b183b1",
    remote = "https://github.com/bazelbuild/rules_docker.git",
)

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "repositories",
    "container_pull",
)
repositories()


load(
    "@io_bazel_rules_docker//contrib:test.bzl",
    "container_test",
)

git_repository(
    name = "io_bazel_rules_go",
    remote = "https://github.com/bazelbuild/rules_go.git",
    tag = "0.5.5",
)

load(
    "@io_bazel_rules_go//go:def.bzl",
    "go_repositories",
)
go_repositories()

container_pull(
    name = "python",
    registry = "gcr.io",
    repository = "google-appengine/python",
    tag = "latest",
)
