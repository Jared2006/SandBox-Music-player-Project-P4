/* Background Image Example
*/
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
Boolean nightMode = true;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
//
size(1920, 1080); //Landscape
appWidth = width;
appHeight = height;
//
//Population
backgroundImageX = appWidth*0; 
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
pic = loadImage("cars-nissan-skyline-r34-gt-r-jdm-ztune-1920x1080-19139 (1).jpg");
int picWidth = 1920; //Origonal Dimension, MINE is 800, not yours
int picHeight = 1080; //Origonal Dimension, MINE is 600, not yours
//Larger Dimension Algorithm, ASPECT RATIO
int smallerDimension, largerDimension;
float imageHeightRatio, imageWidthRatio;
if ( picWidth >= picHeight ) { //TRUE if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  imageHeightRatio = smallerDimension / largerDimension;
  picWidthAdjusted = backgroundImageWidth; //Compression into rect()
  picHeightAdjusted = picWidthAdjusted * imageHeightRatio; //Calculated Variable from compressed variable
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
image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted );
//
//End Main Program
