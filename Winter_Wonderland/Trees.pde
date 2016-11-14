class Trees {
  float x;
  float y;
  float treesize;

  Trees(float tempX, float tempY, float tempScale) {
    x = tempX;
    y = tempY;
    treesize = tempScale;
  }

  void display() {
    pushMatrix();
    translate(x, y);
    scale(treesize); 
    fill(62, 45, 45); 
    rect(50, 320, 15, 80);
    fill(26, 103, 21);
    noStroke();
    triangle(50, 200, -10, 280, 110, 280);
    triangle(50, 180, -10, 260, 110, 260);
    triangle(50, 150, -10, 230, 110, 230);
    popMatrix();
  }
}