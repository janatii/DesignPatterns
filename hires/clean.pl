#!/usr/ucb/perl$/="\n\n" ;$tmp="temp$$.tmp";while ( <*.htm>  ) {   $file=$_ ;   print STDERR "Processing $file..." ;   open(TMP,">$tmp") || "Can't open $tmp for writing: $!" ;   open(IN,"<$file") || "Can't open $file for reading: $!" ;   while ( <IN> ) {               1 while ( s/<A\s(HREF|NAME)="([^":]+):/<A $1="$2_/ ) ;      1 while ( s/<A\s(HREF|NAME)="([^"\s]+)\s/<A $1="$2_/ ) ;      print TMP ;   }   unlink($file) ;   rename($tmp,$file) ;   print STDERR "done.\n" ;}