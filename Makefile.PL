use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Text::Autoformat',
    AUTHOR              => 'Damian Conway <DCONWAY@CPAN.org>',
    VERSION_FROM        => 'lib/Text/Autoformat.pm',
    ABSTRACT_FROM       => 'lib/Text/Autoformat.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'Text::Reform' => 1.11,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Text-Autoformat-*' },
);
