#!/usr/bin/perl -w
use strict;
use IO::File;
chomp(my $path=`pwd`);
my @dirs = <n*>;
my $fh_list_out = IO::File->new(">snig.files.list");
for my $dir (@dirs){
	chdir "$path/$dir";
	my @files = <*.txt>;
	for my $file (@files){
		$fh_list_out->print("$dir/$file\n");
	}
}
