// This program is a slightly more complicated bouncing ball. 
// Turn the "beam" into a class and use an ArrayList to store
// instances of them. Create new beams every frame based on
// a input method of your choice (key press, mouse click, etc). 

ArrayList<Beam> b = new ArrayList<Beam>();

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  for (int i = 0; i < b.size(); i++) {
    Beam beam = b.get(i);
    beam.update();
    beam.display();
  }
}

void mousePressed() {
  b.add(new Beam());
}

class Beam {
  PVector[] pos = new PVector[15];
  PVector vel;
  color col;

  Beam() {
    col = color(random(255), random(255), random(255));
    for (int i = 0; i < pos.length; i++) {
      pos[i] = new PVector(width/2, height/2);
    }

    float speed = random(1, 10);
    float angle = random(TWO_PI);
    vel = new PVector(cos(angle) * speed, sin(angle) * speed);

    pos[0].add(vel);
  }

  void display() {
    noFill();
    stroke(col);
    strokeWeight(5);
    beginShape();
    for (PVector p : pos) {
      vertex(p.x, p.y);
    }
    endShape();
  }

  void update() {
    for (int i = pos.length - 1; i > 0; i--) {
      pos[i] = pos[i - 1].copy();
    }

    if (pos[0].x > width || pos[0].x < 0) {
      vel.x *= -1;
    }

    if (pos[0].y > height || pos[0].y < 0) {
      vel.y *= -1;
    }

    pos[0].add(vel);
  }
}
