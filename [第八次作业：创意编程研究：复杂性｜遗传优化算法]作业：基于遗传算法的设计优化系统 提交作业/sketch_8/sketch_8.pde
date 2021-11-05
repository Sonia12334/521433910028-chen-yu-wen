float angle;
int x,y;
void setup(){
  size(800,500);
  background(180);
  x=0;
  y=height/2;
  
}
void draw(){
    fill(0,10);
    rect(0,0,width,height);
    drawFish(x,y);
    x+=3;
    angle+=0.05;
    
}

void drawFish(int posX,int posY){
  pushMatrix();
  translate(posX,posY);
  rotate(angle);
  //fill(random(255),random(255),random(255));
  fill(0,47,147);
    ellipse(0,0,30,20);
    popMatrix();
    posX+=150;
  if(posX<width){
    drawFish(posX,posY-25);
    drawFish(posX,posY+25);
  }
}
