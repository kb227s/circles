/*
Random circle drawer :D
*/

float _angle = 0;

void setup()
{
  size(1000,800);
}

void draw()
{
  //partial screen clear
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,1000,800);
  
//check angle value
  _angle = _angle + 1;
  if(_angle > 360)
  {
    _angle = 0;
  }
  println(_angle);
  drawCircle();
}
 
void drawCircle()
{
  //draw randome circle
  colorMode(HSB,360,100,100);
  float hue = random(_angle,_angle+30);
  float sat = random(100,100);
  float bri = random(150,150);
  color circle_color = color(hue,sat,bri);
  fill(circle_color);
  circle(random(1000),random(800),120);
  //fill(color(random(200),random(0),random(255)));
  //fill(color(255,255,255));
  //circle(mouseX,mouseY,100);
}
