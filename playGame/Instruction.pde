int instructionWidth = 70;
int instructionHeight = 40;
int instructionX = 625 - instructionWidth - 10;
int instructionY = height - instructionHeight - 10;

boolean overInstructions()  {
  //if the mouse has clicked instructions button
  if (mouseX >= instructionX  && mouseX <= instructionX + instructionWidth && 
      mouseY >= instructionY && mouseY <= instructionY + instructionHeight) {
      //screen = 5 moves to instructions page
        screen = 5;
    return true;
  } else {
    return false;
  }
}

//sets up instructions page
void instructionsPage(){
  background(255);
  textSize(20);
  textAlign(CENTER);
  text("Instructions!", width/2 -10 , 30); 
  fill(#401F1F);
  textSize(15);
  String[] lines = loadStrings("instructions.txt");
  int y = 50;
  for (int i = 0; i < lines.length; i++){
        text(lines[i], 325, y);
        fill(#401F1F);
        y += 15;
    }
  rect(50, 50, optionsWidth, optionsHeight, 7);
  fill(0);
  textAlign(CENTER,CENTER);
  fill(100);
  textSize(10);
  text("Go Back", optionsWidth, optionsHeight);
  
  }