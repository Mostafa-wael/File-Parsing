# Modules used 
use strict; 
use warnings; 
sub search
{
	print "please enter the word you are looking for?\n"; 
	my$word = <STDIN>; # Getting an input from the user 
	chomp $word; # Removes new line from the input 
	print "the word is:'", $word,"'\n\n"; 
	
	########################################################
	
	my $file = 'story.txt'; # file name or directory 
	my $i=0; # holds the number of occurances
	my $rowNumber=0;
	
	open(FH, $file) or die("File $file not found"); 
   
	while(my $String = <FH>) 
	{ 
		$rowNumber++;
		if($String =~ /$word/) 
		{ 
			$i++;
			print "in line number : '",$rowNumber,"' ";
			print "$String \n"; 
		} 
	} 
	if ($i)
	{
		print "it occured '", $i,"' times\n\n"; 
	}
	else
	{
		print "the word wasn't found in the file !"
	}
	print"\n";
	close(FH); 
}  
  
sub main 
{
	my$choice = 0;  
	do{  
		search();
	    print " are you looking for another word ? 1/0 : "; 
		$choice = <STDIN>; # Getting an input from the user 
		chomp $choice; # Removes new line from the input 
	 
	}while( $choice==1 );  
	
	print "Thanks !"; 
} 
main(); 
