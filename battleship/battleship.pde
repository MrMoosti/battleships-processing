/* 
 * Title: SPAD - Zeeslag 
 * Author: M.E. Yilmaz
 * Class: ITA-1C
 * Date: 10-15-2020
 */
 
 
final int STARTSCREEN = 0;
final int GAMESCREEN = 1;
final int ENDSCREEN = 2;

int currentScreen = 0;
 
void setup()
{
  settings();
}

void settings()
{
  size(500, 500);
}

void draw()
{
  switch(currentScreen)
  {
    case STARTSCREEN:
      showStartScreen();
    break;
    case GAMESCREEN:
      gameScreenSetup();
    break;
    case ENDSCREEN:
      endScreenSetup();
    break;
  }
}

void mousePressed()
{
  
}

void mouseDragged()
{
  
}
