PImage[] gif;
int numberOFframes;
int f;
void intro() {

point = 0;


  delay(0);




  fill(0);
  rect(0, 0, 600, 600);
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if ( f == numberOFframes) f=0;

  fill(255);
  rect(180, 300, 270, 100);
  fill(0);
  textSize(50);
  text("start", 260, 350);
  delay(0);
}


void introClicks() {
  if (mouseX > 180 && mouseX< 450 && mouseY> 300 && mouseY< 400)
    mode = GAME;
    time=0;
}
