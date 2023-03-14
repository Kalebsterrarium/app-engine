//Global Variables
int appWidth, appHeight;
//
void setup() {

  background(#FFF000);
  
  PauseScale=(13.0/10.0);
  pauseScaleWidth= (1/27) * PauseScale;// used to change x-size
  pauseScaleHeight= (3/10) * PauseScale;//used to change y-axis
  println(stopY);
  fullScreen();
  //
  //ERROR: CANVAS is bugger than display
  //ERROR: stating dislpay geometery (landscape, portrait, square)
  appWidth= displayWidth;
  appHeight= displayHeight;
    float centerX= appWidth/2;
  float centerY= appHeight/2;
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
   skipF2triX4 = skipF2triX3;
   skipF2triY4 = skipFtriY1;
   skipF2triX5 = skipF2triX4;
   skipF2triY5 = centerY - (pauseHeight/2);
   skipF2triX6 =skipF2triX4 + ((2*pauseHeight)/3);
   skipF2triY6 = skipFtriY3;
   //
   skipB2triX1 =skipBX - ((pauseWidth*3)/2)  ;
   skipB2triY1 = skipBtriY1;
   skipB2triX2 = skipB2triX1;
   skipB2triY2 = skipBtriY2;
   skipB2triX3 =skipB2triX1 - ((2*pauseHeight)/3);
   skipB2triY3 =(centerY);
   skipB2triX4 = skipB2triX3 ;
   skipB2triY4 = skipB2triY1;
   skipB2triX5 = skipB2triX3;
   skipB2triY5 = skipB2triY2;
   skipB2triX6 = skipB2triX4 - ((2*pauseHeight)/3);
   skipB2triY6 =(centerY);
   //
    playX1 =pauseX1;
   playY1 =(centerY+(pauseHeight/2));
   playX2 = playX1;
   playY2 =centerY-(pauseHeight/2);
   playX3 =playX1 + (2*pauseHeight)/3;
   playY3 =(centerY);
   //
    
   muteX2 =skipFtriX1 + (2*pauseHeight)/3;
   muteY2 =pauseY1 + (stopHeight+((3*pauseWidth)/2));
   muteX3 =muteX2;
   muteY3 =muteY2 + pauseHeight;
   muteX4 = pauseX2  + ((5*pauseWidth)/2);
   muteY4 =muteY2 + pauseHeight/2;
   muteHeight =(muteY3-muteY2)*(1.0/3.0); 
    muteWidth =muteHeight;
   muteX1 = muteX4  ;
   muteY1 = muteY4 - (muteHeight/2.0); 
   muteX5=muteX2 + (5*muteWidth/4);
   muteY5= muteY1;
   muteX6=muteX5 - (muteWidth*(3/2));
   muteY6=muteY5 + muteHeight;
   muteX7=muteX6;
   muteY7= muteY5;
   muteX8=muteX5;
   muteY8=muteY6;
   //
   loopX= skipB2triX1 ;
   loopY=muteY2;
   loopWidth=stopWidth;
   loopHeight=loopWidth;
   looparrowX1=loopX - (loopWidth*1/3) ;
   looparrowY1=loopY + (loopHeight*1/4);
   looparrowX2=looparrowX1+(loopWidth*2/3);
   looparrowY2=looparrowY1;
   looparrowX3=loopX;
   looparrowY3=looparrowY1 + (loopHeight*1/2);
   loopFixX1=looparrowX1;
   loopFixY1=looparrowY1;
   LoopFixX2=looparrowX2;
   LoopFixY2=looparrowY2;
   LoopFixX3=looparrowX3;
   LoopFixY3=looparrowY1 + loopWidth*186/400;
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
