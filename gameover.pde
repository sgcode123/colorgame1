PFont  Hamberger;
void gameover(){
  background(#11B9D8);
  Hamberger = createFont("Hamberger-Bold",300);
  textFont(Hamberger);
  textSize(100);
  text("gameover",100,300);
  
  
  if (point < highscore){
  point = highscore;
}
 
   textSize(50);
text("your points ="+ point ,170,500);
text("highscore =" + point ,100,100);

}

void gameoverClicks() {
  mode = INTRO;
}
