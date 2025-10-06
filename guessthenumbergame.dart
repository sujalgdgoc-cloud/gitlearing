
import 'dart:io';

void main(){
  print("Enter the number");
  
  int number = 45;
  int attemps = 5;
  print("guess the number in 5 attemps");
  for(int i = 1; i<=attemps; i++)
  {
    int a = int.parse(stdin.readLineSync()!);
    if(a<number)
    {
      print("Try a higher value");
    }
    else if(a>number)
    {
      print("Try a lower value");
    }

    else if(a == number)
    {
      print("You guessed it ");
      break;
    }

    
  }
  print("You loose");

  
}