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
#Irssi::signal_add_last("print text", "hilight");

