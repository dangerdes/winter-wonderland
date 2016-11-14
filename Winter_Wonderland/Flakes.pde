class Flakes {  
  float x;
  float y;
  float yspeed;
  float diameter;
  
  Flakes(float tempX, float tempY, float tempD) {
    x = tempX;
    y = tempY;
    diameter = tempD;
    yspeed = random(0.5,2.5);
  }
  
  void display() {
    noStroke();
    fill(255, random(80, 255));
    ellipse(x, y, diameter, diameter);   
  }
  
  void descend() {
    y = y + yspeed;
    x = x + random(-2,2);
  }
  
  void top() {
   if (y > height+diameter/2) {
     y = 0;
   }
  }
}