//Global variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float PauseScale;
float stopX,stopY,stopWidth, stopHeight;
color resetcolorDayMode= #FFFFFF; //Not Night Mode Friendly
 float triX1, triY1, triX2, triY2, triX3, triY3;
//
void drawMusicButtons() {
drawPauseButton();
drawStopButton();
drawSkipForwardButton();
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
  stroke(1);
  strokeWeight(20);
  strokeJoin(ROUND);
  triangle(triX1, triY1, triX2, triY2, triX3, triY3);
  fill(resetcolorDayMode);
  noStroke();
}
//
//End Music Player Buttons
