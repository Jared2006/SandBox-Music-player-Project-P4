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
  if ( key == 'Q' || key == 'q' ) {
    quitButtonCode();
  }
  if ( key == CODED && keyCode == ESC ) {
    quitButtonCode();
  }//End Quit Buttons
}//End quitButtons
//
void quitButtonCode() {
  soundEffects[1].loop(0); 
  delay(3000); 
  exit();
}//End quitButtonCode
//
void autoPlay() {
}//End AutoPlay
//
void playPause()
{
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) { //80% of the song
    songs[currentSong].rewind();
    songs[currentSong].play();
  } else {
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
    //
  } else {
    songs[currentSong].mute(); //simple solution, contains two ERRORS, see above
  }
}//End Mute
//
void stopSong()
{
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].rewind();
  }
}//End Stop Song
//
void fastForward() {
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(1000); //parameter in milliseconds
}//End Fast Forward
//
void fastRewind() {
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(1000); //parameter in milliseconds
}//End Fast Rewind
//
void nextSong() {
}//End Next Song
//
void previousSong() {
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
}//End Loop And Shuffle
//

//End Key Board Short Cuts Sub Program
