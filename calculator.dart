import 'dart:io';
void main()
{
   print("Enter First number : ");
   int a = int.parse(stdin.readLineSync()!);
   print("Enter Second number :");
  int b = int.parse(stdin.readLineSync()!);
 

  //additon
  print("Additon ${a+b}\n");
  //subtraction
  print("Subtaction ${a-b}\n");
  //multiplication
  print("multiplication ${a*b}\n");
  //divison
  if(b>0)
  {
    print("Divsion ${a/b}");
  }
  else{
    print("B can't be equals to zero");
  }
  
}