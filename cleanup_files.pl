#!/usr/bin/perl
use strict;

# Take in a list of files that should be removed (if present).
# If they are present, remove them

my @files_to_rm = @ARGV;

#check that files are in command line args
if(! @files_to_rm){
    print "No files to remove\n";
    exit 1;
}

foreach my $file (@files_to_rm) {
    if (! -e $file){
        print "File/dir $file does not exist. Skipping.\n";
    } else {
        print "Removing $file\n";
        `rm -r $file`;
    }
}