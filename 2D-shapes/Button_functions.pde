float functionX1,functionY1, functionWidth1,functionHeight1,
functionX2,functionY2, functionWidth2,functionHeight2;
boolean functionconditional=false,functionconditional2=false;
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

 


}

void buttonFuntionsMousePress () {

if(mouseX>functionX1 && mouseX<functionX1+functionWidth1 && mouseY>functionY1 && mouseY<functionY1+functionHeight1) {
if ( functionconditional == false) {
  functionconditional = true;
} else {
  functionconditional = false;
}


} 
if(mouseX>functionX2 && mouseX<functionX2+functionWidth2 && mouseY>functionY2 && mouseY<functionY2+functionHeight2) {
if ( functionconditional2 == false) {
  functionconditional2 = true;
} else {
  functionconditional2 = false;
}







}
}
