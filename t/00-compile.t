use 5.006;
use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::Compile 2.045

use Test::More  tests => 20;



my @module_files = (
    'Date/Holidays.pm',
    'Date/Holidays/Adapter.pm',
    'Date/Holidays/Adapter/AU.pm',
    'Date/Holidays/Adapter/BR.pm',
    'Date/Holidays/Adapter/CN.pm',
    'Date/Holidays/Adapter/DE.pm',
    'Date/Holidays/Adapter/DK.pm',
    'Date/Holidays/Adapter/ES.pm',
    'Date/Holidays/Adapter/FR.pm',
    'Date/Holidays/Adapter/JP.pm',
    'Date/Holidays/Adapter/KR.pm',
    'Date/Holidays/Adapter/NO.pm',
    'Date/Holidays/Adapter/PL.pm',
    'Date/Holidays/Adapter/PT.pm',
    'Date/Holidays/Exception/AdapterInitialization.pm',
    'Date/Holidays/Exception/AdapterLoad.pm',
    'Date/Holidays/Exception/InvalidCountryCode.pm',
    'Date/Holidays/Exception/NoCountrySpecified.pm',
    'Date/Holidays/Exception/SuperAdapterLoad.pm',
    'Date/Holidays/Exception/UnsupportedMethod.pm'
);



# no fake home requested

my $inc_switch = -d 'blib' ? '-Mblib' : '-Ilib';

use File::Spec;
use IPC::Open3;
use IO::Handle;

open my $stdin, '<', File::Spec->devnull or die "can't open devnull: $!";

my @warnings;
for my $lib (@module_files)
{
    # see L<perlfaq8/How can I capture STDERR from an external command?>
    my $stderr = IO::Handle->new;

    my $pid = open3($stdin, '>&STDERR', $stderr, $^X, $inc_switch, '-e', "require q[$lib]");
    binmode $stderr, ':crlf' if $^O eq 'MSWin32';
    my @_warnings = <$stderr>;
    waitpid($pid, 0);
    is($?, 0, "$lib loaded ok");

    if (@_warnings)
    {
        warn @_warnings;
        push @warnings, @_warnings;
    }
}



# no warning checks;


