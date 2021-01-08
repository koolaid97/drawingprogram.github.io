
color ink, black=#000000;
color green= #1CFF34;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
float cbox2X1, cbox2Y1, cbox2X2, cbox2Y2, cbox1X1, cbox1X2, cbox1Y1, cbox1Y2;
Boolean draw=false;
Boolean greenink=false, blackink=false;

void setup() {
  //fullScreen();
  size(600, 500);

  drawingSurfaceX = width*1/4;
  drawingSurfaceY = height*1/5;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
  //

  drawingDiameter = width*4/100;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  cbox1X1 = width*49/64;
  cbox1Y1 = height*2/30;
  cbox1X2 = width*2/64;
  cbox1Y2 = height*1/30;
  //
  cbox2X1 =  width*52/64;
  cbox2Y1 = height*1/18;
  cbox2X2 = width*2/64;
  cbox2Y2 = height*1/30;
}

void draw() {

  if (greenink == true && blackink == false) {
    ink = green;
  } else { 
    ink = black;
  }




  if (draw == true && mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight  ) {
    fill(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }

  fill(black);
  rect(cbox1X1, cbox1X2, cbox1Y1, cbox1Y2);
  
  //

  fill(green);
  rect(cbox2X1, cbox2Y1, cbox2X2, cbox2Y2);




  //
}

void mousePressed() {
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }



  if ( mouseX>cbox2X1  && mouseX<cbox2X1+cbox2X2  && mouseY>cbox2Y1 && mouseY<cbox2Y1+cbox2Y2) {

    blackink=false;
    greenink=true;
  }
  //





  if ( mouseX>cbox1X1  && mouseX<cbox1X1+cbox1X2  && mouseY>cbox1Y1 && mouseY<cbox1Y1+cbox1Y2) {
    greenink=false;
    blackink=true;
  }

  //
}
