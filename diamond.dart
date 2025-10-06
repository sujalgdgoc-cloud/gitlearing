import "dart:io";

void main()
{
  int row,spa,col;
 //1st pattern
 //loop for row
 for(row = 1; row<=4; row++)
 { //loop for printing spaces
    for(spa=1; spa<=4-row;spa++)
    {
      stdout.write(" ");
    }
    //for printing stars
    for(col=1; col<=row*2-1; col++)
    {
      stdout.write("*");
    }
    print("\n");
 }
 //2nd loop 
 for(row = 3; row>=1; row--)
 {
   //loop for spaces 
   for(spa=1; spa<=4-row; spa++)
   {
     stdout.write(" ");
   }
  //loop for stars or pattern
   for(col = 1; col<=2*row-1; col++)
   {
    stdout.write("*");
   }
    print("\n");
 }
}