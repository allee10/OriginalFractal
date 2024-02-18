public void setup()
{
  background(249,183,183);
  size(600, 600);
  noStroke();
  fill(255,0,0,30);
}
public void draw()
{
  fractal(300, 300, 450);
  noLoop();
}
public void fractal(int x, int y, float len)
{
 
  if (len<40) {
    ellipse(x, y, len, len);
  } else {
    ellipse((float)(x+Math.sqrt(2)/8*len), (float)(y+Math.sqrt(2)/8*len), len, len);
    ellipse(x, y-len/2, len, len);
    ellipse((float)(x-Math.sqrt(2)/8*len), (float)(y+Math.sqrt(2)/8*len), len, len);
    ellipse(x-len/2, y, len, len);
    ellipse((float)(x-Math.sqrt(2)/8*len), (float)(y-Math.sqrt(2)/8*len), len, len);
    ellipse(x+len/2, y, len, len);
    ellipse((float)(x+Math.sqrt(2)/8*len), (float)(y-Math.sqrt(2)/8*len), len, len);
    ellipse(x, y+len/2, len, len);
    fractal(x, y, len/2.5);
  }
}
