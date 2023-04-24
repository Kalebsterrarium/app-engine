float playpausetextX,playpausetextY,playpausetextWidth,playpausetextHeight;
String pauseplayinfo = "Play or Pause Button - Press P or Button to Activate";
void infohoverover() {
 
  playpausetextWidth=pauseHeight;
  playpausetextHeight=pauseWidth*3;
if(mouseX>functionX2 && mouseX<functionX2+functionWidth2 && mouseY>functionY2 && mouseY<functionY2+functionHeight2) { 
   playpausetextX=mouseX ;
  playpausetextY=mouseY - playpausetextHeight;
  textAlign(CENTER,CENTER);
  textFont(font);

textSize(20); 

fill(#FFFFFF);
rect(playpausetextX,playpausetextY,playpausetextWidth,playpausetextHeight);
fill(#000000);
text(pauseplayinfo,playpausetextX,playpausetextY,playpausetextWidth,playpausetextHeight);
noFill();

}

}
