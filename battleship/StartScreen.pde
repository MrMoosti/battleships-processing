boolean startScreenRunning = false;
int[] startButton = new int[4];
int[][] arrowSelectButton = new int[2][6];
int[][] defenseSystemButtons = new int [5][4];
int[][] fieldSizeButtons = new int [3][4];

final int[] DEFENSE_SYSTEM_AMOUNT = {10, 20, 30, 40, 50};
final int[] FIELD_SIZE_AMOUNT = {10, 15, 20};
final int[] PLAYER_AMOUNT = {1, 2};

int playerAmountIndex = 0;

void showStartScreen()
{
  clear();
  background(#FFFFFF);

  drawStartScreenModules(18, 15);
}

void startScreenMousePressed()
{
}

void drawStartScreenModules(int fontSize, int margin)
{
  int oneFourthHeigt = height / 4;
  int oneFourthWidth = width / 4;

  textSize(fontSize);
  textAlign(LEFT, CENTER);
  fill(#000000);

  //Players
  text("PLAYER AMOUNT", margin, fontSize);
  //drawPlayerAmountArrowSelectButtons()

  //Defense Systems
  text("DEFENSE SYSTEM AMOUNT", margin, oneFourthHeigt + fontSize);
  int xDefenseSystem = margin;
  int yDefenseSystem = oneFourthHeigt + fontSize * 2;
  int defenseSystemBtnWidth = ((width / 2) - margin) / defenseSystemButtons.length;
  int defenseSystemBtnHeight = oneFourthHeigt / 2;
  stroke(#00FF00);
  drawDefenseSystemButtons(xDefenseSystem, yDefenseSystem, defenseSystemBtnWidth, defenseSystemBtnHeight, fontSize);


  //Field size
  fill(#000000);
  textAlign(LEFT, CENTER);
  text("FIELD SIZE", margin, oneFourthHeigt + oneFourthHeigt + fontSize);
  int xFieldSizeButtons = margin;
  int yFieldSizeButtons = oneFourthHeigt * 2 + fontSize * 2;
  int fieldSizeBtnWidth = ((width / 2) - margin) / fieldSizeButtons.length;
  int fieldSizeBntHeight = oneFourthHeigt / 2;
  drawFieldSizeButtons(xFieldSizeButtons, yFieldSizeButtons, fieldSizeBtnWidth, fieldSizeBntHeight, fontSize);

  //StartButton
  fill(#FF0000);
}

void drawDefenseSystemButtons(int x, int y, int w, int h, int fontSize)
{  
  for (int i = 0; i < defenseSystemButtons.length; i++)
  {
    defenseSystemButtons[i] = makeButton(x, y, w, h);
    drawButton(defenseSystemButtons[i], DEFENSE_SYSTEM_AMOUNT[i] + "", fontSize);
    x += w;
  }
}

void drawFieldSizeButtons(int x, int y, int w, int h, int fontSize)
{
  for(int i = 0; i < fieldSizeButtons.length; i++)
  {
    fieldSizeButtons[i] = makeButton(x, y, w, h);
    drawButton(fieldSizeButtons[i], FIELD_SIZE_AMOUNT[i] + " x " + FIELD_SIZE_AMOUNT[i], fontSize);
    x += w;
  }
}

void drawPlayerAmountArrowSelectButtons(int x1, int y1, int x2, int y2, int x3, int y3)
{
  //for(int i = 0; i < arrowSelectButton.length; i++)
  //{
  //  arrowSelectButton[i] = makeArrowSelectButton(x1, y1, x2, y2, x3, y3);

  //  //x += w;
  //}
  //drawArrowSelectButton(arrowSelectButton, PLAYER_AMOUNT, playerAmountIndex);
}
