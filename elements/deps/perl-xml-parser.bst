kind: manual

# XML::Parser -- the perl module that intltool's configure hard-requires.
#
# Run 43404687121 failed one second into deps/intltool.bst with:
#   checking for perl >= 5.8.1... 5.44.0
#   checking for XML::Parser... configure: error: XML::Parser perl module is required for intltool
#
# This is a real requirement, not a configure quirk: intltool-merge uses
# XML::Parser to merge translated XML, and libqalculate's Makefile.am has an
# xml rule driven by $(INTLTOOL_MERGE), so the module is exercised during the
# build. freedesktop-sdk ships perl 5.44.0 without it, hence this element.
depends:
  - freedesktop-sdk.bst:bootstrap/bash.bst
  - freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/perl.bst
  - freedesktop-sdk.bst:components/expat.bst

sources:
  - kind: tar
    url: https://cpan.metacpan.org/authors/id/T/TO/TODDR/XML-Parser-2.47.tar.gz
    # sha256 verified against two independent CPAN mirrors that agree exactly
    # (cpan.metacpan.org and www.cpan.org): 279029 bytes, 80 entries.
    ref: ad4aae643ec784f489b956abe952432871a622d4e2b5c619e8855accbfc4d1d8

config:
  # What matters is that `perl -MXML::Parser` resolves at configure time -- that
  # is literally the check intltool runs. INSTALLDIRS=vendor installs into the
  # vendor tree, which this perl already searches, so nothing needs @INC patching.
  build-commands:
    - perl Makefile.PL INSTALLDIRS=vendor
    - make
  install-commands:
    - make install DESTDIR="%{install-root}"
