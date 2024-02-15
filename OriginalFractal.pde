public void setup()
{
  size(500,500);
  background(0);
  int x= 50;
  int y= 450;
  int len= 400;
  fill(219,40,40);
  sierpinski(x,y,len);

}
public void draw()
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len<= 15){
    triangle(x, y, x+len, y, x+len/2, y-len);
  }else{
    sierpinski(x,y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
