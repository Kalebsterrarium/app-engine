float functionX1,functionY1, functionWidth1,functionHeight1;
boolean functionconditional=false;
void buttonFuntionsDraw () {

  
  rect(functionX1,functionY1, functionWidth1,functionHeight1);






}

void buttonFuntionsSetup () {

functionX1=muteX1;
functionY1=muteY2;
functionWidth1=(muteArcX5 + muteArcX6/2) - muteX1 ;//(muteArcX5 + (muteWidth*3)) - muteX1
functionHeight1=muteY3 - muteY2;





}

void buttonFuntionsMousePress () {

if(mouseX>functionX1 && mouseX<functionX1+functionWidth1 && mouseY>functionY1 && mouseY<functionY1+functionHeight1) {
if ( functionconditional == false) {
  functionconditional = true;
} else {
  functionconditional = false;
}


} 






}
