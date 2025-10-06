import 'dart:io';
import 'dart:math';

void main(){
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  double c = double.parse(stdin.readLineSync()!);
  double disc = b*b - 4*a*c;
  

  if(disc>0)
  {
    double root1 = (-b + sqrt(disc)) /2*a;
    double root2 = (-b -sqrt(disc)) / 2*a;
    print("The first root of the eqn is :");
    print(root1);
    print("The second root of the eqn is ");
    print(root2);
  }
  else
  {
    print("Enter the value of a, b, c for which the roots are real");
  }
}