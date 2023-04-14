float progressX1, progressY1, progressWidth1, progressHeight1,
progressX2, progressY2, progressWidth2, progressHeight2;
float centerX , centerY;


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





}
