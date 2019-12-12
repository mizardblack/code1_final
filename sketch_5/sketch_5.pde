// This sketch uses a loop to draw a group of 
// ellipses. It uses a single int to represent
// their x positions. Replace this float with an
// array of floats so that each ellipse can have 
// a unique x position, then increment the position
// if the mouse is inside the ellipse.

// create an array of values corresponding
// to each ellipse here:
int dim=20;
float[] xPos=new float[dim];
int x;

void setup() {
  size(600, 600);

  // give the array values  
  //x = 30;

  for (int i=0; i<dim; i++) {
    xPos[i]=30;
    //y[i]=map(j, 0, dim, 100, height-100);
  }

  noStroke();
}

void draw() {
  background(50);
  for (int i = 0; i < dim; i++) {
    float y = 30 + i * 60;

    // check to see if you should increment 
    // the value at each position in the array
    // and then draw at that position
    if (dist(mouseX, mouseY, xPos[i], y)<50) {
      xPos[i]+=2;
    }

    ellipse(xPos[i], y, 50, 50);
  }
}
