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
//
void drawMusicButtons() {
drawPauseButton();
drawStopButton();
drawSkipForwardButton();
drawSkipBackwardButton();
drawSkipForwardButton2();
drawSkipBackwardButton2();
drawPlayButton();
drawMuteButton();
drawLoopButton();
}//End drawMusicButtons
//
void drawPauseButton() {
  fill(#000000);
  rect(pauseX1, pauseY1, pauseWidth, pauseHeight);
 rect(pauseX2, pauseY2, pauseWidth, pauseHeight);
  fill(resetcolorDayMode);
}//End drawPauseButton
//
void drawStopButton() {
  noStroke();
  fill(#FF0000);
  rect(stopX,stopY,stopWidth, stopHeight, 8);//Square
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
  fill(#000000);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  fill(resetcolorDayMode);
  noStroke();
}
//
void drawMuteButton() {
  fill(#000000);
  stroke(1);
  strokeCap(SQUARE);
  strokeWeight(6);
  line(muteX5, muteY5, muteX6, muteY6);
  line(muteX7, muteY7, muteX8, muteY8);
  noStroke();
  rect( muteX1, muteY1,muteWidth, muteHeight );
  triangle(muteX2, muteY2, muteX3, muteY3, muteX4, muteY4);
  fill(resetcolorDayMode);
  
}
//
void drawLoopButton() {
  
  stroke(1);
  strokeWeight(12*(2*(PauseScale)));
  fill(#FFF000);
  rect(loopX,loopY,loopWidth,loopHeight);
  noStroke();
  stroke(#FFF000);
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
//End Music Player Buttons
