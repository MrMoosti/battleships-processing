int[] makeButton(int x, int y, int w, int h)
{
  return new int[]{x, y, w, h};
}

void drawButton(int[] button, String text, int fontSize)
{
  fill(#000000);
  rect(button[0], button[1], button[2], button[3]);
  
  textSize(fontSize);
  textAlign(CENTER, CENTER);
  fill(#FFFFFF);
  text(text, button[0] + button[2] / 2, button[1] + button[3] / 2);
}

void clickedOnButton(int[] button)
{
  
}
