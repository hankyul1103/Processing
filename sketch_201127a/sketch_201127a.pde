Love[] loves;

void setup() {
  size(1200, 1080);
  PShape loveimage = loadShape("oma.jpg");
  loves = new Love[10];
  for(int i =0; i<loves.length; i++){
    float x = random(-50, width-50);
    float y = map(i, 0, loves.length, -100, height-200);
    loves[i] = new Love(loveimage, x, y);
  }
}
  void draw() {
    background(204);
    for(int i =0; i<loves.length; i++){
      loves[i].update();
      loves[i].display();
    }    
  }
class Love{
  float xpos;
  float ypos;
  float angle;
  PShape lovegirl;
  float y;
Love(PShape shape, float tempX, float tempY){
   
   lovegirl = shape;
   xpos = tempX;
   ypos = tempY;
   angle = random(0,  TWO_PI);
   
 }
 
 void update(){
   angle += 0.05;
   y = sin(angle)*50;
 }
 void display(){
  shape(lovegirl, xpos, ypos);
 }
}
