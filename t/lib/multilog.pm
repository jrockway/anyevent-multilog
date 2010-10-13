package t::lib::multilog;
use strict;
use warnings;
use Test::Builder;
use 5.010;
use Sub::Exporter -setup => {
    exports => [ qw/check_multilog/ ],
};

sub check_multilog {
    my $talkative = shift;
    my $tb = Test::Builder->new;
    my $multilog = $ENV{MULTILOG} || qx/which multilog/;
    chomp $multilog;
    $tb->BAIL_OUT('no multilog found') unless -e -x $multilog;
    $tb->diag("multilog found at $multilog") if $talkative;
    return $multilog;
}

1;
