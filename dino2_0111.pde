Cactus c11;
Dino dino1;
PImage cacti;
PImage dino;
float g;  //gravity
int score;
int backGround;
int scorex;
int scorey;
int col;
int high;
int t1;
int t2;
int t3;
//coin
void setup() {
  size(800, 200);
  backGround=255;
  c11=new Cactus(900, 140, 0.2, 1, 0.1);
  dino1=new Dino(50, 140, 0, 0);
  g = 0.2;
  score = 0;
  scorex=700;
  scorey=30;
  col=0;
  t1=200;
  t2=200;
  t3=200;
  dino = loadImage("DINO copy.png");
  cacti = loadImage("cacti.png");
  noLoop();
}
void draw() {
  if (t1==255) {
    noLoop();
  }
  background(backGround);
  c11.update(g);
  fill(col);
  textSize(100);
  text("Dino Dash", 100, 100);
  textSize(15);
  text("Press R to Start", 300, 130);
  dino1.update(g);
  textSize(15);
  text("Score: "+score, scorex, scorey);
  if (dino1.isTouching(c11)) {
     if (high<score) {
      high=score; }
    fill(0);
    textSize(100);
    text("GAME OVER", 100, 100);
    fill(0);
    textSize(15);
    text("High Score: "+high, 350, 130);
    text("Score: "+score, 370, 150);
    text("Press R to restart", 350, 170);
    t1=255;
    t2=0;
    t3=0;
   noLoop();
    }
}
void keyPressed(){  
  if (key == ' '||key == 'w') {
    if (dino1.getY() == 140) {
    dino1.setA(-1.5);
  }
}
if (key == 'R'||key == 'r') {
  setup();
  loop();
  col=255;
}}