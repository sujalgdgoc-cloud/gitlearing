
import 'dart:io';

void main()
{
  int a = int.parse(stdin.readLineSync()!);
  int first = 0;
  int second = 1;
  int next;
  for(int i =0; i<a; i++)
  {
     if(i==0)
     {
       print(first);
     }
     else if(i==1)
     {
        print(second);
     }
     
     else 
     {
       next = first + second;
      print(next);
      first = second;
      second = next;
     }
      
     
     
  }
}