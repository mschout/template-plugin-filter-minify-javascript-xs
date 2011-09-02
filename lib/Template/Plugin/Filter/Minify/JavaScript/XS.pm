package Template::Plugin::Filter::Minify::JavaScript::XS;

# ABSTRACT: JavaScript::Minifier::XS filter for Template Toolkit

use 5.006;
use strict;
use base 'Template::Plugin::Filter';
use JavaScript::Minifier::XS;

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

__END__

=begin Pod::Coverage

init
filter

=end Pod::Coverage

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

=head1 SEE ALSO

L<JavaScript::Minifier::XS>, L<Template::Plugin::Filter>, L<Template>

