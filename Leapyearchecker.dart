
import 'dart:io';

void main()
{
  print("Enter the number of terms");
  int a = int.parse(stdin.readLineSync()!);

if((a %4 == 0 && a %100 !=0 ) || (a% 400 == 0))
{
  print("leap year");
}
else 
{
   print("Not leap");
}
}