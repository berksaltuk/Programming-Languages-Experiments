//Author: Berk Saltuk Yılmaz
//Scope Play in Dart

void main(){
  var x = "Mr. Worldwide";

  void localCeleb1(){
    x = "Mr. Localcelebrity"; // This sees the variable defined in main and changes it 
    print('In localCeleb1, x is : $x');
  }

  print('Before calling localCeleb1, x is : $x');
  localCeleb1();
  print('After calling localCeleb1, x is : $x');


  print("-----------------------------------------");

  var y = "Mr. Worldwide";

  void localCeleb2(){
    var y = "Mr. Localcelebrity"; // this creates a local variable
    print('In localCeleb1, y is : $y');
  }

  print('Before calling localCeleb1, y is : $y');
  localCeleb2();
  print('After calling localCeleb1, y is : $y');

  print("-----------------------------------------");

  // This example shows that Dart language only has lexical (static) scoping
  var a = "global a";
  var b = ""; // If we do not declare these variables
  var c = ""; // compiler gives error
  void foo(){
      var a = "foo a";
      var b = "foo b";
      c = "I am c!";

      void loo(){
        print("In loo, a : $a, b: $b, c : $c");
      }
      void boo(){
        var b = "I am b!";
        loo();
      }

      boo();
      loo();
  }

  print("In main before foo, a : $a, b : $b, c : $c"); 
  foo();
  print("In main after foo, a : $a, b : $b, c : $c");
  // boo(); // Error, undefined function!

  print("-----------------------------------------");

  var username = "berksaltuk";
  {
    var username = "bsy";
    print("Username is $username"); // Dart supports block scoping
  }
  print("Username is $username");

  print("-----------------------------------------");

  var loopVar = "I feel normal";
  print(loopVar);
  for( var i = 0; i < 5; i++)
  {
    // If we add var keyword at the line below, the loopVar would be different from the one in main
    loopVar = "I feel like I am in a loop!";
    print(loopVar);
  }
  print(loopVar);

  //Unlike some of other languages in this homework
  // variable i is not accessible after the for loop!
  // print(i); //Give it a try!

  print("-----------------------------------------");

  print("Dart also does not have a feature as block scoping...");
}