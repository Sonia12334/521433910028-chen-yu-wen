设计了一个小机器人，从屏幕下端移动到上方，腿会逐渐被拉长，会不断闪烁变色。
<img width="599" alt="截屏2021-10-25 09 36 29" src="https://user-images.githubusercontent.com/90952935/138622242-bcad40bc-bbb9-41b5-8f65-f4b2983c9f07.png">
源代码：
float r ;
float g ;
float b ;
float a;
float x ;
float y ;
float m;
void setup(){
  size(600,600);
  background(255);
  x=width/2;
  y =height +100;
  
  
}
void draw(){
   background(255);
   rectMode(CENTER);
   ellipseMode(CENTER);
  r=random(255);
  b=random(255);
  g=random(255);
  a=random(255);
  m=random(5);
   //body
   stroke(r,g,b,a);
   strokeWeight(m);
   fill(r,g,100,255);
   rect(x,y,20,100);
   //head
   stroke(0);
   fill(255,200,255);
   ellipse(x,y-30,60,60);
   //eyes

 fill(r,g,b,a);
 ellipse(x-19,y-30,16,32);
 ellipse(x+19,y-30,16,32);
 
 //legs
 stroke(r,b,g,a);
 line(x-10,y+50,x-10,height);
 line(x+10,y+50,x+10,height);
 //moveup
 
 y=y-1;

}
