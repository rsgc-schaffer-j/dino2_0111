class Cactus {
  float x1;  //x of cactus
  float s1;  //speed of cactus
  float a1;  //acceloration of cactus
  float y1;
  float z1;

  Cactus(float x_, float y_, float a_, float s_, float z_) {
    x1=x_;
    s1=s_;
    a1=a_;
    y1=y_;
    z1=z_;
  }
  void update(float g) {
    tint(200);
    image(cacti, x1, y1, 70, 50);
     s1 = s1+a1; 
      x1 = x1-s1;
        if (x1 < -50) {
    x1=900;
    s1=2;
    score=score+10;
    a1=z1;
    z1=z1*1.05 ;
        }
  }
  }