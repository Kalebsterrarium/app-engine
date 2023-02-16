//Global variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float PauseScale;
float stopX,stopY,stopWidth, stopHeight;
color resetcolorDayMode= #FFFFFF; //Not Night Mode Friendly
 float  skipFtriX1, skipFtriY1, skipFtriX2, skipFtriY2, skipFtriX3, skipFtriY3, skipFWidth,skipFHeight,skipFX,skipFY;
 float skipBtriX1, skipBtriY1, skipBtriX2, skipBtriY2, skipBtriX3, skipBtriY3, skipBWidth,skipBHeight,skipBX,skipBY;
//
void drawMusicButtons() {
drawPauseButton();
drawStopButton();
drawSkipForwardButton();
drawSkipBackwardButton();
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
//End Music Player Buttons
