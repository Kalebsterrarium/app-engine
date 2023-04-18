int Y_AXIS = 1;
int X_AXIS = 2;
int A=1, B=1, C=1,c11=0,c12=0,c13=0;
color b1, b2, c1, c2 ;
float interfaceX, interfaceY, interfaceWidth, interfaceHeight;
float menuX, menuY, menuWidth, menuHeight;
boolean conditional1,conditional2,conditional3;
float quitX, quitY, quitWidth, quitHeight;
color red=#FF0000, lightred=#FF6242, quitbuttoncolor=#FF0000;
float wave,wave2,wave3;
float XVari,XVari2,XVari3;
float A1=255,B1=255,C1=255;
//
void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
//





void BackGround () {
   interfaceX= displayWidth*0;
  interfaceY= displayHeight*0;
  interfaceWidth=displayWidth;
  interfaceHeight=displayHeight;
   menuX= displayWidth*1/5;
  menuY= displayHeight*0;
  menuWidth =displayWidth*3/5;
  menuHeight =displayHeight*1;
  quitX= displayWidth*19/20;
  quitY= displayHeight*-1/20;
  quitWidth =displayWidth*1/20;
  quitHeight =displayHeight*9/100;
   XVari = XVari + 0.01;
   wave = cos(XVari);
   if (wave < 0) {
   wave = wave * -1;
   }
    XVari2 = XVari2 + 0.03;
   wave2 = sin(XVari2);
   if (wave2 < 0) {
   wave2 = wave2 * -1;
   }
    XVari3 = XVari3 + 0.02;
   wave3 = tan(XVari3);
   if (wave3 < 0) {
   wave3 = wave3 * -1;
   }
   
   A = int(A1 * wave);
   B = int(B1 * wave2);
   C =int(C1 * wave3);
   
 
println(A);
println(wave);
println(XVari);
  colour();
  rect(interfaceX, interfaceY, interfaceWidth, interfaceHeight);
setGradient(0, 0, interfaceWidth, interfaceHeight, c1, c2, Y_AXIS);

}

//
void colour() {
  
    
    c1 = color(A,B,C);
  c2 = color(B,C,A);
  }
  void menu() {
  stroke(#ADD8E6);
  fill(#ADD8E6);
  rect(menuX, menuY, menuWidth, menuHeight);
}
