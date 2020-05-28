#!/usr/bin/perl

# Hook script for PVE guests to reset AMD GPU before VM start
# qm set 100 -hookscript local:snippets/reset-gpu.pl

use strict;
use warnings;

print "HOOK: " . join(' ', @ARGV). "\n";

# First argument is the vmid

my $vmid = shift;

# Second argument is the phase

my $phase = shift;

if ($phase eq 'pre-start') {

    print "HOOK: unbind vtconsole and reset GPU.\n";
    system("echo 0 > /sys/class/vtconsole/vtcon0/bind");
    system("echo 0 > /sys/class/vtconsole/vtcon1/bind");
    system("echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/unbind");
    system("rtcwake -m mem -s 3");

} else {
    print "HOOK: got unknown phase '$phase'\n";
}

exit(0);