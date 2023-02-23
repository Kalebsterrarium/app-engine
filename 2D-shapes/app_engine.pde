//Global Variables

//
void setup() {
  float centerX= displayWidth/2;
  float centerY= displayHeight/2;
  
  PauseScale=(1.0/2.0);
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
   stopWidth = stopHeight;
   stopX = centerX - (stopWidth/2);
   stopY = pauseY1 - (stopHeight+((3*pauseWidth)/2));
   //
   skipFtriX1 =pauseX2 + ((pauseWidth*5)/2);
   skipFtriY1 =(centerY+(pauseHeight/2));
   skipFtriX2 = skipFtriX1;
   skipFtriY2 =centerY-(pauseHeight/2);
   skipFtriX3 =skipFtriX1 + (2*pauseHeight)/3;
   skipFtriY3 =(centerY);
   skipFWidth =pauseWidth;
   skipFHeight =pauseHeight;
   skipFX =skipFtriX3;
   skipFY =skipFtriY2;
   //
   skipBtriX1 =pauseX1 - ((3*pauseWidth)/2) ;
   skipBtriY1 =(centerY+(pauseHeight/2));
   skipBtriX2 = skipBtriX1;
   skipBtriY2 =centerY-(pauseHeight/2);
   skipBtriX3 =skipBtriX1 - ((2*pauseHeight)/3);
   skipBtriY3 =(centerY);
   skipBWidth =pauseWidth;
   skipBHeight =pauseHeight;
   skipBX =skipBtriX3 - skipBWidth;
   skipBY =skipBtriY2;
   //
   skipF2triX1 = (skipFX + skipFWidth)+ ((pauseWidth*3)/2)  ;
   skipF2triY1 = skipFtriY1;
   skipF2triX2 = skipF2triX1;
   skipF2triY2 = centerY - (pauseHeight/2);
   skipF2triX3 =skipF2triX1 + ((2*pauseHeight)/3);
   skipF2triY3 = skipFtriY3;
   skipF2triX4 = skipF2triX3 + ((pauseWidth*3)/2)  ;
   skipF2triY4 = skipFtriY1;
   skipF2triX5 = skipF2triX1;
   skipF2triY5 = centerY - (pauseHeight/2);
   skipF2triX6 =skipF2triX1 + ((2*pauseHeight)/3);
   skipF2triY6 = skipFtriY3;
   //
   skipB2triX1 =pauseX2 - (pauseX2*PauseScale*1/4) + (pauseHeight*2/3)  ;
   skipB2triY1 =(centerY+(pauseHeight/2));
   skipB2triX2 = skipBtriX1;
   skipB2triY2 =centerY-(pauseHeight/2);
   skipB2triX3 =skipBtriX1 - (2*pauseHeight)/3;
   skipB2triY3 =(centerY);
   //
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
