// this code draws an system where one ellipse rotates around another.
// replace this drawing code with a function that can be used to 
// draw the system repeatedly, like "drawSystem()". It should
// take arguments that allow parameters of the system to be customized,
// like the distance between each ellipse, the speed of rotation, and 
// the size of the ellipses.
// use your function to draw the system multiple times in the sketch
// as seen in the example gif.

void setup() {
  size(600, 600);
}

void draw() {
  background(0);

  drawSystem(width/3, height/3, 150, 0.05, 100);
drawSystem(mouseX, mouseY, 150, 0.05, 100);
  drawSystem(500, 500, 150, 0.05, 100);
}

void drawSystem(float x, float y, float dist, float speed, float size) {
  pushMatrix();
  translate(x, y);
  rotate(frameCount * speed);
  ellipse(0, 0, size, size);

  pushMatrix();
  translate(dist, 0);
  ellipse(0, 0, 50, 50);
  popMatrix();
  popMatrix();
}

//void mousePressed(){
//  drawSystem(mouseX, mouseY, 150, 0.05, 100);
//}
