void keyPressedShortCuts() {
  //
  musicShortCuts();
  //
} 
  void musicShortCuts() {
  if (key=='0') song0.loop(0);
  if (key=='1') song1.loop(0);
  if (key=='2') song2.loop(0);
  if (key=='3') song3.loop(0);
  if (key=='4') song4.loop(0);
  if (key=='5') song5.loop(0);
  //
  if ( key == 'P' || key=='p' ) autoPlay();
  if ( key == 'S' || key=='s' ) stopSong();
  if ( key == 'F' || key=='f' ) fastForward();
  if ( key == 'R' || key=='r' ) fastRewind();
  if ( key == 'N' || key=='n' ) nextSong();
  if ( key == 'B' || key=='b' ) previousSong();
  if ( key == 'L' || key=='l' ) loopSong();
  if ( key == 'O' || key=='o' ) loopPlaylist(); 
  if ( key == 'W' || key=='w' ) shufflePlaylist(); 
  if ( key == 'E' || key=='e' ) loopandShuffle(); 
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
  soundEffect1.loop(0); //only need partial file, use .play(int millis)
  //Visual Image or Text of Goodbye
  delay(1000); //alternate way of playing sound once
  exit();
}// End quitButtonCode
void autoPlay() {}//End AutoPlay
//
void playPause() {}//End AutoPlay
//
void mute() 
{
 if (song0.isMuted() ){
 song0.unmute();
 } else if (song0.isMuted() && song0.position() >= song0.length()*4/5 ) {
  song0.rewind();
  song0.unmute();
 }else {
   song0.mute();
 } 
}//End Mute
//
void stopSong() {}//End Stp Song
//
void fastForward() {}//End Fast Forward
//
void fastRewind() {}//End Fast Rewind
//
void nextSong() {}//End Next Song
//
void previousSong() {}//End Previous Song
//
void loopSong() {}//End Loop Song
//
void loopPlaylist() {}//End Loop the Playlist
//
void shufflePlaylist() {}//End Shuffle the Playlist()
//
void loopandShuffle() {}//End Loop And Shuffle
//
//End key Board Short Cuts Sub Prograam
