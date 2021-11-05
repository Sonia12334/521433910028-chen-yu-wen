设计说明：利用迭代的模式递推出会旋转/绽放的粉色花朵。
源代码：void setup() {
  size(1280, 720);
  //drawMPloygon(299);
}

void draw() {
  background(255);
   drawMPloygon(299);
  ////迭代生成带半径不停变化的圆
  //for (int i=0;i<299;i=i+45){
  //  int vertexCount = int(map(i,0,299,40,100));
  // //圆上点的个数随着半径不同而不同
  // mPolygon(width/2,height/2,vertexCount,i,i/10);
  //}
}

void drawMPloygon(int i){
  int vertexCount = int(map(i,0,299,40,100));
   //圆上点的个数随着半径不同而不同
   mPolygon(width/2,height/2,vertexCount,i,i/10);
        i-=45;
   if(i>0){
        drawMPloygon(i);
   }
}

void mPolygon(int x, int y,int numOfVertex, int br, int rOff){
   strokeWeight(2);
  stroke(255,113,113);
  fill(255,113,113,64);
  beginShape();
  for (int i=0;i<numOfVertex;i++){
    float pingPong = sin(radians(millis()/6.0+20*i));
    float r = br+map(pingPong,-1,1,-rOff,rOff);
    vertex(x+cos(radians(i*360/numOfVertex))*r,y+sin(radians(i*360/numOfVertex))*r);
  }
  endShape(CLOSE);
}
