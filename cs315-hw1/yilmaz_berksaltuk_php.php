<!DOCTYPE html>
<html>
<body>
<?php 
//Author: Berk Saltuk Yılmaz
//Scope Play in PHP

$x = "Mr. Worldwide";

function localCeleb1(){
    $x = "Mr. LocalCelebrity"; // This is only visible in localCeleb1
    echo "In localCeleb1, x is : ".$x."<br>";
}

echo "Before calling localCeleb1, x is : ".$x."<br>";
localCeleb1();
echo "After calling localCeleb1, x is : ".$x."<br>";

echo "--------------------------------------------<br>";

$y = "Mr. Worldwide";

// function localCeleb2(){
//     echo "In localCeleb1, y is : ".$y."<br>";
// } 
// localCeleb2();

// If we directly try to call a global variable 
// inside a function we will have an error saying 
// y is undefined, you can uncomment and try

function localCeleb2(){
    global $y;
    $y = "Mr. Localcelebrity"; // this directly changes global y
    // or $GLOBALS['y'] = "Mr. Localcelebrity";
    echo "In localCeleb2, y is : ".$y."<br>";
}

echo "Before calling localCeleb2, y is : ".$y."<br>";
localCeleb2();
echo "After calling localCeleb2, y is : ".$y."<br>";

echo "--------------------------------------------<br>";

$a = "global a";
$b = "";
$c = "";
function foo(){
    $a = "foo a";
    $b = "foo b";
    $c = "I am c!";

    function boo(){
        $b = "I am b!";
    }
    if (1==1){
        echo "In if statement, a : ".$a.", b : ".$b.", c : ".$c."<br>";
    } // Loo in other languages changed with an if statement
     // because functions cannot see the variables defined
    // the functions that we may call as static parents
   // However, if we add an if statement it applies static scoping 

    boo();
    
}
echo "In main before foo, a : ".$a.", b : ".$b.", c : ".$c."<br>";
foo();
echo "In main after foo, a : ".$a.", b : ".$b.", c : ".$c."<br>";
boo();
echo "--------------------------------------------<br>";

$username = "berksaltuk";
{
    $username = "bsy"; // This directly changes the variable declared outside of the block
    echo "Username is ".$username."<br>";
}
echo "Username is ".$username."<br>";

echo "--------------------------------------------<br>";

$loopVar = "I feel normal"; // You can comment out this declaration
echo "$loopVar<br>";
for( $i = 0; $i < 5; $i++)
{
    $loopVar = "I am in a loop now!";
    echo "$loopVar<br>";
}
echo "$loopVar<br>"; // Even if this variable were declared in for it is accessible

echo "$i<br>"; // This is still accessible

echo "--------------------------------------------<br>";

echo "PHP also does not such a thing as package scoping<br>";

echo "--------------------------------------------<br>";

function staticFoo(){
    static $waow = 0;
    $zoo = 0;
    $zoo++;
    $waow++;
    echo "zoo is $zoo, waow is $waow<br>"; 
    // zoo will be 0 everytime but waow will be updated
}

staticFoo();
staticFoo();

?>
</body>
</html>