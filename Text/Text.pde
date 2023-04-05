//Global Variables
float textRectX1, textRectY1, textRectWidth1, textRectHeight1;
float textRectX2, textRectY2, textRectWidth2, textRectHeight2;
float textRectX3, textRectY3, textRectWidth3, textRectHeight3;
PFont font;
color purpleInk=#2C08FF, resetWhiteInk=#FFFFFF; //Not nice for Night Mode, Blue Content
String string1 = "school is boring.";
String string2 = "life is good .";
String string3 = "love cars.";
//
void allText() { //VOIDs that go into MAIN PROGRAM
  textDraw1();
  textDraw2();
  textDraw3();
}//End All Text
//
void textSetup() { //Executed Once
  //Population, from display
  //Must have CASE STUDY
  textRectX1 = textRectX2 = textRectX3 = width*1/5;
  textRectWidth1 = textRectWidth2= textRectWidth3= width*3/5;
  textRectHeight1 = textRectHeight2 = textRectHeight3 = height*1/10;
  textRectY1 = height*1/10;
  textRectY2 = height*8/10;
  textRectY3 = height*5/10;
  //
  //For visualizing rect(), variables are important
  //rect( textRectX1, textRectY1, textRectWidth1, textRectHeight1 );
  //rect( textRectX2, textRectY2, textRectWidth2, textRectHeight2 );
  //rect( textRectX3, textRectY3, textRectWidth3, textRectHeight3 );
  /*
  println("Start of Console");
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  // Choose your font now
  font = createFont ("Harrington", 55); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //
}//End Text Setup()
//
void preTextDraw() {
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Horiztonal Values (X): [LEFT | CENTER | RIGHT]
  //Vertical Values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height); //Change the number until it fits, largest font size
}//End Pre Text Draw
//
void textDraw1() {
  preTextDraw();
  //
  //Paste here is text size will change depending on Strng
  textSize( 18 ); //Change the number until it fits, largest font size
  //
  //Printing Text on the CANVAS
  text( string1, textRectX1, textRectY1, textRectWidth1, textRectHeight1 );
  fill(resetWhiteInk);
  //
}//End Text Draw 1
//
void textDraw2() {
  preTextDraw();
  //Paste here is text size will change depending on Strng
  textSize( 18 ); //Change the number until it fits, largest font size
  //
  //Printing Text on the CANVAS
  text( string2, textRectX2, textRectY2, textRectWidth2, textRectHeight2 );
  fill(resetWhiteInk);
  //
}//End Text Draw 2
//
void textDraw3() {
  preTextDraw();
  //Paste here is text size will change depending on Strng
  textSize( 22 ); //Change the number until it fits, largest font size
  //
  //Printing Text on the CANVAS
  text( string3, textRectX3, textRectY3, textRectWidth3, textRectHeight3 );
  fill(resetWhiteInk);
  //
}//End Text Draw 3
//
//End Text Subprogram
