/* prototyping program for logical button pressing
*/
//Global Variables
float stopX,stopY,stopWidth,stopHeight;
boolean stopHoverOver = false;
//
void setup() {
fullScreen();
//
//population, before moving to void in a subprogram
//
float centerX = displayWidth/2;
float centerY = displayHeight/2;
float buttonreferencemeasure = displayWidth*1/9;
float buttonside = buttonreferencemeasure;
//
stopWidth=buttonside;
stopHeight=stopWidth;
stopX=centerX - 4.5*buttonreferencemeasure;
stopY=centerY - stopHeight/2;

}//endsetup
//
void draw() {
  if (mouseX>=stopX && mouseX<= stopX+stopWidth && mouseY>= stopY && mouseY<= stopY+stopHeight) {
    
    println("hovering over button");
  } else 
  {
    println("");
  }
  //
  
  //
rect(stopX,stopY,stopWidth,stopHeight);
//
}//end draw
//
void keyPressed() {}//end keyPressed
//
void mousePressed() {
  //
  /*
  mouseX>= && mouseX<= && mouseY>= && mouseY<=
  */
if (mouseX>=stopX && mouseX<= stopX+stopWidth && mouseY>= stopY && mouseY<= stopY+stopHeight) println("button pressed");


}//end mousePressed
//
//end main program
