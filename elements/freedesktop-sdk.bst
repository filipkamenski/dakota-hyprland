kind: junction

sources:
  - kind: git_repo
    url: gitlab:freedesktop-sdk/freedesktop-sdk.git
    track: release/24.08
    ref: freedesktop-sdk-24.08.9

config:
  options:
    target_arch: '%{arch}'
