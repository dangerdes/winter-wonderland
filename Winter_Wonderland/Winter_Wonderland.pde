Flakes[] flake = new Flakes[1000];
Trees[] tree = new Trees[5];

int total = flake.length;  //Variable for loop
int stand = tree.length;

void setup() {
  size(600, 400);
  rectMode(CENTER);
  for (int i = 0; i < flake.length; i++) {
    flake[i] = new Flakes(random(width), random(height), random(3));
  }
  tree[0] = new Trees(10, 50, .8);
  tree[1] = new Trees(190, 90, .6);
  tree[2] = new Trees(50, 40, .95);
  tree[3] = new Trees(100, 60, 1);
}

void draw() {
  background(15, 25, 60);
  noStroke();
  fill(255, 255, 150, 200); //Moon
  ellipse(530, 60, 80, 80);

  fill(255);  //Snow Covered Hills
  arc(220, 400, 500, 200, PI, TWO_PI);
  arc(525, 350, 500, 200, PI, TWO_PI);
  arc(25, 420, 500, 200, PI, TWO_PI);
  rect(500, 400, 200, 100);

  //MAKE SOME TREES!
  tree[0].display();
  tree[1].display();
  tree[2].display();
  tree[3].display();

  //LET IT SNOW!
  for (int i = 0; i < total; i++) {
    flake[i].display();
    flake[i].descend();
    flake[i].top();
  }
  pushMatrix();
  int x = 450;
  int y = 350;
  fill(200);
  rotate(QUARTER_PI);
  ellipse(x, y, 10, 20);
  ellipse(465, 370, 10, 20);
  popMatrix();
}