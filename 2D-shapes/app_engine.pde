//Global Variables

//
void setup() {
  float centerX= displayWidth*1/2;
  float centerY= (displayHeight/2);
  PauseScale=1.0/9.0;
  pauseScaleWidth= (1.0/27.0) * PauseScale;// used to change x-size
  pauseScaleHeight= (3.0/10.0) * PauseScale;//used to change y-axis
  println(stopY);
  fullScreen();
  //Population, visual data
  pauseWidth= displayWidth*pauseScaleWidth; 
   pauseX1= centerX -  pauseWidth - pauseWidth*1/2;
   pauseX2= centerX + pauseWidth*1/2;
   pauseHeight= displayHeight*pauseScaleHeight;
   pauseY1= centerY -(pauseHeight/2);
   pauseY2= pauseY1;
   //
   stopHeight = (displayHeight*3/10)*PauseScale;
   stopX = pauseX1 - ((displayWidth*1/4)*PauseScale) ;
   stopY = (displayHeight*1.0/2.0)-(stopHeight*1.0/2.0);
   stopWidth = stopHeight;
   //
   triX1 =displayWidth*21/60;
   triY1 =displayHeight*1/4;
   triX2 =displayWidth*7/30;
   triY2 =displayHeight*1/2;
   triX3 =displayWidth* 14/30;
   triY3 =displayHeight* 1/2;
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
