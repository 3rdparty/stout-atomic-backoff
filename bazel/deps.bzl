"""Dependency specific initialization."""

def deps(repo_mapping = {}):
    # We use '_' variable with '# @unused' comment to avoid
    # buildifier's warning about using unused variable
    # 'repo_mapping'. Early we tried to avoid this by using
    # '# @unused' comment in the argument, we tried to put
    # '_' prefix to 'repo_mapping' but that didn't work for
    # us. Check the link below about how to avoid warnings
    # for buildifier.
    # https://github.com/bazelbuild/buildtools/blob/master/WARNINGS.md#variable-is-unused
    _ = repo_mapping  # @unused
    pass
