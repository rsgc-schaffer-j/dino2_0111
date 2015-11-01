class Dino {
  float dinoy;  //dino hight
  float dinox; // dino x
  float dinos;  //dino speed
  float dinoa;  //dino acceloration

  Dino(float dinox_, float dinoy_, float dinos_, float dinoa_) {
    dinox=dinox_;
    dinos=dinos_;
    dinoa=dinoa_;
    dinoy=dinoy_;
  }
  void update(float g) {
    dinos = dinos-dinoa;
    dinoy = dinoy-dinos;
    dinoa = dinoa+g;

    tint(t1, t2, t3);
    image(dino, dinox, dinoy, 60, 60); 
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
 }