// Author: Berk Saltuk Yılmaz
// LoOoOoOoOops in Dart

void main(){
  
  // Oh, good old C type for loop!
  for( var i = 0; i < 4; i++){
    print("LLOOOOPP $i");
  }

  // Let's create an infinite loop!
  // Again in Dart, all the parts of for declaration are optional
  /**
   * for(;;){
   *  print("To infinity and beyond");
   * }
   */
  ////////////////////////////////////////////////////////////////////
  //!!NOT!! logically controlled but you can try them also if you want
  // Iterating through an array is possible
  // var favShows = ['Bojack', 'BrBa', 'SoA', 'The Office', 'Dexter'];
  // for( var i in favShows)
  // {
  //   print(i);
  // }
  // var favShows2 = {
  //   '1':'Bojack',
  //   '2': 'The Office',
  //   '3': 'Dexter',
  //   '4': 'BrBa',
  //   '5': 'SoA'
  //   };
  // for( var i in favShows2.keys){
  //   print("Show #$i is ${favShows2[i]}");
  // }
  //!!NOT!! logically controlled but you can try them also if you want
  ////////////////////////////////////////////////////////////////////

  // While loops!!!
  var num = 0;
  while( num < 4){
    print("There are $num assignment(s) left");
    num++;
  }

  print("Well, I am dropping out the university...");
  
  /**num = 0;
  // Reality and another infinite loop!
  while(true){
  *  print("There are $num assignment(s) left");
  * num++;
 }*/
  var i = 1;
  do{
    print("$i brain cells left...");
    i--;
  }while( i > -1);

  // No until loop in Dart...

  // ...but there are control statements: break and continue
  for( var i = 0; i < 5; i++){
    for( var j = 0; j < 2; j++){
      if( i == 1){
        print("No, I warned this lad i about being 1! I will break it!");
        break;
      }
      print("i is $i, j is $j");
    }
  }

  i = 0;
  while( i < 6){
    i++;
    if( i % 2 == 0){
      print("I hate even numbers");
      continue;
    }
    print("$i");
  }
  // ...and there are labeled break and continue!
  countOut:
  for( var i = 1; i < 100; i++){
    for( var j = 1; j < 10; j++){
        print("Looping... i = $i, j = $j");
        if( i == 2)
        {
            print("C'mon I do not have time for looping 1000 times!");
            break countOut; // This directly breaks the outer loop!
        }
    } 
  }
  count:
  for( var i = 1; i < 6; i++){
    countIn: for( var j = 1; j < 10; j++){
        
        if( i % 2 == 0 || j % 2 == 0 )
        {
            print("You cannot be even numbers!");
            continue count;
        }
        print("Looping... i = $i, j = $j");
    } 
  } // T H A T ' S    A L L !
}

