use strict;
use warnings;
use ExtUtils::MakeMaker;

my $mm_ver = $ExtUtils::MakeMaker::VERSION;
if ($mm_ver =~ /_/) { # dev version
    $mm_ver = eval $mm_ver;
    die $@ if $@;
}

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

    ($mm_ver <= 6.45
        ? ()
        : (META_MERGE => {
            'meta-spec' => { version => 2 },
            resources => {
                repository  => {
                    type => 'git',
                    web  => 'https://github.com/neilbowers/Text-Autoformat',
                    url  => 'git://github.com/neilbowers/Text-Autoformat.git',
                },
            },
          })
    ),

);
