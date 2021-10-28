class Xiaoqiu
{
  PVector loc;
  float vx=0, vy=0;
  float r;
  float angle=0;
  float R,G,B;
  boolean bianxiao =true;
  float maxr;
  Xiaoqiu(PVector location, float r)
  {
    loc=location;
    this.r=r;
    maxr=r;
    R=map(loc.x,0,width,0,255);
    G=map(loc.x,0,width,255,0);
    B=map(loc.y,0,height,0,255);
  }
  void update()
  {
    angle+=0.02*noise(0.002*loc.x, 0.002*loc.y);//noise(loc.x, loc.y);作为一个矢量/坐标，在此有什么意义？可否换成别的无关随机变量？乘在其前系数意义是什么？noise值变化的含义？
    vx=sin(angle);
    vy=cos(angle);

    loc.x+=vx;
    loc.y+=vy;
    float ox = map(mouseX,0,width,-2,2);
        float oy = map(mouseY,0,height,-2,2);
loc.x+=ox;
    loc.y+=oy;
    if(bianxiao)r-=0.3;
    if(r<=0)bianxiao=false;
    if(!bianxiao)r+=0.3;
    if(r>=maxr) bianxiao=true;
  }
  void display()
  {
    noStroke();
    fill(R,G,B);
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
