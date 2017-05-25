int instructionWidth = 70;
int instructionHeight = 40;
int instructionX = 625 - instructionWidth - 10;
int instructionY = height - instructionHeight - 10;

boolean overInstructions()  {
  if (mouseX >= instructionX  && mouseX <= instructionX + instructionWidth && 
      mouseY >= instructionY && mouseY <= instructionY + instructionHeight) {
    screen = 5;
    return true;
  } else {
    return false;
  }
}

void instructionsPage(){
  background(255);
  textSize(20);
  textAlign(CENTER);
  text("Instructions!", width/2 -20 , 30); 
  fill(#401F1F);
  textSize(15);
  String[] lines = loadStrings("instructions.txt");
  int y = 50;
  for (int i = 0; i < lines.length; i++){
        text(lines[i], 300, y);
        fill(#401F1F);
        y += 15;
    }
  }