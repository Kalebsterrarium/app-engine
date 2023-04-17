float progressX1, progressY1, progressWidth1, progressHeight1,
progressX2, progressY2, progressWidth2, progressHeight2;
float centerX , centerY;
PFont font;
String timerM,timerS;
int minutes, seconds;
int H , K;
//
void pretextdraw () {
fill(#000000);
textAlign(CENTER,CENTER);
font = createFont("Calibri",20);
textFont(font,displayHeight);
 minutes = int(float(songs[currentSong].position()) * 1/60000); 
 seconds =   (int(float(songs[currentSong].position()) * 1/1000)) - (minutes*60) ;


 timerM= Integer.toString(minutes);
 timerS= Integer.toString(seconds);
 
}//end pretextdraw
//
void textdraw() {
pretextdraw();
textSize(40); ;
text(timerM + ":" + timerS,progressX1, progressY1, progressWidth1, progressHeight1);
fill(#FFFFFF);

}// end textdraw
//
void progresssetup() {






}

void progressdraw() {
  centerX= displayWidth/2;
  centerY= displayHeight/2;
  progressWidth1=centerX*1/2;
progressHeight1=centerY*1/8;
  progressX1=centerX - (progressWidth1/2);
progressY1=centerY - progressHeight1/2;

progressX2=progressX1;
progressY2=progressY1;
progressWidth2=progressWidth1 * ( (int(songs[currentSong].position())/float(songs[currentSong].length())));
progressHeight2=progressHeight1;

  println((int(songs[currentSong].position())/float(songs[currentSong].length())));
  
  
  
  
fill(#FFFFFF);
stroke(#FFF000);
strokeWeight(3);
rect(progressX1, progressY1, progressWidth1, progressHeight1);
noStroke();
fill(#ffb6c1);

rect(progressX2, progressY2, progressWidth2, progressHeight2);
textdraw();




}
