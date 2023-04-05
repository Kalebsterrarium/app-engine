float rectX, rectY, rectWidth, rectHeight;
float wave;
 int X;

void rectanglesetup() {
rectX=displayWidth * 1/8;
rectY=displayHeight * 1/8;
rectWidth=displayWidth*6/8;
rectHeight=displayHeight*6/8;
}


void rectangledraw() {
   X= X + 1;
   wave = cos(X);
   if (wave < 0) {
   wave = wave * -1;
   }
   
   
   
   
rect(rectX, rectY, rectWidth, rectHeight);
}
