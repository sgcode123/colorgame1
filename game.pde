void game() {

  delay(0);


  red = #E81010;
  blue = #1093E8;
  yellow = #E4E810;
  green = #45E810;
  orange = #E8A410;
  purple = #CA10E8;

  background(0);
  fill(#FFFCFF);
  rect(0, 0, 300, 600);


  textSize(75);
  words = new String[6];
  colors = new color[6];

  words[0]="red";
  colors[0]= red ;
  words[1]="blue";
  colors[1]= blue ;
  words[2]="yellow";
  colors[2]= yellow ;
  words[3]="green";
  colors[3]= green ;
  words[4]="orange";
  colors[4]= orange ;
  words[5]="purple";
  colors[5]= purple ;


  //gets faster as you gain points


 
  // w=c half the time 
if(t < 6){
r=false;
}
if(t > 6){
 r= true;
}

  if (w == c) {
    match=true;
  } else {
    match=false;
  }


  print(match);

  textSize(75);


  fill(colors[c]);
  text(words[w], 180, 400);
textSize(100);
text(point,100,300);
 fill(255);
rect(430,320,120,25);
 fill(red);
rect(430,320,time/2.5,25);
time = time +1;
if(time == 300){
   mode = GAMEOVER;
}
  textSize(100);
text(time/60+"/5",400,300);
fill(255);




  //ect(180,300,270,100);
  textSize(75);

  
  fill(green);
  rect(80, 450, 100, 100);
  fill(red);
  rect(420, 450, 100, 100);
  rect (10,0,50,50);
  fill(#A71E1E);
  rect (20,0,10,50);
  rect (40,0,10,50);
}

void gameClicks() {
  if (mouseX > 80 && mouseX< 180 && mouseY> 450 && mouseY< 550 && match ==true) {
    point= point+1;
 time = 0;
  } 
    if (mouseX > 80 && mouseX< 180 && mouseY> 450 && mouseY< 550 && match ==false) {
 
  mode = GAMEOVER;
  } 
  if (mouseX > 420 && mouseX< 520 && mouseY> 450 && mouseY< 550 && match==false) {
    point = point+1;
   time = 0;
  }
  if (mouseX > 420 && mouseX< 520 && mouseY> 450 && mouseY< 550 && match==true) {

    mode = GAMEOVER;
  }
     if (mouseX > 10 && mouseX< 60 && mouseY> 0 && mouseY< 50 && match==true) {
 
    mode = PAUSE;
    fill(green);
    rect (10,0,50,50);
    triangle (12,12,12,50,50,25);
    time = 0;
  }
   
  
     t = int(random(0,12));
   w = int(random(0, 6));
  c = int(random(0, 6));

 if( r == true ){
    c=w;
 }
 
    
  }
