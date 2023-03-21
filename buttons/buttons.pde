/* prototyping program for logical button pressing
*/
//Global Variables
float stopX,stopY,stopWidth,stopHeight;
boolean stopHoverOver = false;
color buttoncolor = #000000;
float X = 0;
int smooth = 0, x = 1;

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


}//endsetup
//
void draw() {
  color egg = color(random(255),random(255),random(255));
  stopX=random(displayWidth);//centerX - 4.5*buttonreferencemeasure;
stopY=random(displayHeight);//centerY - stopHeight/2;
  println(x);
   x = x + x;
  if (mouseX>=stopX && mouseX<= stopX+stopWidth && mouseY>= stopY && mouseY<= stopY+stopHeight) {
    
    println("hovering over button");
    buttoncolor = #808080;
    smooth = smooth - x;
   
  } else 
  {
    buttoncolor= egg;
    println("");
    if (smooth == 1) {
      
      //smooth = 0;
    } else {
    smooth = smooth - x*1/1000; 
    }
  }
  //
  
  //
  
  fill(buttoncolor);
rect(stopX,stopY,stopWidth,stopHeight, smooth);
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
