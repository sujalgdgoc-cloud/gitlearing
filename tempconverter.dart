import 'dart:io';

void main()
{
   print("Enter the temp in celcius : ");
  double a = double.parse(stdin.readLineSync()!);

  double b = (a * 9/5) + 32;

  print("The value in fahrenheit");
  print(b);

  print("Enter the temp in fahern : ");
  double d = double.parse(stdin.readLineSync()!);
  double c = (d -32) *5/9;
  print(c);

 
}