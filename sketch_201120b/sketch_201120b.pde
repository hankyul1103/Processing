oma line1 = new oma(20, 2.0 ,width/2);
oma line2 = new oma(height/2, 20.5, 10);
oma line3 = new oma(10, 1.5, width/2+150);

void setup()
  {
    size(800,800);
    frameRate(30);
}

void draw() {
  background(284);
  line1.update();
  line2.update();
  line3.update();
}
class oma {
  
  float ypos, speed, xpos;
  oma (float y, float s, float xpos) {
    ypos = random(0, height/2);
    speed = random(1, 20);
    xpos = random(width/2, width);
  }
  void update() {
    ypos += speed;
    if (ypos>height)  {
      ypos = 0;
    }
    ellipse(xpos, ypos, 50, 50);
  }
}
