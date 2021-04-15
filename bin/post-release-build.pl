#!/usr/bin/env perl
use v5.18;
use strict;
use warnings;
use IO::All;

use constant USAGE => <<EOUSAGE;
Usage:
    
    post-release-build.pl dir/to/App-perlbrew/

EOUSAGE

sub grok_changelog {
    my $perlbrew_git_dir = $_[0];
    # Take the latest section in the changelog
    my ($version, $release_time, $updates_txt) = (undef, '');
    my $io = io->catfile($perlbrew_git_dir, "Changes")->utf8;

    while(my $line = $io->getline()) {
        if ($line =~ /^([0-9]+\.[0-9]+)$/) {
            last if ($version);
            $version = $1;
        } elsif ($line =~ /^\s+- Released at (\S+)$/o) {
            $release_time = $1;
        } elsif ($line =~ /^\s+- (.+)$/o) {
            $updates_txt .= "- $1\n";
        }
    }

    die "Failed to extract the latest version from Changes. Abort.\n" unless $version;
    die "Failed to extract the release time from Changes. Abort.\n" unless $release_time;
    die "Failed to extract the release note Changes. Abort.\n" unless $updates_txt;

    return {
        version => $version,
        time => $release_time,
        updates => $updates_txt,
    };
}

sub build_release_notes {
    my $release_detail = $_[0];

    return <<"TMPL"
Perlbrew Release $release_detail->{version}
=====================

perlbrew $release_detail->{version} was released at $release_detail->{time} with these  changes:

$release_detail->{updates}

TMPL
}

sub MAIN {
    my $perlbrew_git_dir = $_[0] or die USAGE;
    my $release_detail = grok_changelog $perlbrew_git_dir;
    my $notes = build_release_notes( $release_detail );
    my $f = io->catfile("content", "Release-" . $release_detail->{version} . ".md");
    $f->print($notes);
    $f->close;
    say "BUILD: $f";
}
MAIN(@ARGV);
