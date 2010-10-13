use strict;
use warnings;
use Test::More;

use ok 'AnyEvent::Multilog';
use t::lib::multilog qw(check_multilog);

check_multilog 1;

done_testing;
