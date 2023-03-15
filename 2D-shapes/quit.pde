void Quit() {
  strokeWeight(1);
  stroke(quitbuttoncolor);
  fill(quitbuttoncolor);
rect(quitX, quitY, quitWidth, quitHeight);
noStroke();
if(mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight){
    quitbuttoncolor=lightred;
  } else {
   quitbuttoncolor=red;
  }
stroke(#000000);
  line(displayWidth*19/20,displayHeight*0,displayWidth*1,displayHeight*1/25);
  line(displayWidth*19/20,displayHeight*1/25,displayWidth*1,displayHeight*0);
}
