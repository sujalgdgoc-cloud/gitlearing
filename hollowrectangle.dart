//hollow rectangle
import 'dart:io';
void main()
{
  print("Enter a number : ");
  int a  = int.parse(stdin.readLineSync()!);
  int row = 1;
  int col = 1;
  for(row = 1; row<=a; row++)
  {
    for(col = 1; col<=a; col++)
    {
      if(col==1 || col ==5 || row == 1 || row ==5)
      {
        stdout.write("* ");
      }
      else
      {
       stdout.write("  "); //two spaces
      }
      
    }
   print("");
  }
}