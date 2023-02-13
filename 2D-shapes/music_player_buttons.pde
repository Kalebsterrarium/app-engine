//Global variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float PauseScale;
float stopX,stopY,stopextent;
color resetcolorDayMode= #FFFFFF; //Not Night Mode Friendly
 
//
void drawMusicButtons() {
drawPauseButton();
drawStopButton();
}//End drawMusicButtons
//
void drawPauseButton() {
  rect(pauseX1, pauseY1, pauseWidth, pauseHeight);
  rect(pauseX2, pauseY2, pauseWidth, pauseHeight);
}//End drawPauseButton
//
void drawStopButton() {
  fill(#000000);
  square(stopX,stopY,stopextent);//Square
  fill(resetcolorDayMode);
}//End drawStopButton
//
//End Music Player Buttons
