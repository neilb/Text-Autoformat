use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Text::Autoformat',
    license             => 'perl',
    dist_author         => 'Damian Conway <DCONWAY@CPAN.org>',
    dist_version_from   => 'lib/Text/Autoformat.pm',
    requires => {
        'Test::More'   => 0,
        'Text::Reform' => 1.11,
        'version'      => 0,
    },
    add_to_cleanup      => [ 'Text-Autoformat-*' ],
    meta_merge => {
        resources => {
            repository => 'https://github.com/neilbowers/Text-Autoformat'
        }
    },
);

$builder->create_build_script();
