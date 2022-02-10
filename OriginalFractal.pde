public void myFractal(int x, int y, int siz){
  ellipse(x,y,siz,siz);
  if(siz > 10){
   //fill(201, (int)(Math.random()*256),(int)(Math.random()*256));
   //flashing
   int blue = color(201, (int)(Math.random()*256),(int)(Math.random()*256));
   //fill(blue);
   myFractal(x-siz/2, y/2, siz/2);
   myFractal(x+siz/2, y, siz/2);
  }
}
public void setup()
{
  size(750,500);
  rectMode(CENTER);
}
public void draw(){
  background(0);
  ellipse((int)(Math.random()*750),(int)(Math.random()*500), 10,10);
  ellipse((int)(Math.random()*750),(int)(Math.random()*500), 10,10);
  ellipse((int)(Math.random()*750),(int)(Math.random()*500), 10,10);
  myFractal(250,250,480);
}
