color ink, black=#050505, red=#FA0307, white=#FFFFFF, blue=#022D98, green=#05FF24;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float inkredx, inkredy, inkredxx, inkredyy, inkbluex, inkbluey, inkbluexx, inkblueyy, inkgreenx, inkgreeny, inkgreenxx, inkgreenyy, inktx, inkty, inktxx, inktyy;
Boolean draw=false;
Boolean redink=false, blackink=false, greenink=false, blueink=false, thickink=false;
void setup() {
  fullScreen();


  drawingSurfaceX = width*1/4;
  drawingSurfaceY = height*1/5;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
  //
  inkredx = width*50/64;
  inkredy = height*1/30;
  inkredxx= 30;
  inkredyy = 30;
  //
  inkgreenx = width*52/64;
  inkgreeny = height*1/30;
  inkgreenxx= 30;
  inkgreenyy = 30;
  //
  inkbluex = width*54/64;
  inkbluey = height*1/30;
  inkbluexx= 30;
  inkblueyy = 30;
  //
  inktx = width*28/64;
  inkty = height*1/30;
  inktxx= 30;
  inktyy = 30;
  //

  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  fill(red);
  rect(inkredx, inkredy, inkredxx, inkredyy);
  fill(green);
  rect(inkgreenx, inkgreeny, inkgreenxx, inkgreenyy);
  fill(blue);
  rect(inkbluex, inkbluey, inkbluexx, inkblueyy);
  fill(white);
  rect(inktx, inkty, inktxx, inktyy);
}
{
}

void draw() {
  println(ink);
  if (redink == true) {
    ink = red;
  }
  if (blackink == true) {
    ink = black;
  }
  if (greenink == true) {
    ink = green;
  }
  if (blueink == true) {
    ink = blue;
  }
  if (thickink == true) {
    strokeWeight(45);;
  }
  if (draw == true  && mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    stroke(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }



  //
}

void mousePressed() {

  fill(white);
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {

    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }


  if ( mouseX>inkredx  && mouseX<inkredx+inkredxx  && mouseY>inkredy && mouseY<inkredy+inkredyy) {
    println("red");
    redink=true;
    blackink=false;
    greenink=false;
    blueink=false;
  }
  if ( mouseX>inkgreenx  && mouseX<inkgreenx+inkgreenxx  && mouseY>inkgreeny && mouseY<inkgreeny+inkgreenyy) {
    println("green");
    redink=false;
    blackink=false;
    greenink=true;
    blueink=false;
  }
  if ( mouseX>inkbluex  && mouseX<inkbluex+inkbluexx  && mouseY>inkbluey && mouseY<inkbluey+inkblueyy) {
    println("blue");
    redink=false;
    blackink=false;
    greenink=false;
    blueink=true;
  }
    if ( mouseX>inktx  && mouseX<inktx+inktxx  && mouseY>inkty && mouseY<inkty+inktyy) {
    thickink=true;
}
}
