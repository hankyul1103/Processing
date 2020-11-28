int num = 700;
Ball[] balls = new Ball[num];

void setup()
{
   size(800, 800);
   background(0);
   for(int i = 0; i<balls. length; i++){
     balls[i] = new Ball();
   }
}
void draw(){
  background(0,0,10,70);
  for(int i= 0; i< balls. length; i++){
    balls[i].setup2();
    balls[i].display();
  }
}

class Ball {
  float x, y, r, g;
  float speedx, speedy;
  color c, c1, c2, c3, c4;
  
  Ball () {
    x = random(width);
    y = random(height/2);
    r = 3;
    g = random(0.01,0.05);
    speedx = random(-1,2);
    speedy = 0;
    c = color(random(255), random(255), random(255), 255);
    c1 = color(random(255), random(255), random(255), 255);
    c2 = color(random(255), random(255), random(255), 255);
    c3 = color(random(255), random(255), random(255), 255);
    c4 = color(random(255), random(255), random(255), 70);
  }
  
  void setup2() {
   x = x+ speedx;
   y = y+ speedy;
   speedy = speedy +g;
   if(x > width -r){
     x = width -r;
       x = width -r;
       speedx*=-1;
       
  }else if(x<r){
    x =r;
    speedx *= -1;
  }else if( y>height -r ){
    y = height -r;
    speedy *= -1;
    
  }else if (y<r){
    y =r;
    speedy *= -1;
  }
   }
   void display(){
     noStroke();
     fill(c);
     ellipse(x,y,40,40);
     fill(c1);
     ellipse(x,y,30,30);
     fill(c2);
     ellipse(x,y,20,20);
     fill(c3);
     ellipse(x,y,5,5);
     fill(c4);
   }
}
