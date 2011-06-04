###########################################
package Pod::Licensizer;
###########################################

use strict;
use warnings;

our $VERSION = "0.01";

###########################################
sub new {
###########################################
    my($class, %options) = @_;

    my $self = {
        %options,
    };

    bless $self, $class;
}

1;

__END__

=head1 NAME

Pod::Licensizer - Add, remove, and update POD sections.

=head1 SYNOPSIS

    use Pod::Licensizer;

    my $patcher = Pod::Licensizer->new();
    $patcher->read( $podtext );

    $patcher->

=head1 DESCRIPTION

Pod::Licensizer blah blah blah.

=head1 licencizer

Pod::Licensizer comes with a practical application, called the C<licencizer>, 
which helps keeping the AUTHORS and LICENSE sections of myriads of source
files in a project up-to-date and in sync.

You define a C<.licencizer> file at the top level of your project like

    # .licencizer
    authors: |
      Bodo Bravo <bodo@bravo.com>
      Zach Zulu <zach@zulu.com>

    copyright: |
      Copyright 2002-2011 by Bodo Bravo <bodo@bravo.com> and
      Zach Zulu <zach@zulu.com>. All rights reserved.

and if you run the C<licencizer> script, it will update the AUTHORS and
COPYRIGHT sections of all files containing POD accordingly. This means
that if you want to add an author to your project or change the year
in the copyright notice, all you have to do is edit the C<.licencizer>
yaml file and run C<licencizer>.

=head1 EXAMPLES

  $ perl -MPod::Licensizer -le 'print $foo'

=head1 LEGALESE

Copyright 2011 by Mike Schilli, all rights reserved.
This program is free software, you can redistribute it and/or
modify it under the same terms as Perl itself.

=head1 AUTHOR

2011, Mike Schilli <cpan@perlmeister.com>
