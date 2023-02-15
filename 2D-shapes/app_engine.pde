//Global Variables

//
void setup() {
  float centerX= displayWidth/2;
  float centerY= displayHeight/2;
  
  PauseScale=(1.0/5.0);
  pauseScaleWidth= (1/27) * PauseScale;// used to change x-size
  pauseScaleHeight= (3/10) * PauseScale;//used to change y-axis
  println(stopY);
  fullScreen();
  //Population, visual data
  pauseWidth= centerX * (1.0/27.0) * PauseScale; 
  pauseHeight= centerY* (3.0/10.0) * PauseScale;
   pauseX1= centerX -  pauseWidth - pauseWidth*1/2;
   pauseX2= centerX + pauseWidth*1/2;
   pauseY1= centerY -(pauseHeight/2);
   pauseY2= pauseY1;
   //
   stopHeight = pauseHeight;
   stopX = pauseX1 - (pauseX1*PauseScale*1/4) ;
   stopY = centerY -(stopHeight*1.0/2.0);
   stopWidth = stopHeight;
   //
   triX1 =stopX - ((stopX/4)*PauseScale);
   triY1 =(centerY+(pauseHeight/2));
   triX2 = triX1;
   triY2 =centerY-((pauseHeight/2)*PauseScale);
   triX3 =triX1 + ((2*stopWidth)/3)*PauseScale);
   triY3 =(centerY)*PauseScale;
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
