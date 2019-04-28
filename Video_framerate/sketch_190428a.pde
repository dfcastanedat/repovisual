  
import processing.video.*;
Movie myMovie;

void setup() {
  size(1280, 720);
  myMovie = new Movie(this, "to aru.mov");
  myMovie.loop();
 // Se establecen los framerate no superiores al valor dado
 // frameRate(30);
}

void draw() {
  tint(255, 20);
  // Este es para verificar con el movimiento del video siguiendo al mouse
  image(myMovie, mouseX, mouseY);
  // Este es dejando el video estatico en un unico punto
  //image(myMovie,0,0);
  println(frameRate);
}
  
// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}
