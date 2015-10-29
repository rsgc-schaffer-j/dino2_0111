class Dino {
 float dinoy;  //dino hight
float dinox; // dino x
float dinos;  //dino speed
float dinoa;  //dino acceloration

  Dino(float dinox_, float dinoy_, float dinos_, float dinoa_) {
    dinox=dinox_;
    dinos=dinos;
    dinoa=dinoa_;
    dinoy=dinoy_;
  }
  void update(float g) {
    tint(t1, t2, t3);
  image(dino, dinox, dinoy, 60, 60); 
    dinos = dinos-dinoa;
     textSize(12);
    fill(0);
    text("dinoY is " + dinoy, 150, 25);
    text("dinoS is " + dinos, 150, 50);
    text("dinoA is " + dinoa, 150, 75);
}}