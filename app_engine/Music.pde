//Global Varibles 
//



String pathway, screech, Good, Drip;
//
void setupMusic() {
  //
minim = new Minim (this); // Load from data directory, loadFile should also load from project folder, like loadImage
//
//Set the Directory or Pathway to the music
//Pathway:data / Music Files
//
//Reminder: finish OS_Level Code to auto read Pathway and files(See Operating System)
//
concatenationOfMusicFiles();
songs[0] = minim.loadFile(pathway + screech);
songs[1] = minim.loadFile(pathway + Good);
songs[2] = minim.loadFile(pathway + Drip);
}//End setupMusic
//
void drawMusic () {
}// end drawMusic
//
void keyPressedMusic() {
}// end keyPressedMusic
//
void mousePressedMusic() {
} //End mousePressedMusic
//
void concatenationOfMusicFiles() {
  pathway = "data/";
  screech= "Dinosaur_screech.mp3";
  Good = "Good_Ending_Theme_Five_Nights_at_Freddys_3.mp3";
  Drip = "WhatsApp_Car_Drip_Car.mp3";
}//End concatenationOfMusicFiles
//
//End Music SubProgram
