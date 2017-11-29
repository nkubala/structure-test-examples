package(default_visibility = ["//visibility:public"])

exports_files(glob(["*.yaml"]))

load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")

container_test(
    name = "command_structure_tests",
    configs = [":python_command_tests.yaml"],
    image = "@python//image",
)

container_test(
    name = "file_structure_tests_tar_driver",
    configs = [":python_file_tests.yaml"],
    image = "@python//image",
    driver = "tar"
)
