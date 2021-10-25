String[] text;
ArrayList letters;
int count=0;
PVector preMouse;
float preS;
void setup() {
  text=loadStrings("word.txt");
  colorMode(HSB);
  size(600, 600);
  letters= new ArrayList();
  for (int i=0; i<text.length; i++) {
    for (int j=0; j<text[i].length(); j++) {
      letters.add(text[i].charAt(j));
    }
  }
}

void draw() {
  if (mousePressed==true) {
    PVector mouse = new PVector(mouseX, mouseY);
    float dist = mouse.dist(preMouse);
    float s=0;
    if (dist>preS/5) {
      s = map(dist, 0, 100, 1, 120);
      if (s<0) {
        s=1;
      }
      textSize(s);
      char c = (char) letters.get(count%letters.size());
      float hue = map((int)c, 65, 122, 0, 255);
      fill(hue, 255, 255);
      text(c, mouseX, mouseY);
      count++;
      preS=s;
    }
  }
  preMouse=new PVector(mouseX, mouseY);
}
