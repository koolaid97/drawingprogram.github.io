
String title8= "X";


void quitButtonSetup() {
  titleFont = createFont ("Impact", 55); 
}

void quitButtonDraw() {
  if (mouseX>width*14/16 && mouseX<width && mouseY>0 && mouseY<height*2/16) { //Hover Over
    fill(yellow);
    rect(width*14/16, height*0/16, width*2/16, height*2/16);
  } else {
    fill(purple);
    rect(width*14/16, height*0/16, width*2/16, height*2/16);
  }

 
  fill(green); 
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(titleFont, 55); //Change the number until it fits, largest font size
  text(title8, width*14/16, height*0/16, width*2/16, height*2/16);
  fill(255); //Reset to white for rest of the program
}

void quitButtonMouseClicked() {
  if (mouseX>width*14/16 && mouseX<width && mouseY>0 && mouseY<height*2/16) {
    exit();
  }
}
