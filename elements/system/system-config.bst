kind: manual

depends:
  - freedesktop-sdk.bst:bootstrap-import.bst

sources:
  - kind: local
    path: files

config:
  install-commands:
    - cp -a etc %{install-root}/etc
