String title= "quit";
PFont quitButtonFont;
color blue = #000EFC; //Ink
color red = #FF0303;
color purple  = #F59DFF;

void quitButtonRect() {
  rect(width*18/20, height*0, width*2/20, height*2/20);
}
void quitButtonSetup() {
  quitButtonFont = createFont ("Impact", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  quitButtonRect(); //Quit Button
}

void quitButtonDraw() {
 
  if (mouseX >= width*19/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*1/20) {
    fill(red);
    quitButtonRect();
  } else {
    fill(purple);
    quitButtonRect();
  }

  //Text in Quit Button
  fill(blue); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(quitButtonFont, 20); //Change the number until it fits, largest font size
  text(title, width*18/20, height*0, width*2/20, height*2/20);
  fill(255); //Reset to white for rest of the program
}

void quitButtonMouseClicked() {
  if (mouseX >= width*18/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*2/20) {
    exit();
  }
}
