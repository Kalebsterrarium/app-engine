float functionX1,functionY1, functionWidth1,functionHeight1,
functionX2,functionY2, functionWidth2,functionHeight2,
functionX3,functionY3, functionWidth3,functionHeight3,
functionX4,functionY4, functionWidth4,functionHeight4,
functionX5,functionY5, functionWidth5,functionHeight5;
boolean functionconditional=false,functionconditional2=false;
boolean mutefunctionconditional = false,shufflefunctionconditional = false;
void buttonFuntionsDraw () {

  noStroke();
  noFill();
  rect(functionX1,functionY1, functionWidth1,functionHeight1);
  
 rect(functionX2,functionY2, functionWidth2,functionHeight2);





}

void buttonFuntionsSetup () {

functionX1=muteX1;
functionY1=muteY2;
functionWidth1=(muteArcX5 + muteArcX6/2) - muteX1 ;//(muteArcX5 + (muteWidth*3)) - muteX1
functionHeight1=muteY3 - muteY2;
functionX2=pauseX1;
functionY2=pauseY1;
functionWidth2=playX3 - pauseX1;
functionHeight2=pauseHeight;

 functionX5=shuffleRectX1;
 functionY5=shuffletriY1;
 functionWidth5=shuffletriX3 - functionX5;
 functionHeight5=shuffletriY5 - functionY5;


}

void buttonFuntionsMousePress () {

if(mouseX>functionX1 && mouseX<functionX1+functionWidth1 && mouseY>functionY1 && mouseY<functionY1+functionHeight1) {
if ( functionconditional == false) {
  functionconditional = true;
   
} else {
  functionconditional = false;
  
}
mutefunction();

} 
if(mouseX>functionX2 && mouseX<functionX2+functionWidth2 && mouseY>functionY2 && mouseY<functionY2+functionHeight2) {
playpausefunction();
  
} 
if(mouseX>stopX && mouseX<stopX+stopWidth && mouseY>stopY && mouseY<stopY+stopHeight) { 
   stopfunction();
   
 } 
 
 if(mouseX>functionX5 && mouseX<functionX5+functionWidth5 && mouseY>functionY5 && mouseY<functionY5+functionHeight5) {
if ( shufflefunctionconditional == false) {
  shufflefunctionconditional = true;
   
} else {
  shufflefunctionconditional = false;
  
}
shufflefunction();
} 
}//end buttonFuntionsMousePress 
void buttonFunctionsKeypressed() {
  if(key == 's' || key == 'S') { 
   stopfunction();
   
 } 
  //
if(key == 'm' || key == 'M') {
  if ( functionconditional == false) {
  functionconditional = true;
   
} else {
  functionconditional = false;
  
}
mutefunction();

}

if(key == 'p' || key == 'P') {
  if ( functionconditional2 == false) {
  functionconditional2 = true;
   
} else {
  functionconditional2 = false;
  
}
playpausefunction();

}
}
