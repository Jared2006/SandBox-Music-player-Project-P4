/* Background Image Example
*/
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
Boolean nightMode = true;
float picX_Adjusted=0.0, picY_Adjusted=0.0, picWidthAdjusted=0.0, picHeightAdjusted=0.0;
//
size(1200, 800); //Landscape
appWidth = width;
appHeight = height;
//
//Population
backgroundImageX = appWidth*0; 
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
pic = loadImage("UDodge-Challenger-R_T-Scat-Pack.jpg");
int picWidth = 1200; //Origonal Dimension, MINE is 800, not yours
int picHeight = 800; //Origonal Dimension, MINE is 600, not yours
//Larger Dimension Algorithm, ASPECT RATIO
int smallerDimension, largerDimension;
float imageHeightRatio, imageWidthRatio;
if ( picWidth >= picHeight ) { //TRUE if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  imageHeightRatio = float (smallerDimension) / float (largerDimension);
  picWidthAdjusted = backgroundImageWidth; //Compression into rect()
  picHeightAdjusted = picWidthAdjusted * imageHeightRatio; //Calculated Variable from compressed variable
  picX_Adjusted = backgroundImageX; 
  picY_Adjusted = backgroundImageY;
} else { //FALSE if Portrait
  /* Students to finish
   largerDimension = ;
   smallerDimension = ;
   imageWidthRatio = ;
   picWidthAdjusted = ;
   picHeightAdjusted = ;
   
   */
}
  //
//Rectangle Layout and Image drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode==false ) tint(255,128);
if (nightMode==true) tint(64,64,40);
//No ASPECT RATIO
image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
//ASPECT RATIO
println( picWidthAdjusted, picHeightAdjusted );
image( pic, picX_Adjusted, picY_Adjusted, picWidthAdjusted, picHeightAdjusted);
//
//End Main Program
