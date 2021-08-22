"""Adds repostories/archives."""

########################################################################
# DO NOT EDIT THIS FILE unless you are inside the
# https://github.com/3rdparty/stout-atomic-backoff repository. If you
# encounter it anywhere else it is because it has been copied there in
# order to simplify adding transitive dependencies. If you want a
# different version of stout-atomic-backoff follow the Bazel build
# instructions at https://github.com/3rdparty/stout-atomic-backoff.
########################################################################

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def repos(external = True, repo_mapping = {}):
    if external and "com_github_3rdparty_stout_atomic_backoff" not in native.existing_rules():
        git_repository(
            name = "com_github_3rdparty_stout_atomic_backoff",
            remote = "https://github.com/3rdparty/stout-atomic-backoff",
            commit = "",
            shallow_since = " +0200",
            repo_mapping = repo_mapping,
        )
