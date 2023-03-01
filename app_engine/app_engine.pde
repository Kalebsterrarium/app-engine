import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables

Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[3]; //creates "Play List" variable holding extenstions WAV, AIFF, AU, SND, and MP3
//
//

//
void setup() {
  //
  setupOS_Level();
  //
 setupMusic();
 //
 songs[2].loop(0);//Change the index manually
 //
}//end setup
//
void draw() {}//End Draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program
