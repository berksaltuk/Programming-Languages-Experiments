<!DOCTYPE html>
<html lang="en">

<?php
# Author: Berk Saltuk Yılmaz 
# Loops in PHP

# C Type Loop
for( $i = 0; $i < 4; $i++){
    echo "LLOOOOPP $i<br>";
}

# Well also in PHP init, cond, incr parts of C type for loop are optional
# This is an example of infinite loop
/**
 * for(;;){
 *  echo "To infinity and beyond!<br>";
 * }
 *  */ 

 ####################################################################################################
//!!NOT!! logically controlled but you can try them also if you want
//  # Iterating array with foreach loop
//  $favShows = array('Bojack', 'BrBa', 'SoA', 'The Office', 'Dexter');

//  foreach( $favShows as $show ){
//      echo "$show<br>";
//  }

//  # Iterating an associative array
//  $favShows2 = array(
//     1 => 'Bojack',
//     2 => 'The Office',
//     3 => 'Dexter',
//     4 => 'BrBa',
//     5 => 'SoA'
//  );

//  foreach( $favShows2 as $index => $show){
//      echo "Show #$index is $show<br>";
//  } // !!NOT!! logically controlled but you can try them also if you want
####################################################################################################

 # While loop in PHP!
$num = 0;
while( $num < 4){
    echo "There are $num assignment(s) left<br>";
    $num++;
}
echo "Well, I am dropping out the university...<br>";

// One more infinite loop?
/**
 * $num = 0;
 * while(TRUE)
 * {
 *  echo "There are $num assignment(s) left<br>";
 *   $num++;
 * }
 */

# do-while!
$i = 1;
do{
    echo "$i brain cells left...<br>";
    $i--;
} while( $i > -1);

# No such thing as until in PHP

# Loop controls
# break in PHP
for( $i = 0; $i < 5; $i++){
    for( $j = 0; $j < 2; $j++){
        if( $i == 1){
            echo "No, I warned this lad i about being 1! I will break it!<br>";
            break;
        }
        echo "i is $i, j is $j<br>";
    }
}

# continue in PHP
$i = 0;
while( $i < 6){
    $i++;
    if( $i % 2 == 0)
    {
        echo "I hate even numbers!<br>";
        continue;
    }
    echo "$i<br>";
}

# There is no labeled break or continue PHP but there are some strategies to
# break the outer loops
for($i = 1; $i < 100; $i++){
   for( $j = 1; $j < 10; $j++){
       echo "Looping... i = $i, j = $j<br>";
       if( $i == 2)
       {
           echo "C'mon I do not have time for looping 1000 times!<br>";
           break 2; # This breaks the second level, the outer loop, isn't it cool?
           # The same could be applied for continue label
        }
   } 
}

# We can also use goto for breaking out of several loops.
for($i = 1; $i < 100; $i++){
    for( $j = 1; $j < 10; $j++){
        echo "Looping... i = $i, j = $j<br>";
        if( $i == 2)
        {
            echo "C'mon I do not have time for looping 1000 times!<br>";
            goto rightHereWaiting;
        }
    } 
 }
 rightHereWaiting:
 echo "You really broke the loop!";

/** That's all for P H P :) **/
?>
</html>