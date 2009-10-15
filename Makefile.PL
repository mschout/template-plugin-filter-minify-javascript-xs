use ExtUtils::MakeMaker;

WriteMakefile(
    (MM->can('signature_target') ? (SIGN => 1) : ()),
    NAME              => 'Template::Plugin::Filter::Minify::JavaScript::XS',
    VERSION_FROM      => 'lib/Template/Plugin/Filter/Minify/JavaScript/XS.pm',
    PREREQ_PM         => {
        'Template'                 => 2.0,
        'JavaScript::Minifier::XS' => 0
    },
    ($] >= 5.005 ?
      (ABSTRACT_FROM  => 'lib/Template/Plugin/Filter/Minify/JavaScript/XS.pm',
       AUTHOR         => 'Michael Schout <mschout@cpan.org>') : ()),
);
