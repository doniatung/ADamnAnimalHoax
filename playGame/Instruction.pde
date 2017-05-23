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
  textSize(32);
  text("Instructions!", width/2 -100 , 40); 
  fill(0, 102, 153);
  textSize(15);
  String[] lines = loadStrings("instructions.txt");
  for (int i = 0; i < lines.length; i++){
        text(lines[i], 100, 300);
        fill(#401F1F);
    }
  }