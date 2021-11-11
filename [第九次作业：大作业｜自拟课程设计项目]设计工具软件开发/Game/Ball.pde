class Ball{
  float x;
    float y;
    float vX;
    float vY;
    float radius;
    float r;
    String t;
    color c;
  Ball(float _x, float _y){
  x=_x;
    y=_y;
    vX= random(-5,5);
    vY = random(-5,5);
    r=random(5,30);
    t =text[int(random(text.length))];
    c=colors[int(random(colors.length))];
    radius = r*ratio;
  }
  void update(){
    x+=vX;
    y+=vY;
    radius = r*ratio;
    if(x<radius||x>width-radius){
      vX*=-1;
    }
    if(y<radius || y>height-radius){
      vY*=-1;
    }
  }
  
  void duplicate(){
    Ball b = new Ball(x,y);
    balls.add(b);
  }
  
  void display(){
    fill(c);
    noStroke();
    circle(x,y,radius*2);
    fill(0);
    textAlign(CENTER,CENTER);
    textSize(20);
    text(t,x,y);
  }
  
}
