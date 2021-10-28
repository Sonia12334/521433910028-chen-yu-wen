设计说明：设计了一组粒子会按照一定规律绕圈运动并改变自身颜色，会根据鼠标的位置做趋向性运动，并且当鼠标向屏幕右边移动时，粒子会出现类似鱼群的拖尾效果。
源代码：
Xiaoqiu [] xqs= new Xiaoqiu[1000];
float TMD;
void setup()
{
  size(800, 800);

  for (int i=0; i<xqs.length; i++)
  {
    xqs[i]=new Xiaoqiu (new PVector(random(width), random(height)), random(5, 20));
  }
}
void draw()
{
  TMD = map(mouseX, 0, width, 255, 0);
  noStroke();
  fill(0, TMD);
  rect(0, 0, width, height);
  for (int i=0; i<xqs.length; i++)
  {
    xqs[i].update();
    xqs[i].display();
    xqs[i].check();
  }
}
class Xiaoqiu
{
  PVector loc;
  float vx=0, vy=0;
  float r;
  float angle=0;
  float R, G, B;
  boolean bianxiao =true;
  float maxr;
  Xiaoqiu(PVector location, float r)
  {
    loc=location;
    this.r=r;
    maxr=r;
    R=map(loc.x, 0, width, 0, 255);
    G=map(loc.x, 0, width, 255, 0);
    B=map(loc.y, 0, height, 0, 255);
  }
  void update()
  {
    angle+=0.02*noise(0.002*loc.x, 0.002*loc.y);//noise(loc.x, loc.y);
    vx=sin(angle);
    vy=cos(angle);

    loc.x+=vx;
    loc.y+=vy;
    float ox = map(mouseX, 0, width, -2, 2);
    float oy = map(mouseY, 0, height, -2, 2);
    loc.x+=ox;
    loc.y+=oy;
    if (bianxiao)r-=0.3;
    if (r<=0)bianxiao=false;
    if (!bianxiao)r+=0.3;
    if (r>=maxr) bianxiao=true;
  }
  void display()
  {
    noStroke();
    fill(R, G, B);
    ellipse(loc.x, loc.y, r, r);
  }
  void check()
  {
    if (loc.x<0) loc.x=width;
    if (loc.x>width) loc.x=0;
    if (loc.y<0) loc.y=height;
    if (loc.y>height) loc.y=0;
  }
}
