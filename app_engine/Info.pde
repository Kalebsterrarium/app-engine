float playpausetextX,playpausetextY,playpausetextWidth,playpausetextHeight;

void infohoverover() {
 
  playpausetextWidth=pauseHeight*3;
  playpausetextHeight=pauseWidth;
if(mouseX>functionX2 && mouseX<functionX2+functionWidth2 && mouseY>functionY2 && mouseY<functionY2+functionHeight2) { 
   playpausetextX=mouseX ;
  playpausetextY=mouseY - playpausetextHeight;
  textAlign(CENTER,CENTER);
  textFont(font,displayHeight);

textSize(10); 
fill(#000000);
text("Play or Pause Button - Press P or Button to Activate",playpausetextX,playpausetextY,playpausetextWidth,playpausetextHeight);
fill(#FFFFFF);
rect(playpausetextX,playpausetextY,playpausetextWidth,playpausetextHeight);
noFill();

}

}
