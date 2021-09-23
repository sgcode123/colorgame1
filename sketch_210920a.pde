int mode;


final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;

int time;


int point;
int red;
int blue;
int yellow;
int green;
int orange;
int purple;
boolean match;
int highscore;
// look up while loop 

String[] words;
color[] colors;
int w, c;
boolean r;
int t;


void setup(){
  size(600,600);
  mode = INTRO;
  
  numberOFframes=11;
  gif= new PImage[numberOFframes];
  int i=0;
  while ( i < numberOFframes  ){
      gif[i]= loadImage("frame_" +i+ "_delay-0.05s.gif");
    i= i +1;
  }
 
}
void draw(){
  if(mode == INTRO){
    intro();
  }else if (mode == GAME){
    game();
  }else if(mode == PAUSE){
    pause();
  }else if(mode == GAMEOVER){
    gameover();
  }else {
    println("Error: Mode = " + mode);
}
}
