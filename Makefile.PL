
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.020.
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker ;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Date::Holidays::* adapter and aggregator for all your holiday needs",
  "AUTHOR" => "Jonas B. Nielsen <jonasbn\@cpan.org>",
  "BUILD_REQUIRES" => {
    "Module::Build" => "0.30"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "Module::Build" => "0.30"
  },
  "DISTNAME" => "Date-Holidays",
  "EXE_FILES" => [],
  "LICENSE" => "artistic_2",
  "NAME" => "Date::Holidays",
  "PREREQ_PM" => {
    "Carp" => 0,
    "DateTime" => 0,
    "Env" => 0,
    "File::Slurp" => 0,
    "FindBin" => 0,
    "JSON" => 0,
    "Locale::Country" => 0,
    "Module::Load" => 0,
    "Scalar::Util" => 0,
    "Test::Class" => 0,
    "Test::More" => 0,
    "TryCatch" => 0,
    "constant" => 0
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => 0
  },
  "VERSION" => "1.00",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "DateTime" => 0,
  "Env" => 0,
  "File::Slurp" => 0,
  "File::Spec" => 0,
  "FindBin" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "JSON" => 0,
  "Locale::Country" => 0,
  "Module::Build" => "0.30",
  "Module::Load" => 0,
  "Scalar::Util" => 0,
  "Test::Class" => 0,
  "Test::More" => 0,
  "TryCatch" => 0,
  "constant" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



