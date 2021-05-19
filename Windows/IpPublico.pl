#!/usr/bin/env perl 
use 5.10.0;
use strict;
use warnings;

use LWP::UserAgent;

# site resource
my $source_list = [
    'http://ipinfo.io/ip', 'http://checkip.dyndns.org'
];

my $ua = LWP::UserAgent->new;

for my $site (@$source_list){
    my $res = $ua->get($site);
    if($res->is_success){
        # parse ip
        $res->content =~ m/(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})/;

        # try another site
        next unless $1; 
        
        # return ip
        say $1 and last;
    }
}