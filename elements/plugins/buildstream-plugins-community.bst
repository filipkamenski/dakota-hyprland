kind: junction

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/source/b/buildstream-plugins-community/buildstream_plugins_community-2.3.1.tar.gz
  # Verified 2026-10-18 against the live PyPI tarball:
  #   curl -sSL <url> | sha256sum  ->  85c2bae9d3a1eb3121c9674f68ef6e87211fddb9c930f3e5057b9a1e66eb41d9
  # This is the same release upstream Dakota pins, so `cargo2` behaves
  # identically to the element we copied the source shape from.
  ref: 85c2bae9d3a1eb3121c9674f68ef6e87211fddb9c930f3e5057b9a1e66eb41d9
