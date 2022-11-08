#!/usr/bin/perl -w
use strict;
use IO::File;
my @files = <*.FinalReport.txt>;
for my $file (@files){
	if($file=~/\w+_(\d+)\.FinalReport\.txt/){
		my $num = $1;
		my $cmd="perl split_illumina_report.pl -prefix n$num/ -suffix .txt $file";
		system "bsub -o out.split.signalfiles '$cmd'";
	}
}


