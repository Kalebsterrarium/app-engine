//Global Variables
int appWidth, appHeight;
//
void setup() {
//Errorsetup();
  
  
  PauseScale=(10.0/10.0);
  pauseScaleWidth= (1/27) * PauseScale;// used to change x-size
  pauseScaleHeight= (3/10) * PauseScale;//used to change y-axis
  println(stopY);
  fullScreen();
  //
  //ERROR: CANVAS is bugger than display
  //ERROR: stating dislpay geometery (landscape, portrait, square)
  appWidth= displayWidth;
  appHeight= displayHeight;
  interfaceX= displayWidth*0;
  interfaceY= displayHeight*0;
  interfaceWidth=displayWidth;
  interfaceHeight=displayHeight;
    menuX= displayWidth*1/5;
  menuY= displayHeight*0;
  menuWidth =displayWidth*3/5;
  menuHeight =displayHeight*1;
  quitX= displayWidth*19/20;
  quitY= displayHeight*-1/20;
  quitWidth =displayWidth*1/20;
  quitHeight =displayHeight*9/100;
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
   stopX = pauseX2 + ((pauseWidth*5)/2);
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
   muteArcX1=muteX2   ;
   muteArcY1=muteY4 ;
   muteArcX2=muteWidth;
   muteArcY2=muteWidth ;
   muteArcX3=muteArcX1 ;
   muteArcY3=muteArcY1;
   muteArcX4=muteWidth*2;
   muteArcY4= muteWidth*2;
   muteArcX5=muteArcX3  ;
   muteArcY5=muteArcY3;
   muteArcX6=muteWidth*3;
   muteArcY6=muteWidth*3;
   //
   loopX= skipB2triX1 + skipBWidth/2 ;
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
   loopFixY1=looparrowY1-1;
   LoopFixX2=looparrowX2;
   LoopFixY2=looparrowY2-1;
   LoopFixX3=looparrowX3;
   LoopFixY3=looparrowY1 + loopWidth*186/400;
   //
   shuffleRectX1=skipBX;
   shuffleRectY1=stopY + (stopHeight*1/5);
   shuffleRectWidth1=stopWidth*1/3;
   shuffleRectHeight1=pauseHeight*1/6;
   shuffleRectWidth2=stopWidth*1/3;
   shuffleRectHeight2=pauseHeight*1/6;
   shuffleRectX2=skipBX;
   shuffleRectY2=shuffleRectY1 + (stopHeight*3/5) - shuffleRectHeight2 ;
   shuffleRectX5= shuffleRectX1 + stopWidth*2/3 ; 
 shuffleRectY5=shuffleRectY2;
 shuffleRectWidth5=stopWidth*1/6;
 shuffleRectHeight5=pauseHeight*1/6;
 shuffleRectX6= shuffleRectX1 + stopWidth*2/3;
 shuffleRectY6=shuffleRectY1;
 shuffleRectWidth6=stopWidth*1/6;
 shuffleRectHeight6=pauseHeight*1/6;
  shufflequadX1= shuffleRectX1 + shuffleRectWidth1 ;
  shufflequadY1=shuffleRectY1;
  shufflquadX2=shuffleRectX5;
  shufflequadY2=shuffleRectY5   ;
  shufflequadX3=shuffleRectX5 ;
  shufflequadY3=shufflequadY2 + shuffleRectHeight5;
  shufflequadX4=shufflequadX1;
  shufflequadY4=shufflequadY1 + shuffleRectHeight1;
 shufflequadX5=shuffleRectX2 + shuffleRectWidth2;
 shufflequadY5=shuffleRectY2;
 shufflquadX6= shufflequadX5;
 shufflequadY6=shuffleRectY2 + shuffleRectHeight2 ;
 shufflequadX7=shuffleRectX6 ;
 shufflequadY7=  shuffleRectY6 + shuffleRectHeight6;
 shufflequadX8=shuffleRectX6;
 shufflequadY8=shuffleRectY6 ;
 shuffletriX1=shuffleRectX6 + shuffleRectWidth6;
 shuffletriY1=shuffleRectY6 - shuffleRectHeight6*1/3 ;
 shuffletriX2=shuffletriX1;
 shuffletriY2=shuffleRectY6 + shuffleRectHeight6*4/3;
 shuffletriX3=shuffletriX2  + shuffleRectHeight6*25/18;
 shuffletriY3=shuffleRectY6 + (shuffleRectHeight6/2);
 shuffletriX4=shuffleRectX5 + shuffleRectWidth5;
 shuffletriY4=shuffleRectY5 - shuffleRectHeight5*1/3;
 shuffletriX5=shuffletriX4;
 shuffletriY5=shuffleRectY5 + shuffleRectHeight5*4/3;
 shuffletriX6=shuffletriX5  + shuffleRectHeight5*25/18;
 shuffletriY6=shuffleRectY5 + (shuffleRectHeight5/2); 
   //
   buttonFuntionsSetup();
}//End setup
//
void draw() {
  BackGround();
  menu();
   buttonFuntionsDraw();
  drawMusicButtons();
  
  Quit();
  //
   if(errorstart == true) {
     Error();
       
   }
   //
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {
  if(mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight){
    //errorstart= true;
    exit();
  }
   buttonFuntionsMousePress();
}//End mousePressed
//
//End MAIN Program (Driver)
