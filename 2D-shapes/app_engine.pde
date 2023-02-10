//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float PauseScale;
//
void setup() {
  float centerX= displayWidth*1/2;
  float centerY= (displayHeight/2)-(pauseScaleHeight/2);
  PauseScale= 1.0/9.0;
  pauseScaleWidth= (1.0/27.0) * PauseScale;// used to change x-size
  pauseScaleHeight= (3.0/10.0) * PauseScale;//used to change y-axis
  println(pauseScaleWidth);
  fullScreen();
  //Population, visual data
  pauseWidth= displayWidth*pauseScaleWidth; 
   pauseX1= centerX -  pauseWidth - pauseWidth*1/2;
   pauseY1= centerY;
   pauseX2= centerX + pauseWidth*1/2;
   pauseY2= pauseY1;
   pauseHeight= displayHeight*pauseScaleHeight;
}//End setup
//
void draw() {
  rect(pauseX1, pauseY1, pauseWidth, pauseHeight);
  rect(pauseX2, pauseY2, pauseWidth, pauseHeight);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)
