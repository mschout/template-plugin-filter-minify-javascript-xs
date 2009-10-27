package Template::Plugin::Filter::Minify::JavaScript::XS;

use 5.006;
use strict;
use base 'Template::Plugin::Filter';
use JavaScript::Minifier::XS;

our $VERSION = '0.91';

sub init {
    my $self = shift;

    $self->install_filter('minify_js');

    return $self;
}

sub filter {
    my ($self, $text) = @_;

    $text = JavaScript::Minifier::XS::minify($text);

    return $text;
}

1;

=head1 NAME

Template::Plugin::Filter::Minify::JavaScript::XS - JavaScript::Minifier::XS filter for Template Toolkit

=head1 SYNOPSIS

  [% USE Filter.Minify.JavaScript.XS %]

  [% FILTER minify_js %]
    $(document).ready(
        function() {
            $('body').append('<div>Hello World!</div>');
        }
    );
  [% END %]

=head1 DESCRIPTION

This module is a Template Toolkit filter, which uses JavaScript::Minifier::XS
to compress javascript code from filtered content during template processing.

=head1 SOURCE

You can contribute or fork this project via github:

http://github.com/mschout/template-plugin-filter-minify-javascript-xs

 git clone git://github.com/mschout/template-plugin-filter-minify-javascript-xs.git

=head1 BUGS

Please report any bugs or feature requests to
bug-template-plugin-filter-minify-javascript-xs@rt.cpan.org, or through the web
interface at http://rt.cpan.org/

=head1 AUTHOR

Michael Schout E<lt>mschout@cpan.orgE<gt>

=head1 COPYRIGHT & LICENSE

Copyright 2009 Michael Schout.

This program is free software; you can redistribute it and/or
modify it under the terms of either:

=over 4

=item *

the GNU General Public License as published by the Free Software Foundation;
either version 1, or (at your option) any later version, or

=item *

the Artistic License version 2.0.

=back

=head1 SEE ALSO

L<JavaScript::Minifer::XS>, L<Template::Plugin::Filter>, L<Template>

