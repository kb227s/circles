int angle = 30;

void setup()
{
  size(800,600);
}

void draw()
{
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,800,600);
  
  colorMode(HSB,360,100,100);
  angle = angle + 1;
  if(angle > 360) angle = 0;
  println(angle);
  float hue = random(angle,angle+30);
  float sat = random(100,100);
  float bri = random(150,150);
  color circle_color = color(hue,sat,bri);
  fill(circle_color);
  
  //fill(color(random(200),random(0),random(255)));
  circle(random(800),random(600),150);
  //fill(color(255,255,255));
  //circle(mouseX,mouseY,100);
}
