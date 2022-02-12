public void myFractal(int x, int y, int siz) {
  ellipse(x, y, siz, siz);
  if (siz > 10) {
    stroke(145, 170, 191);
    int white = color(201, (int)(Math.random()*256)+ 100, (int)(Math.random()*256)+100, 150);
    fill(white);
    tint(20);
    myFractal(x-siz/2, y/2, siz/2);
    myFractal(x+siz/2, y, siz/2);
  }
}
public void setup()
{
  size(750, 500);
  rectMode(CENTER);
}
public void draw() {
  background(0);
  ellipse((int)(Math.random()*750), (int)(Math.random()*500), 5, 10);
  ellipse((int)(Math.random()*750), (int)(Math.random()*500), 10, 5);
  ellipse((int)(Math.random()*750), (int)(Math.random()*500), 5, 10);
  myFractal(250, 250, 480);
  int x = 570;
  int y = 380;
  beginShape();
  vertex(30 + x, 20 + y);
  bezierVertex(80 + x, 20 + y, 80 + x, 75 + y, 30 + x, 75+ y);
  bezierVertex(50 + x, 75 + y, 60 + x, 25 + y, 30 + x, 20+ y);
  endShape();
}
