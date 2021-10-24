color c=color(0);
int type=0;
float x, y;
float px, py;
boolean start=false;
void setup() {
  size(800, 800);
  background(255);
  colorMode(HSB);
}

void draw() {
  x=mouseX;
  y=mouseY;
  if (start&&mousePressed) {
    pen();
  }
  px=x;
  py=y;
  noStroke();
  fill(100, 255, 255);
  rect(100, 100, 100, 30);
  fill(50, 255, 200);
  rect(100, 200, 100, 30);
}

void pen() {
  strokeWeight(10);
  if (type==1) {
    c=color(100, 255, 255, map(x+y-px-py, 0, 200, 255, 0));
  }
  if (type==2) {
    c=color(map(x+y, 0, width+height, 0, 255), 255, 255);
  }

  stroke(c);
  for (int i=0; i<10; i++) {
    float a=map(i, 0, 9, px, x);
    float b=map(i, 0, 9, py, y);
    point(a, b);
  }
}

void mouseClicked() {

  if (mouseX>100 && mouseX<200 && mouseY>100 &&mouseY<130) {
    type=1;
    start=true;
  }
  if (mouseX>100 && mouseX<200 && mouseY>200 &&mouseY<230) {
    type=2;
    start=true;
  }
}
