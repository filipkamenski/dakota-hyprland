kind: autotools

# intltool 0.51.0 -- deprecated, but a HARD build requirement of libqalculate.
#
# libqalculate v5.5.0's configure.ac calls IT_PROG_INTLTOOL (line 47) and defines
# a translated-xml rule using $(INTLTOOL_MERGE) (line 315); its autogen.sh runs
# `intltoolize --copy --force --automake` whenever that macro is present. So it
# is not a vestigial check -- verified against the v5.5.0 sources:
#   configure.ac:47   IT_PROG_INTLTOOL
#   configure.ac:315  INTLTOOL_QALCULATE_DEFINITIONS_RULE ... $(INTLTOOL_MERGE)
#   autogen.sh:105-107 intltoolize --copy --force --automake
#
# freedesktop-sdk does not ship intltool (checked at our pinned ref, along with
# gettext/gperf/perl which it does ship), so run 43341411884 failed with:
#   build:deps/libqalculate.bst  FAILURE Running commands (3 s in)
#     **Error**: You must have `intltool' installed.
# We provide it rather than dropping libqalculate: shell/noctalia.bst needs it.
#
# Only perl and gettext are required at build time and, transitively, when
# libqalculate runs intltoolize/intltool-merge.
depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
  - freedesktop-sdk.bst:components/gettext.bst
  - freedesktop-sdk.bst:components/perl.bst
  # intltool's configure hard-requires the XML::Parser perl module, which FDS's
  # perl does not ship (run 43404687121 failed on exactly that check).
  - deps/perl-xml-parser.bst

sources:
  - kind: tar
    url: https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz
    # sha256 cross-checked against two independent sources that agree exactly
    # (launchpad.net and the Ubuntu archive: intltool_0.51.0.orig.tar.gz).
    # 162286 bytes / 125 entries, and it ships ./configure, so `kind: autotools`
    # needs no autogen step of its own.
    ref: 67c74d94196b153b774ab9f89b2fa6c6ba79352407037c8c14d5aeb334e959cd

# Modern-perl check: intltool 0.51.0 predates perl 5.30, where an unescaped left
# brace in a regex became fatal. All three shipped scripts (intltool-merge,
# intltool-update, intltool-extract) were syntax-checked under perl 5.38.2 and
# report "syntax OK", so no downstream perl patch is needed here.
