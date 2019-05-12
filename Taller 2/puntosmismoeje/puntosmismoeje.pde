int N;
int FN;
float A;
boolean devoile=false;

void setup() {
  size(300, 300);
  frameRate(50);
  N=16;
  FN=0;
  A=1;
  noStroke();
  colorMode(HSB, 360, 255, 255);
}

void draw() {
  background(0, 0, 0);
  pushMatrix();
  translate(width/2, height/2);
  if (devoile) {
    devoilement();
  }
  for (int i=0; i<N; i++) {
    rotate(TWO_PI/N);
    //sin colores
    fill(255);
    //colores para notar los ejes
    //fill(360*i/N, 255, 255);
    ellipse(50*(1.1+A*cos(.075*FN+PI*6*i/N)), 0, 8, 8);
  }
  popMatrix();
  FN++;
}

void devoilement() {
  stroke(100);
  for (int i=0; i<N; i++) {
    rotate(TWO_PI/N);  
    line(150, 0, 5, 0);
  }
}

void mousePressed() {
  devoile=!devoile;
}

void keyPressed() {
  if (key =='s' || key == 'S') {
    saveFrame();
  }
}
