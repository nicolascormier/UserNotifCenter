Command line tool for sending custom notifications to OSX Notification Center.

Example: 
```bash
UserNotifCenter.app/Contents/MacOS/UserNotifCenter "Title" "Some text"
```

Script for integrating with IRSSI (~/.irssi/scripts/autorun/):
```perl
use strict;
use vars qw($VERSION %IRSSI);

use Irssi;

sub tmsg {
	my ($server,$msg,$nick,$address,$target) = @_;
	$msg =~ s/\'//g;
	system("CHANGE/ME/UserNotifCenter.app/Contents/MacOS/UserNotifCenter '$nick'  '$msg'");
}


Irssi::signal_add_last('message public', \&tmsg);
Irssi::signal_add_last('message private', \&tmsg);
```
