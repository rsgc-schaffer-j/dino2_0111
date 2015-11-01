class Dino {
  float dinoy;  //dino hight
  float dinox; // dino x
  float dinos;  //dino speed
  float dinoa;  //dino acceloration
float dinor;  //tracks radius of dinosaur
float distance;
  Dino(float dinox_, float dinoy_, float dinos_, float dinoa_) {
    dinox=dinox_;
    dinos=dinos_;
    dinoa=dinoa_;
    dinoy=dinoy_;
    dinor=30;
  }
  void update(float g) {
    dinos = dinos-dinoa;
    dinoy = dinoy-dinos;
    dinoa = dinoa+g;

    tint(t1, t2, t3);
    image(dino, dinox, dinoy, dinor*2, dinor*2); 
    dinos = dinos-dinoa;
    textSize(12);
    fill(0);
    text("dinoY is " + dinoy, 150, 25);
    text("dinoS is " + dinos, 150, 50);
    text("dinoA is " + dinoa, 150, 75);
    
     if (dinoy > 140) { // bottom of the screen (200) minus the radius of (30)
      dinoy = 140;
      dinos = 0;
      dinoa = 0;
    }
  }
  float getY() {
    return dinoy;
  }

  // setA
  //
  // Purpose: a mutator method; lets the acceleration for the dinosaur be set
  //          from outside the class
  void setA(float newA_) {
    dinoa = newA_;
  }
   void setY(float newY_) {
    dinoy = newY_;
   }
   // isTouching
  //
  // Purpose: uses information about cactus position and determines if it is 
  //          touching the dino
  boolean isTouching(Cactus c) {

    // determine distance between the objects
    //        dino - cactus
    float a = dinoy - c.getY();
    float b = dinox - c.getX();
    distance = sqrt(a*a + b*b);

    // decide whether dino is touching this cactus
    //            dino radius   cactus radius
    if ( distance < (   dinor   +     c.getR() ) ) {
      return true;  // exit the method and say "yes" (is touching!) or "true"
    }
   
    // when dino is not touching, say "no" (not touching) or "false"
    return false;
  }
  
 }