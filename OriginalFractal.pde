public void setup()
{
  size(500,500);
  background(0);
  int x= 50;
  int y= 450;
  int len= 400;
  fill(219,40,40);
  fractal(x,y,len);

}
public void draw()
{

}
public void fractal(int x, int y, int len) 
{
  if(len > 2){//squaresssss!!
    quad(x, y, x+len, y, x+len , y-len, x, y-len );
    fractal(x + len/4,y-len/4,len/2);
    
    //more squareeesss
    fractal(x+len/4, y, len/2);
    fractal(x,y-len/4, len/2);
    fractal(x + len/4, y - len/2, len/2);
    fractal(x + len/ 2, y - len/4, len/2);
  }
}
