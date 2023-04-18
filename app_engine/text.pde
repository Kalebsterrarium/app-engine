String auto;
String on="on",off="off";


void functiontextdraw() {
if (autoplayon == true) {
  auto = on;
} else {
  auto = off;
}


text("Autoplay is "+ auto ,progressX1, (progressY1-progressHeight1), progressWidth1, progressHeight1);

} 
