# Author: Berk Saltuk Yılmaz
# Loops in Perl

# C Type Loop
for( $i = 0; $i < 4; $i++)
{
    print("LLOOOOPP $i\n");
}

# As in C group languages init, cond, incr parts of for loop is optional

#for (;;){
#    print "To infinity and beyond!";
#} # This is an infinite loop, you can try by uncommenting, but I don't recommend :)

####################################################################################################
# Iterating Array with For loop - !!NOT!! logically controlled but you can try them also if you want
# @favShows = ('Bojack', 'BrBa', 'SoA', 'The Office', 'Dexter');
# for (@favShows)
# {
#     print ("$_ \n");
# }
# for $show (@favShows){
#     print("$show\n");
# }
# foreach $show (@favShows){
#     print("$show\n");
# }
# %favShows = ('1', 'Bojack', '2', 'The Office', '3', 'Dexter', '4', 'BrBa', '5', 'SoA');
# for $showSorted (keys %favShows){
#     print "Show #$showSorted is $favShows{$showSorted}\n";
# } !!NOT!! logically controlled but you can try them also if you want
####################################################################################################


# Of course, while loops!
$noOfAssignments = 0;
while( $noOfAssignments < 4)
{
    print("There are $noOfAssignments assignment(s) left\n");
    # if you wish you can remove continue part and uncomment next line
    # $noOfAssignments = $noOfAssignments + 1;
} continue {
    $noOfAssignments = $noOfAssignments + 1;
}

print("Well, I am dropping out the university...\n");

# In reality...
# $noOfAssignments = 0;
# while(1)
# {
#   $noOfAssignments = $noOfAssignments + 1;    
#   print("There are $noOfAssignments assignment(s) left\n"); 
# } # Jokes aside, this is also an infinite loop, uncomment to feel like Bilkenter

# The notorious "do-while" that I've never used
$i = 1;

do {
    print("$i brain cells left...\n");
    $i = $i - 1;
} while( $i >= 0); 

# what does even "until loop" mean?
# well, until loop is executing as long as the condition is false
$isEven = 0;
$num = 1;
until ($isEven)
{
    print("Num is : $num\n");
    if( $num % 2 == 0)
    {
        $isEven = 1;
        print('Num is even now!');
    }
    $num = $num + 1;
}
# There is also do until! :D
$i = 1;
do {
    print("$i brain cells left...\n");
    $i = $i - 1;
} until( $i < 0); 


# Loop controls

# break is last in Perl
for( $i = 0; $i < 5; $i++){
    for( $j = 0; $j < 2; $j++){
        if( $i == 1){
            print("No, I warned this lad i about being 1! I will break it!\n");
            last;
        }
        print("i is $i, j is $j\n");
    }
}

# continue is next in Perl
$i = 0;
while( $i < 6){
    $i++;
    if( $i % 2 == 0)
    {
        print("I hate even numbers!\n");
        next;
    }
    print("$i\n");
}

# There are labels in Perl!
countOut:
for($i = 1; $i < 100; $i++){
   for( $j = 1; $j < 10; $j++){
       print("Looping... i = $i, j = $j \n");
       if( $i == 2)
       {
           print("C'mon I do not have time for looping 1000 times!");
           last countOut; # This directly breaks the outer loop!
       }
   } 
}

count:
for($i = 1; $i < 6; $i++){
  countIn: for( $j = 1; $j < 10; $j++){
       
       if( $i % 2 == 0 || $j % 2 == 0 )
       {
           print("You cannot be even numbers!\n");
           next count;
       }
       print("Looping... i = $i, j = $j \n");
   } 
}

# There is also one special loop control mechanism: redo!
$i = 0;
repeatThis:
for($j = 0; $j <= 2; $j++){
    print("i is $i, j is $j\n");
    $i++;
    redo repeatThis if ($i < 3);
}