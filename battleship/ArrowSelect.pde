int[] makeArrowSelectButton(int x1, int y1, int x2, int y2, int x3, int y3)
{
  return new int[]{x1, y1, x2, y2, x3, y3};
}

void drawArrowSelectButton(int[][] arrowSelect)
{
  fill(#000000);
  stroke(#00FF00);
  triangle(arrowSelect[0][0], arrowSelect[0][1], arrowSelect[0][2], arrowSelect[0][3], arrowSelect[0][4], arrowSelect[0][5]);
  triangle(arrowSelect[1][0], arrowSelect[1][1], arrowSelect[1][2], arrowSelect[1][3], arrowSelect[1][4], arrowSelect[1][5]);
  
  //int xText = 
  //text(content[selectedIndex] + "",  
}

void clickedOnArrowSelect(int[] arrowSelect, int[] content, int selectedIndex)
{
  
}
