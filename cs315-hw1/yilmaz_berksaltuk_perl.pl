#Author: Berk Saltuk Yılmaz
#Scope Play in Perl

$x = "Mr. Worldwide";

sub localCeleb1(){
    $x = "Mr. Localcelebrity"; # this does not create a local scope
    print "In localCeleb1, x is : $x\n";
}

print "Before calling localCeleb1, x is : $x\n";
localCeleb1();
print "After calling localCeleb1, x is : $x\n";

print "-----------------------------------------\n";

$y = "Mr. Worldwide";

sub localCeleb2(){
    my $y = "Mr. Localcelebrity"; # this creates a local scope
    print "In localCeleb2, y is : $y\n";
}


print "Before calling localCeleb2, y is : $y\n";
localCeleb2();
print "After calling localCeleb2, y is : $y\n";

print "-----------------------------------------\n";

# both dynamic and static scoping example
$a = "global a";

sub foo(){
    my $a = "foo a"; # this is only visible in scope of foo, static scoping
    local $b = "foo b";
    $c = "I am c!"; # This is global declaration
    
    sub boo(){
        local $b = "I am b!"; # this creates dynamic scoping
        loo();
    }

    sub loo(){ 
        print "In loo, a : $a, b : $b, c : $c\n";
    }

    boo();
    loo();
}

print "In main before foo, a : $a, b : $b, c : $c\n";
foo();
print "In main after foo, a : $a, b : $b, c : $c\n";
loo();

print "-----------------------------------------\n";

#Block scoping example
$username = "berksaltuk";
{
    my $username = "bsy"; # this creates a block scope
    print "Username is $username\n";
}
print "Username is $username\n";

print "-----------------------------------------\n";

my @array = (1..5);

$loopVar = "I feel normal";
print("$loopVar\n");
print("\n");
for my $index (@array){
    # If we don't use my keyword the value of outer loopVar changes
    $loopVar = "I feel like doing the same thing again and again";
    print("$loopVar\n");
}
print("\n");
print("$loopVar\n");
print("$index"); # This will not be printed since within for loop

print "-----------------------------------------\n";

#package scoping
$kitten = "Meow";

print "Kitten says $kitten\n";

package berkPackage;

    print "Kitten says $kitten\n";
    $kitten = "Roar";

    print "Kitten says $kitten\n";

    print "Kitten in main package says $main::kitten\n";

    our $dog = "What da dog doin?"; #Other packages can access this

package jaxPackage; # Jax is one of my dogs
    print "They always ask $dog, but they never ask how da dog doin? :(\n";