// this program draws a rectangle to the center of the screen.
// as shown in the gif, use map() and other means to use the mouse
// position to change attributes of the rectangle. 

// when mouseY is at height, the rectangle should be the width 
// and height of the screen.

// when mouseX is at 0, the rect should be red. when mouseX
// is at width, it should be blue.

// moving the mouse from the left to the right side of the screen
// should result in the rectangle doing one full rotation (360 degrees).


void setup() {
  size(600, 600);
  rectMode(CENTER);
  colorMode(HSB);
}

void draw() {
  background(255);
  
  pushMatrix();
  translate(width/2, height/2);
  // add a mapped rotation here
  float ang=map(mouseX,0,width,0,360);
  float rad=ang*PI/180;
  rotate(PI/rad);
  // map the value of s here
  float s = mouseY;
  // map the color here (hint try using either lerpColor or HSB color mode)
  color c = color(map(mouseX,0,width,0,150),255,255);
  
  fill(c);
  rect(0, 0, s, s);
  popMatrix();
}
