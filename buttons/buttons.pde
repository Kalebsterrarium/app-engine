/* prototyping program for logical button pressing
*/
//Global Variables
float stopX,stopY,stopWidth,stopHeight;
boolean stopHoverOver = false;
color buttoncolor = #000000;
float X = 0;
int smooth = 0, x = 1;
float colorx,colory;
float centerX,centerY,buttonreferencemeasure,buttonside;
//
void setup() {
fullScreen();
//
//population, before moving to void in a subprogram
//
 centerX = displayWidth/2;
 centerY = displayHeight/2;
 buttonreferencemeasure = displayWidth*1/9;
 buttonside = buttonreferencemeasure;
 colorx = centerX - 4.5*buttonreferencemeasure;
    colory= centerY - stopHeight/2;
//
stopWidth=buttonside;
stopHeight=stopWidth;


}//endsetup
//
void draw() {
  alternate();
  if (colors == true) {
    colorx= random(displayWidth);
  colory=random(displayHeight);
    
  } else {
    colorx = centerX - 4.5*buttonreferencemeasure;
    colory= centerY - stopHeight/2;
  }
  color egg = color(random(255),random(255),random(255));
  stopX= colorx;
stopY= colory;

  println(x);
   x = x + 1;
  if (mouseX>=stopX && mouseX<= stopX+stopWidth && mouseY>= stopY && mouseY<= stopY+stopHeight) {
    
    println("hovering over button");
    buttoncolor = #808080;

   
  } else 
  {
    buttoncolor= egg;
    println("");
   
  }
  //
  
  //
  
  fill(buttoncolor);
rect(stopX,stopY,stopWidth,stopHeight, A);
//
}//end draw
//
void keyPressed() {
if (key == 's' || key == 'S') { stop();}


}//end keyPressed
//
void mousePressed() {
  //
  /*
  mouseX>= && mouseX<= && mouseY>= && mouseY<=
  */
if (mouseX>=stopX && mouseX<= stopX+stopWidth && mouseY>= stopY && mouseY<= stopY+stopHeight) {
  println("button pressed");
  colors = true;
}

}//end mousePressed
//
//end main program
