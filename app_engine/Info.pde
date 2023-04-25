float playpausetextX,playpausetextY,playpausetextWidth,playpausetextHeight;
String textinfo;
void infohoverover() {
 
  playpausetextWidth=pauseHeight;
  playpausetextHeight=pauseWidth*3;
if(mouseX>functionX2 && mouseX<functionX2+functionWidth2 && mouseY>functionY2 && mouseY<functionY2+functionHeight2 || mouseX>functionX1 && mouseX<functionX1+functionWidth1 && mouseY>functionY1 && mouseY<functionY1+functionHeight1) { 
   playpausetextX=mouseX ;
  playpausetextY=mouseY - playpausetextHeight;
  textAlign(CENTER,CENTER);
  textFont(font);
  if(mouseX>functionX2 && mouseX<functionX2+functionWidth2 && mouseY>functionY2 && mouseY<functionY2+functionHeight2) {
    textinfo = "Play or Pause Button - Press P or Button to Activate";
}
if(mouseX>functionX1 && mouseX<functionX1+functionWidth1 && mouseY>functionY1 && mouseY<functionY1+functionHeight1) {
    textinfo = "Mute and Unmute Button - Press M or Button to Activate";
}
textSize(20); 

fill(#FFFFFF);
rect(playpausetextX,playpausetextY,playpausetextWidth,playpausetextHeight);
fill(#000000);
text(textinfo,playpausetextX,playpausetextY,playpausetextWidth,playpausetextHeight);
noFill();

}
random(1,3);
}
