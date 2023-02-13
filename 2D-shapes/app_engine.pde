//Global Variables

//
void setup() {
  float centerX= displayWidth*1/2;
  float centerY= (displayHeight/2)-(pauseScaleHeight/2);
  PauseScale=1.0/9.0;
  pauseScaleWidth= (1.0/27.0) * PauseScale;// used to change x-size
  pauseScaleHeight= (3.0/10.0) * PauseScale;//used to change y-axis
  println(stopY);
  fullScreen();
  //Population, visual data
  pauseWidth= displayWidth*pauseScaleWidth; 
   pauseX1= centerX -  pauseWidth - pauseWidth*1/2;
   pauseY1= centerY;
   pauseX2= centerX + pauseWidth*1/2;
   pauseY2= pauseY1;
   pauseHeight= displayHeight*pauseScaleHeight;
   //
   stopX = pauseX1 - (displayWidth * 14/30);
   stopY = (displayHeight*1.0/2.0)-(stopextent*1.0/2.0);
   stopextent = 150.0;
}//End setup
//
void draw() {
  drawMusicButtons();
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)
