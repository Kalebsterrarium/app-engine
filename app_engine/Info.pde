float playpausetextX,playpausetextY,playpausetextWidth,playpausetextHeight;
String textinfo;
int textsize=20;
void infohoverover() {
 
  playpausetextWidth=pauseHeight;
  playpausetextHeight=pauseWidth*3;
if(mouseX>functionX2 && mouseX<functionX2+functionWidth2 && mouseY>functionY2 && mouseY<functionY2+functionHeight2 || mouseX>functionX1 && mouseX<functionX1+functionWidth1 && mouseY>functionY1 && mouseY<functionY1+functionHeight1 || mouseX>stopX && mouseX<stopX+stopWidth && mouseY>stopY && mouseY<stopY+stopHeight) { 
   playpausetextX=mouseX ;
  playpausetextY=mouseY - playpausetextHeight;
  textAlign(CENTER,CENTER);
  textFont(font);
  if(mouseX>functionX2 && mouseX<functionX2+functionWidth2 && mouseY>functionY2 && mouseY<functionY2+functionHeight2) {
    textinfo = "Play or Pause Button - Press P or Button to Activate";
     textsize=20;
}
if(mouseX>functionX1 && mouseX<functionX1+functionWidth1 && mouseY>functionY1 && mouseY<functionY1+functionHeight1) {
    textinfo = "Mute and Unmute Button - Press M or Button to Activate";
     textsize=20;
}
if(mouseX>stopX && mouseX<stopX+stopWidth && mouseY>stopY && mouseY<stopY+stopHeight) {
    textinfo = "Stop button - Pauses and Rewinds Song to Beginning - Press S or Button to Activate";
     textsize=15;
}
textSize(textsize); 

fill(#FFFFFF);
rect(playpausetextX,playpausetextY,playpausetextWidth,playpausetextHeight);
fill(#000000);
text(textinfo,playpausetextX,playpausetextY,playpausetextWidth,playpausetextHeight);
noFill();

}

}
