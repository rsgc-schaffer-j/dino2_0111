//cactus
Cactus c11;
Dino dino1;
float a5;
float b1;
float c1;
float line1;
float z1;
PImage cacti;
//dino
PImage dino;
int dinob;
float dinox1;
float dinoy1;
//main
float g;  //gravity
int score;
int backGround;
int scorex;
int scorey;
int scorec;
int mouseClicked;
int col;
int high;
int t1;
int t2;
int t3;
//coin
void setup() {
  size(800, 200);
  backGround=255;
  c11=new Cactus(900, 140, 0.2, 1,0.1);
dino1=new Dino(50, 140, 0, 0);




  g = 0.00;
  score = 0;
  scorex=700;
  scorey=30;
  scorec=0;
  z1=0.1;
  col=0;
  t1=200;
  t2=200;
  t3=200;

  dinob=0;


  dino = loadImage("DINO copy.png");
  cacti = loadImage("cacti.png");
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
  text("Click to start", 300, 130);
  dino1.update(g);
  //cactus and dino
  fill(255, 255, 60);
  //score
  fill(scorec);
  textSize(15);
  text("Score: "+score, scorex, scorey);



  //crazy math stuff



  //line lengh


  //c1=sq(a5)+sq(b1);
  //line1=sqrt(c1);

  // speed







    g = 0.00;
  }
  
  //if (line1<30) {
  //  if (high<score) {
  //    high=score;
  //  }
    //fill(0);
    //textSize(100);
    //text("GAME OVER", 100, 100);
    //fill(0);
    //textSize(15);
    //text("High Score: "+high, 350, 130);
    //text("Score: "+score, 370, 150);
    //text("Press R to restart", 350, 170);
    //scorec=255;
    //t1=255;
    //t2=0;
    //t3=0;

//}
void mouseClicked() {
  mouseClicked++;
  if (mouseClicked == 1)
  {






    g = 0.00;
    score = 0;
    scorex=700;
    scorey=30;
    scorec=0;
    z1=0.1;
    col=255;
    t1=200;
    t2=200;
    t3=200;


    loop();
  } else if (mouseClicked>1)
  {




    g = 0.00;
    score = 0;
    scorex=700;
    scorey=30;
    scorec=0;
    z1=0.1;

    col=255;
    t1=200;
    t2=200;
    t3=200;

    loop();
  }
}

void keyReleased() {
  if (key=='a') {
    dinob=0;
  }
  if (key=='d') {
    dinob=0;
  }
}
void keyPressed() {
  if (keyPressed) {
    if (key == ' '||key == 'w') {


        g = 0.25;
      }
    }
  }