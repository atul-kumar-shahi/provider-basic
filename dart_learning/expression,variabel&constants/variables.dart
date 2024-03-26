void main(){
  int number=10;
  print(number);
  number=15;
  print(number);
  double apple=3.14159;
  print(apple);
  print(10.isEven);
  print(3.14159.round());

  num myNumber; //it can assign only interger and double types;
  myNumber=10;
  myNumber=3.141;
  // mynumber='hello'; 
  // gives error that a value ot type string can't be assigne to a variable of type numb

   dynamic myVariable; //it can assign every sort of data type either number or double or string
   myVariable=10;
   myVariable=3.141;
   myVariable='hello';


   var someNumber;//this can take any of the data types at the first and make its data type
   someNumber=10;//its type become integer
   //someNumber=3.121 //this throws an error as someNumber is of type interger and cannot assign a value of double

   const myConstant =10;
  //  myConstant =14; //throws an error as it is constant and cannot be reassigned


  final hourSinceMidnight=DateTime.now().second; //use to assign a constant value at runtime 
  // hourSinceMidnight=0; //this will throw an error the final variable can only be set only once
  print(hourSinceMidnight);


  






}