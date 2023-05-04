//Global variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float PauseScale;
float stopX,stopY,stopWidth, stopHeight;
color resetcolorDayMode= #FFFFFF; //Not Night Mode Friendly
 float  skipFtriX1, skipFtriY1, skipFtriX2, skipFtriY2, skipFtriX3, skipFtriY3, skipFWidth,skipFHeight,skipFX,skipFY;
 float skipBtriX1, skipBtriY1, skipBtriX2, skipBtriY2, skipBtriX3, skipBtriY3, skipBWidth,skipBHeight,skipBX,skipBY;
 float  skipF2triX1, skipF2triY1, skipF2triX2, skipF2triY2, skipF2triX3, skipF2triY3;
 float skipB2triX1, skipB2triY1, skipB2triX2, skipB2triY2, skipB2triX3, skipB2triY3;
 float  skipF2triX4, skipF2triY4, skipF2triX5, skipF2triY5, skipF2triX6, skipF2triY6;
 float skipB2triX4, skipB2triY4, skipB2triX5, skipB2triY5, skipB2triX6, skipB2triY6;
 float playX1, playY1, playX2, playY2, playX3 ,playY3;
 float muteWidth, muteHeight, muteX1, muteY1, muteX2, muteY2, muteX3, muteY3, muteX4, muteY4, muteX5, muteY5, muteX6, muteY6, muteX7, muteY7, muteX8, muteY8;
 float loopX,loopY,loopWidth,loopHeight, looparrowX1,looparrowY1,looparrowX2,looparrowY2,looparrowX3,looparrowY3, loopFixX1, loopFixY1,LoopFixX2,LoopFixY2,LoopFixX3,LoopFixY3;
 float shuffleRectX1,shuffleRectY1,shuffleRectWidth1,shuffleRectHeight1,shuffleRectX2,shuffleRectY2,shuffleRectWidth2,shuffleRectHeight2,
 shufflequadX1,shufflequadY1,shufflquadX2,shufflequadY2,shufflequadX3,shufflequadY3,shufflequadX4,shufflequadY4,
 shufflequadX5,shufflequadY5,shufflquadX6,shufflequadY6,shufflequadX7,shufflequadY7,shufflequadX8,shufflequadY8,
 shuffleRectX5,shuffleRectY5,shuffleRectWidth5,shuffleRectHeight5,shuffleRectX6,shuffleRectY6,shuffleRectWidth6,shuffleRectHeight6,
 shuffletriX1,shuffletriY1,shuffletriX2,shuffletriY2, shuffletriX3,shuffletriY3,
 shuffletriX4,shuffletriY4,shuffletriX5,shuffletriY5, shuffletriX6,shuffletriY6;
 float muteArcX1 , muteArcY1, muteArcX2 , muteArcY2, muteArcX3 , muteArcY3, muteArcX4 , muteArcY4, muteArcX5 , muteArcY5, muteArcX6 , muteArcY6;
 color mutefill,playpausefill,nextsongpausefill,previoussongpausefill,stopFill;
//
void drawMusicButtons() {
  if (songs[currentSong].isPlaying() ) {
  
  drawPauseButton();
} else {
drawPlayButton();
}

drawStopButton();
drawSkipForwardButton();
drawSkipBackwardButton();
drawSkipForwardButton2();
drawSkipBackwardButton2();

drawMuteButton();
drawLoopButton();
drawshufflebutton();
}//End drawMusicButtons
//
void drawPauseButton() {
  noStroke();
  fill(playpausefill);
  rect(pauseX1, pauseY1, pauseWidth, pauseHeight);
 rect(pauseX2, pauseY2, pauseWidth, pauseHeight);
  fill(resetcolorDayMode);
}//End drawPauseButton
//
void drawStopButton() {
  noStroke();
  fill(stopFill);
  rect(stopX,stopY,stopWidth, stopHeight);//Square
  fill(resetcolorDayMode);
}//End drawStopButton
//
void drawSkipForwardButton() {
  fill(#000000);
  triangle(skipFtriX1, skipFtriY1, skipFtriX2, skipFtriY2, skipFtriX3, skipFtriY3);
  rect( skipFX,skipFY,skipFWidth,skipFHeight);
  fill(resetcolorDayMode);
  noStroke();
}
//
void drawSkipBackwardButton() {
  fill(#000000);
  triangle(skipBtriX1, skipBtriY1, skipBtriX2, skipBtriY2, skipBtriX3, skipBtriY3);
  rect( skipBX,skipBY,skipBWidth,skipBHeight);
  fill(resetcolorDayMode);
  noStroke();
}
//
void drawSkipForwardButton2() {
  fill(#000000);
  triangle(skipF2triX1, skipF2triY1, skipF2triX2, skipF2triY2, skipF2triX3, skipF2triY3);
  triangle(skipF2triX4, skipF2triY4, skipF2triX5, skipF2triY5, skipF2triX6, skipF2triY6);
  fill(resetcolorDayMode);
  noStroke();
}
//
void drawSkipBackwardButton2() {
  fill(#000000);
  triangle(skipB2triX1, skipB2triY1, skipB2triX2, skipB2triY2, skipB2triX3, skipB2triY3);
  triangle(skipB2triX4, skipB2triY4, skipB2triX5, skipB2triY5, skipB2triX6, skipB2triY6);
  fill(resetcolorDayMode);
  noStroke();
}
//
void drawPlayButton() {
  fill(playpausefill);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  fill(resetcolorDayMode);
  noStroke();
}
//
void drawMuteButton() {
  fill(mutefill);
  stroke(1);
  strokeCap(SQUARE);
  strokeWeight(6);
  
  noStroke();
  rect( muteX1, muteY1,muteWidth, muteHeight );
  triangle(muteX2, muteY2, muteX3, muteY3, muteX4, muteY4);

  
  
   fill(resetcolorDayMode);
   if ( functionconditional == true) {
     fill(mutefill);
  stroke(mutefill);
  strokeCap(SQUARE);
  strokeWeight(6);
   line(muteX5, muteY5, muteX6, muteY6);
  line(muteX7, muteY7, muteX8, muteY8);
   noStroke();
   } else {
     noFill();
     stroke(mutefill);
 strokeCap(SQUARE);
 strokeWeight(10);
     arc(muteArcX1 , muteArcY1, muteArcX2 , muteArcY2,(-1*PI/4),(PI/4));
  arc(muteArcX3 , muteArcY3, muteArcX4 , muteArcY4,(-1*PI/4),(PI/4));
  arc(muteArcX5 , muteArcY5, muteArcX6 , muteArcY6,(-1*PI/4),(PI/4));
   noStroke();
   }
   noFill();
}
//
void drawLoopButton() {
  
  stroke(1);
  strokeWeight(12*(2*(PauseScale)));
  fill(#ADD8E6);
  rect(loopX,loopY,loopWidth,loopHeight);
  noStroke();
  stroke(#ADD8E6);
  strokeWeight(3*(2*(PauseScale)));
  fill(#000000);
  triangle(looparrowX1,looparrowY1,looparrowX2,looparrowY2,looparrowX3,looparrowY3);
  stroke(#000000);
  fill(#000000);
  triangle(loopFixX1, loopFixY1,LoopFixX2,LoopFixY2,LoopFixX3,LoopFixY3);
  fill(resetcolorDayMode);
  noStroke();
}
//
void drawshufflebutton() {
  fill(#000000);
  strokeWeight(2);
  quad(shufflequadX1,shufflequadY1,shufflquadX2,shufflequadY2,shufflequadX3,shufflequadY3,shufflequadX4,shufflequadY4);
  stroke(#ADD8E6);
quad( shufflequadX5,shufflequadY5,shufflquadX6,shufflequadY6,shufflequadX7,shufflequadY7,shufflequadX8,shufflequadY8);
noStroke();
  stroke(#000000);
  strokeWeight(3);
rect(shuffleRectX1,shuffleRectY1,shuffleRectWidth1,shuffleRectHeight1);
rect(shuffleRectX2,shuffleRectY2,shuffleRectWidth2,shuffleRectHeight2);
rect(shuffleRectX5,shuffleRectY5,shuffleRectWidth5,shuffleRectHeight5);
rect(shuffleRectX6,shuffleRectY6,shuffleRectWidth6,shuffleRectHeight6);
noStroke();


triangle(shuffletriX1,shuffletriY1,shuffletriX2,shuffletriY2, shuffletriX3,shuffletriY3);
triangle(shuffletriX4,shuffletriY4,shuffletriX5,shuffletriY5, shuffletriX6,shuffletriY6);
noFill();



}






//
//End Music Player Buttons
