Xiaoqiu [] xqs= new Xiaoqiu[1000];
float TMD;
void setup()
{
  size(800,800);

  for (int i=0; i<xqs.length; i++)
  {
    xqs[i]=new Xiaoqiu (new PVector(random(width), random(height)), random(5,20));
  }
}
void draw()
{
  TMD = map(mouseX,0,width,255,0);
  noStroke();
  fill(0,TMD);
  rect(0, 0, width, height);
  for (int i=0; i<xqs.length; i++)
  {
    xqs[i].update();
    xqs[i].display();
    xqs[i].check();
  }
}
