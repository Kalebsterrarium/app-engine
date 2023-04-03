float rectX, rectY, rectWidth, rectHeight;


void rectanglesetup() {
rectX=displayWidth * 1/8;
rectY=displayHeight * 1/8;
rectWidth=displayWidth*6/8;
rectHeight=displayHeight*6/8;
}


void rectangledraw() {
rect(rectX, rectY, rectWidth, rectHeight);
}
