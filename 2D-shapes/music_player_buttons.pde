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
//
void drawMusicButtons() {
drawPauseButton();
drawStopButton();
drawSkipForwardButton();
drawSkipBackwardButton();
drawSkipForwardButton2();
//drawSkipBackwardButton2();
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
  //triangle(skipF2triX1, skipF2triY1, skipF2triX2, skipF2triY2, skipF2triX3, skipF2triY3);
  fill(resetcolorDayMode);
  noStroke();
}
//
void drawSkipBackwardButton2() {
  fill(#000000);
  triangle(skipB2triX1, skipB2triY1, skipB2triX2, skipB2triY2, skipB2triX3, skipB2triY3);
  //triangle(skipB2triX1, skipB2triY1, skipB2triX2, skipB2triY2, skipB2triX3, skipB2triY3);
  fill(resetcolorDayMode);
  noStroke();
}
//
//End Music Player Buttons
