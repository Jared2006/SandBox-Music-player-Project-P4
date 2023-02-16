void keyPressedShortCuts() {
  //
  musicShortCuts();
  //
  void musicShortCuts() {
  if (key=='0') song0.loop(0);
  if (key=='1') song1.loop(0);
  if (key=='2') song2.loop(0);
  if (key=='3') song3.loop(0);
  if (key=='4') song4.loop(0);
  if (key=='5') song5.loop(0);
  } 
  // End musicShortCuts
  //
  void quitButton() {
  //Quit Button Key Board Shortcuts
  if ( key == 'Q' || key == 'q' ) {
     soundEffect1.loop(0);
     delay(1000);
     exit();
  }
  //Quit Button Key Board Shortcuts
  if ( key == 'Q' || key == 'q' ) {
     soundEffect0.loop(0);
     delay(1000);
     exit();
}// End keyPressedCuts
//
//End key Board Short Cuts Sub Prograam
