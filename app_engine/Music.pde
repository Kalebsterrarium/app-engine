//Global Varibles 
//



String pathway, screech, Good, Drip, invincible, Nekozilla, firefly;
int currentSong= 0;
boolean autoplayon =false;
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
songs[3] = minim.loadFile(pathway + invincible);
songs[4] = minim.loadFile(pathway + Nekozilla);
songs[5] = minim.loadFile(pathway + firefly);
}//End setupMusic
//
void drawMusic () {
  autoplayOn();
  if (autoplayon == false) {
       
       println("auto play is off");
       } else if (autoplayon == true) {
       
        println("auto play is on");
       }
       
}// end drawMusic
//
void keyPressedMusic() {
   if ( key == 'm' || key == 'M' ) {//Mute Button, not PAUSE, only affect speakers
    if ( songs[currentSong].isMuted() ) {
      songs[currentSong].unmute();
    } else if ( songs[currentSong].position() >= songs[currentSong].length()*(1099/1100) ) {
      //Students to finish SMARTER Mute Button
      //ERROR: music player breaks if song finishes
      /* Ideas
       - rewind the song
       - play the next song automatically
       - play of notification to choose the next song
       */
      songs[currentSong].rewind(); //simple solution, contains ERROR
    } else {
      songs[currentSong].mute();
    }
  }//End Mute Button
  //
  //Forward & Reverse Skip
  if( key == 'f' || key == 'F') {
    
  songs[currentSong].skip(3000); //parameter in milliseconds
  } else if ( songs[currentSong].position() >= songs[currentSong].length() - 50 ) {
  //skips forward to end of song 
    //ERROR; if at end of song, then next song
    //student to finish conditional 
     songs[currentSong].pause();
      songs[currentSong].rewind();
      
  }
  

  
  if(key == 'r' || key == 'R') {
    //spamming r means start playing at beginning of song
  songs[currentSong].skip(-3000); //parameter in milliseconds
  } //end reverse
  
  //
  //single loop
  //if ( key == '1') 
   if ( key == '1') {
     delay( songs[currentSong].length() - songs[currentSong].position() );
     
     songs[currentSong].loop(0);
   }
  //
  //loop endless
  if ( key <= '9' && key != '1') {
     delay( songs[currentSong].length() - songs[currentSong].position() );
     
     songs[currentSong].loop(-1); //parameter is empty or -1
   }//end infinite loop
   //
   //stop
   if ( key == 's' || key == 'S') {
    if (songs[currentSong].isPlaying() ) {
    songs[currentSong].pause(); 
    songs[currentSong].rewind(); 
  } else {
    songs[currentSong].rewind();
  }
   }//end stop
   //
   //play-pause
   if ( key == 'p' || key == 'P') {
   
   if (songs[currentSong].isPlaying() ) {
     songs[currentSong].pause();
   } else if ( songs[currentSong].position() >= songs[currentSong].length() - 50 ) {
     //student to finish
     // .pause(), .rewind(), then cue the next song 
     songs[currentSong].pause();
     songs[currentSong].rewind();
     songs[currentSong].play();
   } else {
     songs[currentSong].play();//no auto rewind like loop()
   }
   
   }//end play-pause
   
   if ( key == 'n' || key == 'N' ) {
    
     
     songs[currentSong].pause();
     songs[currentSong].rewind();
     if (currentSong == 5) {
       currentSong = currentSong - 5;
     } else {
       currentSong = currentSong + 1;
     }
     songs[currentSong].play();
    
     
     
     
   }
   
     if ( key == 'b' || key =='B') {
        
     songs[currentSong].pause();
     songs[currentSong].rewind();
     if (currentSong == 0) {
       currentSong = currentSong + 5;
     } else {
       currentSong = currentSong - 1;
     }
     songs[currentSong].play();
       
       
     }
     
     
     if (key == 'o' || key == 'O') {
      
       if (autoplayon == false) {
       autoplayon = true;
       } else {
       autoplayon = false;
       }
       
     }
     
   /*Note: possible smarter STOP buttons
   include soft "PAUSE" for first 15 seconds of STOP
   include auto prevoius & next track if STOP at beginning or end of File
   
   */
  
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
  invincible = "Invincible.mp3";
  Nekozilla = "Nekozilla.mp3";
  firefly = "Firefly.mp3";
}//End concatenationOfMusicFiles
//
void autoplayOn() {
  if (autoplayon == true) {
    if (songs[currentSong].position() >= (songs[currentSong].length() - 500)) {
      println("at end of song");
      songs[currentSong].pause();
      songs[currentSong].rewind();
       if (currentSong == 5) {
       currentSong = currentSong - 5;
     } else {
       currentSong+=1;
     }
     songs[currentSong].play();
     }
     
  }
  
  
  
}
//
//End Music SubProgram
