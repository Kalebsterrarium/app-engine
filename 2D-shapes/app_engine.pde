//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;

//
void setup() {
  float centerX= displayWidth*1/2;
  fullScreen();
  //Population, visual data
  pauseWidth= displayWidth*1/4; 
   pauseX1= centerX -  pauseWidth - pauseWidth*1/2;
   pauseY1= displayHeight*2/5;
   pauseX2= centerX + pauseWidth + pauseWidth*1/2;
   pauseY2= displayHeight*2/5;
   pauseHeight=displayHeight*1/4;
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
