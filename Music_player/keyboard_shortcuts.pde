void keyPressedShortCuts() {
  //
  musicShortCuts();
  quitButtons();
  //
}//End keyPressedShortCuts
//
void musicShortCuts() {
  //Key Board Short Cuts for Music, use numbers
  //Hint: notice human numbering vs. computer numbering9
  //Note: if(key=='1')song0.loop(0); will change to array & index introduction
  if ( key == '0' ) songs[0].loop(0);
  if ( key == '1' ) songs[0].loop(0); //.rewind() is included in .loop()
  if ( key == '2' ) songs[1].loop(0);
  if ( key == '3' ) songs[2].loop(0);
  if ( key == '4' ) songs[3].loop(0);
  if ( key == '5' ) songs[4].loop(0);
  //
  if ( key == 'U' || key=='u' ) autoPlay();
  if ( key == 'P' || key=='p' ) playPause();
  if ( key == 'M' || key=='m' ) mute();
  if ( key == 'S' || key=='s' ) stopSong();
  if ( key == 'F' || key=='f' ) fastForward();
  if ( key == 'R' || key=='r' ) fastRewind();
  if ( key == 'N' || key=='n' ) nextSong();
  if ( key == 'B' || key=='b' ) previousSong();
  if ( key == 'L' || key=='l' ) loopSong();
  if ( key == 'O' || key=='o' ) loopPlaylist(); 
  if ( key == 'W' || key=='w' ) shufflePlaylist(); 
  if ( key == 'E' || key=='e' ) loopAndShuffle(); 
  }// End musicShortCuts
  //
  void quitButtons() {
  //Quit Button Key Board Shortcuts
  if ( key == 'Q' || key == 'q' ) {
    quitButtonCode();
  }
  if ( key == CODED && keyCode == ESC ) {
    quitButtonCode();
  }//End Quit Buttons
}//End quitButtons
//
void quitButtonCode() {
  soundEffects[1].loop(0); //only need partial file, use .play(int millis)
  //Visual Image or Text of Goodbye
  delay(3000); //alternate way of playing sound once
  exit();
}//End quitButtonCode
//
/* Note: must define a difference between auto play and loop playlist
 */
void autoPlay() {
  if (autoPlayON) == false  () ) {
    (autoPlayON)= true;
  } else {
    (autoPlayON) = false;
    songs[currentSong].pause(); //enables play to continue when auto play is turned off
    //songs[currentSong].rewind();
  }
}//End AutoPlay
void autoPlayMusic() {
  //ERROR: ArrayListOutOfBounds
  if ( songs[currentSong].isPlaying()==false ) {
    currentSong++;
    songs[currentSong].play();
  }
}//End Auto Play Music
//
void playPause()
{
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) { //80% of the song
    songs[currentSong].rewind();
    songs[currentSong].play();
    //Remember, Auto Play is better b/c it plays the next song
  } else {
    //autoPlay(), is better here
    songs[currentSong].play(); //Interim solution
  }
}//End Play Pause
//
void mute()
{
  if ( songs[currentSong].isMuted() ) {
    songs[currentSong].unmute();
  } else if ( songs[currentSong].isMuted() && songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
    songs[currentSong].rewind(); //one solution
    songs[currentSong].unmute();
  } else {
    songs[currentSong].mute(); //simple solution, contains two ERRORS, see above
  }
}//End Mute
//
void stopSong()
{
  //Based on a question: is the song playing
  //Hint: would this fix the ERROR of the MUTE Button
  //Note: STOP is actually afancy rewind, no ERRORS
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].rewind();
  }
}//End Stop Song
//
void fastForward() {
  //Asks comptuer if the song is playing
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(1000); //parameter in milliseconds
}//End Fast Forward
//
void fastRewind() {
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(-1000); //parameter in milliseconds
}//End Fast Rewind
//
void nextSong() {
  //ERROR: ArrayListOutOfBounds
  currentSong++;
}//End Next Song
//
void previousSong() {
  //ERROR: ArrayListOutOfBounds
  currentSong--;
}//End Previous Song
//
void loopSong() {
}//End Loop Song
//
void loopPlaylist() {
}//End Loop the Playlist
//
void shufflePlaylist() {
}//End Shuffle the Playlist()
//
void loopAndShuffle() {
  //Student to finish
  //Hint: random() and casting, see Global Variables' currentSong declaration
}//End Loop And Shuffle
//

//End Key Board Short Cuts Sub Program
