Ball [] b;
int ballNum = 50;

void setup() {
  size(600, 600);
  background(0);
  b = new Ball[ballNum];
  for (int i=0; i<ballNum; i++){
    b[i] = new Ball(i);
  }
}

void draw() {
  background(0);
  for (int i = 0; i<ballNum; i++) {
    b[i].update();
    b[i].display();
  }
}


class Ball {

  float x, y;
  float speedX, speedY;
  boolean type;

  Ball(int _i) {
    x = width/2;
    y = height/2;
    speedX = random(1, 3);
    speedY = random(2, 4);
    if (_i%2 == 0) {
      type = true;
    } else {
      type = false;
    }
  }

  void update() {
    x = x+speedX;
    y = y+speedY;

    if (x > width-10) {
      x = width-10;
      speedX = speedX*-1;
    }
    if (x < 10) {
      x = 10;
      speedX = speedX*-1;
    }
    if (y > height-10) {
      y = height-10;
      speedY = speedY*-1;
    }
    if (y < 10) {
      y = 10;
      speedY = speedY*-1;
    }
  }

  void display() {
    if (type== true) {
      noStroke();
      fill(255);
    } else {
      stroke(255);
      noFill();
    }
    ellipse(x, y, 20, 20);
  }
}
