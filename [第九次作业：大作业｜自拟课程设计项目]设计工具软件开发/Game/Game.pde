ArrayList<Ball> balls;
boolean fail=false;
String[] text;
int score=0;
color[] colors;
ME me;
import ddf.minim.*;
float ratio;

Minim minim;
AudioPlayer groove;

void setup(){
  text=new String[]{"comparing","greed","money","procrastination","deadline","cheat"};
  size(800,600);
  minim = new Minim(this);
  groove = minim.loadFile("sound.mp3", 1024);
  groove.loop();
  colors = new color[]{color(51,105,234),color(226,43,41),
  color(248,177,11),color(45,156,65)};
  balls = new ArrayList();
  me = new ME(600,500);
  balls.add(new Ball(100,100));
}
void draw(){
  background(255);
  ratio  = 1+5*groove.mix.level();
  if(fail==false){
    if(frameCount%60==0){
    score++;
    
  }
  if(frameCount%300==0){
    balls.get(0).duplicate();
  }
  textSize(20);
 
  text("Score: "+score,600,20);
      for(int i=0;i<balls.size();i++){
        balls.get(i).update();
        balls.get(i).display();
      }
      me.update();
      me.check();
      me.display();
  }else{
    textAlign(CENTER,CENTER);
    textSize(40);
    text("Score: "+score,width/2,height/2-100);
    pushMatrix();
    noFill();
    rectMode(CORNERS);
    rect(350,270,450,330);
    textSize(20);
    textAlign(CENTER,CENTER);
    groove.pause();
    text("Restart",width/2,height/2);
    popMatrix();
  }
  
}
void mouseClicked(){
  if(fail==true && mouseX>350 && mouseX<450 && mouseY>270 && mouseY<330){
    fail = false;
    score=0;
    groove.loop();
    balls.clear();
    balls.add(new Ball(100,100));
  }
}
