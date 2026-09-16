kind: cargo

depends:
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/systemd.bst

sources:
- kind: git
url: https://git.sr.ht/~kennylevinsen/greetd
track: master
ref: 0.10.3
