class ME{
  float x,y,radius;
  
  ME(float _x, float _y){
    x=_x;
    y=_y;
    radius=25;
  }
  void update(){
    x=mouseX;
    y=mouseY;
    //radius+=t;
    //if(radius>30){
    //  t*=-1;
    //}
    //if(radius<5){
    //  t*=-1;
    //}
  }
  void check(){
    for(int i=0;i<balls.size();i++){
      float d=(balls.get(i).x-x)*(balls.get(i).x-x)+(balls.get(i).y-y)*(balls.get(i).y-y);
      if(d<(balls.get(i).radius+radius)*(balls.get(i).radius+radius)){
        fail=true;
      }
    }
  }
  void display(){
    fill(255,0,0);
    noStroke();
    //circle(x,y,radius*2);
    ellipseMode(CENTER);
rectMode(CENTER);

//body
stroke(0);
fill(175);
rect(mouseX,mouseY,20,100);

//head
stroke(0);
fill(255);
ellipse(mouseX,mouseY-30,60,60);

//eyes
fill(mouseX,0,mouseY);
ellipse(mouseX-19,mouseY-30,16,32);
ellipse(mouseX+19,mouseY-30,16,32);

//legs
stroke(0);
line(mouseX-10,mouseY+50,pmouseX-10,pmouseY+60);
line(mouseX+10,mouseY+50,pmouseX+10,pmouseY+60);

  }
}
