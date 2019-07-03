  
import processing.video.*;
Movie myMovie;
PImage label;
PShape can;
float angle;

PShader sharpenShader;

float[][] focus = { { 0, -1, 0 },
                     { -1,  5, -1 },
                     { 0, -1, 0 } };
PFont f;                   
                     
void setup() {
  size(640, 520, P3D);
  label = new Movie(this, "video.mov");
  label.read(); //  grab the first frame     
  label.loop();  
  can = createCan(100, 200, 32, label);
  sharpenShader = loadShader("sharpen.glsl");
  f = createFont("Arial",16,true);
}

void draw() {
  int value =int(map(mouseX,0,640,0,7));
  textFont(f,18);                  
  fill(0);
  background(255);
}

void movieEvent(Movie m) {
  m.read();
}
PShape createCan(float r, float h, int detail, PImage tex) {
  textureMode(NORMAL);
  PShape sh = createShape();
  sh.beginShape(QUAD_STRIP);
  sh.noStroke();
  sh.texture(tex);
  for (int i = 0; i <= detail; i++) {
    float angle = TWO_PI / detail;
    float x = sin(i * angle);
    float z = cos(i * angle);
    float u = float(i) / detail;
    sh.normal(x, 0, z);
    sh.vertex(x * r, -h/2, z * r, u, 0);
    sh.vertex(x * r, +h/2, z * r, u, 1);    
  }
  sh.endShape(); 
  return sh;
}
