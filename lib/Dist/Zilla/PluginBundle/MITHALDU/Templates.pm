use strictures;

package Dist::Zilla::PluginBundle::MITHALDU::Templates;
our $VERSION = '0.120090'; # VERSION

# ABSTRACT: some templates for MITHALDU's dzil pluginbundle

#
# This file is part of Dist-Zilla-PluginBundle-MITHALDU
#
# This software is Copyright (c) 2012 by Christian Walde.
#
# This is free software, licensed under:
#
#   DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE, Version 2, December 2004
#

use Data::Section::Simple;


sub data {
    my ( $class, $template ) = @_;
    my $data = Data::Section::Simple->new( $class )->get_data_section( $template );
    return $data;
}

1;



=pod

=head1 NAME

Dist::Zilla::PluginBundle::MITHALDU::Templates - some templates for MITHALDU's dzil pluginbundle

=head1 VERSION

version 0.120090

=head1 METHODS

=head2 $self->data( $template )

Returns the contents of a template stored in the DATA section of this module.
The single scalar parameter specifies the name of the template to be retrieved.

=head1 AUTHORS

=over 4

=item *

David Golden <dagolden@cpan.org>

=item *

Christian Walde <mithaldu@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Christian Walde.

This is free software, licensed under:

  DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE, Version 2, December 2004

=cut


__DATA__

@@ .gitignore
# THIS IS AN AUTOMATICALLY GENERATED FILE.
# CHANGES TO IT WILL BE DESTROYED BY Dist::Zilla.
# TO EFFECT PERMANENT CHANGES, EDIT dist.ini AND
# RUN `dzil build`.

*.bak
*.old
*.tmp
*.tar.gz
*~
/Build
/Build.bat
/Makefile
/_build
/.build
/blib
/cover_db
/pm_to_blib
/PM_to_blib
/MYMETA.yml
/{{ $dist->name }}-*

@@ README.PATCHING
README.PATCHING

Thank you for considering contributing to this distribution.  This file
contains instructions that will help you work with the source code.

The distribution is managed with Dist::Zilla.  This means than many of the
usual files you might expect are not in the repository, but are generated
at release time (e.g. Makefile.PL).

However, you can run tests directly using the 'prove' tool:

  $ prove -l
  $ prove -lv t/some_test_file.t

For most distributions, 'prove' is entirely sufficent for you to test any
patches you have.

You may need to satisfy some dependencies.  See the included META.json
file for a list.  If you install App::mymeta_requires from CPAN, it's easy
to satisfy any that you are missing by piping the output to your favorite
CPAN client:

  $ mymeta-requires | cpanm
  $ cpan `mymeta-requires`

Likewise, much of the documentation Pod is generated at release time.
Depending on the distribution, some documentation may be written in a Pod
dialect called WikiDoc. (See Pod::WikiDoc on CPAN.) If you would like to
submit a documentation edit, please limit yourself to the documentation you
see.

If you see typos or documentation issues in the generated docs, please
email or open a bug ticket instead of patching.

Dist::Zilla is a very powerful authoring tool, but requires a number of
author-specific plugins.  If you would like to use it for contributing,
install it from CPAN, then run one of the following commands, depending on
your CPAN client:

  $ cpan `dzil authordeps`
  $ dzil authordeps | cpanm

Once installed, here are some dzil commands you might try:

  $ dzil build
  $ dzil test
  $ dzil xtest

You can learn more about Dist::Zilla at http://dzil.org/

@@ perlcritic.rc
# THIS IS AN AUTOMATICALLY GENERATED FILE.
# CHANGES TO IT WILL BE DESTROYED BY Dist::Zilla.

[TestingAndDebugging::RequireUseStrict]
equivalent_modules = strictures
