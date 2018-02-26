int screen = 0;
int logoCount = 0;
PFont Font;
PGraphics P1, P2, P3, P4, P5, BG, Arr1, Arr2;
int ArrowX1=-30, ArrowY1= 180, ArrowX2=620, ArrowY2= 200;
int sel1, sel2;
PGraphics T1, T2;
int TURN= 0;
int HPBAR1 = 300, HPBAR2 = 300;
String P1T = "JUGADOR 1", P2T = "JUGADOR 2";
String AT1, AT2, AT3, AT4, AT5, AT6;
void setup()
{

  size (800, 600);
  background (0);
  rectMode (CENTER);
  imageMode(CENTER);
  frameRate (24);
  P1 = createGraphics(800, 600);
  P2 = createGraphics(800, 600);
  P3 = createGraphics(800, 600);
  P4 = createGraphics(800, 600);
  P5 = createGraphics(800, 600);
  BG = createGraphics(800, 600);
  Arr1 = createGraphics(800, 600);
  Arr2 = createGraphics(800, 600);
  Font = loadFont ("FuturaBT-Book-48.vlw");
  textFont (Font);
}

void keyReleased ()
{

  if (screen == 0)
  {
    if (keyCode == ENTER)

    {
      screen = 1;
    }
  }

  // selection screen
  if (screen == 1)
  {

    // ARROW MOVE
    if (keyCode == 'd' || keyCode == 'D')
    {
      ArrowX1 += 130;
    }
    if (keyCode == 'a' || keyCode == 'A')
    {
      ArrowX1 -= 130;
    }
    if (keyCode == LEFT)
    {
      ArrowX2 -= 130;
    }
    if (keyCode == RIGHT)
    {
      ArrowX2 += 130;
    }

    //Selection 1

    if (keyCode == 'V' || keyCode == 'v')
    {
      if (ArrowX1 == -30)
      {
        sel1= 1;
      }
      if (ArrowX1 == 100)
      {
        sel1= 2;
      }
      if (ArrowX1 == 230)
      {
        sel1= 3;
      }
      if (ArrowX1 == 360)
      {
        sel1= 4;
      }
      if (ArrowX1 == 490)
      {
        sel1= 5;
      }
    }

    //Selection 2
    if (keyCode == 'P' || keyCode == 'p')
    {
      if (ArrowX2 == 100)
      {
        sel2= 1;
      }
      if (ArrowX2 == 230)
      {
        sel2= 2;
      }
      if (ArrowX2 == 360)
      {
        sel2= 3;
      }
      if (ArrowX2 == 490)
      {
        sel2= 4;
      }
      if (ArrowX2 == 620)
      {
        sel2= 5;
      }
    }

    if (screen == 1 && sel1 >= 1 && sel2 >= 1)
    {
      if (keyCode == ENTER)
      {
        screen = 2;
      }
    }


    fill(0);
    noStroke();
    rect(0, 0, 800, 600);
    beginShape();
    vertex(800, 600);
    vertex(0, 600);
    vertex(0, 547);
    vertex(70.7, 520.5);
    vertex(729.3, 520.5);
    vertex(800, 547);
    endShape(CLOSE);
    beginShape();
    vertex(729.3, 520.5);
    vertex(729.3, 0);
    vertex(800, 0);
    vertex(800, 547);
    endShape(CLOSE);
    beginShape();
    vertex(70.7, 520.5);
    vertex(70.7, 0);
    vertex(0, 0);
    vertex(0, 547);
    endShape(CLOSE);
    beginShape();
    vertex(78.8, 517.4);
    endShape();
    rect(105.7, 57.7, 592.7, 397.3);
    rect(118.3, 66.7, 567.3, 380.3);
    rect(0, 528, 800, 72);
    rect(0, 502, 800, 45);
    ellipse(142.5, 594, 24.5, 59);
    ellipse(255.5, 594, 24.5, 59);
    ellipse(357.5, 594, 24.5, 59);
    ellipse(455.5, 594, 24.5, 59);
    ellipse(549.5, 594, 24.5, 59);
    ellipse(660, 594, 24.5, 59);
    ellipse(148.4, 598, 24.1, 55);
    ellipse(259.6, 598, 24.1, 55);
    ellipse(359.9, 598, 24.1, 55);
    ellipse(456.4, 598, 24.1, 55);
    ellipse(548.9, 598, 24.1, 55);
    ellipse(657.6, 598, 24.1, 55);
    beginShape();
    vertex(337.3, 320.1);
    bezierVertex(337.3, 320.1, 335.6, 315.7, 335.6, 313.3);
    bezierVertex(335.5, 299.2, 335.6, 285, 335.6, 270.9);
    bezierVertex(335.6, 269.3, 336.1, 267.8, 336.4, 266.3);
    bezierVertex(338.1, 264.2, 337.5, 210.6, 338.4, 185.8);
    bezierVertex(341.8, 192.9, 345.3, 200.1, 349, 207.8);
    bezierVertex(362.9, 191.2, 380.8, 184, 402, 184);
    bezierVertex(423.1, 184, 441, 190.9, 455.1, 207.8);
    bezierVertex(458.8, 200.2, 462.3, 192.9, 465.9, 185.5);
    bezierVertex(466.3, 185.5, 466.8, 185.6, 467.2, 185.6);
    bezierVertex(467.2, 212.3, 467.2, 239, 467.2, 265.7);
    bezierVertex(468.8, 268.1, 469, 270.8, 469, 273.6);
    bezierVertex(469, 286.2, 469, 298.8, 469, 311.3);
    bezierVertex(469, 314.3, 468.5, 317.2, 467.2, 319.8);
    bezierVertex(467.2, 349.8, 467.1, 379.8, 467.1, 409.8);
    bezierVertex(423.9, 409.8, 380.8, 409.8, 337.6, 409.8);
    bezierVertex(337.5, 389.4, 337.3, 320.1, 337.3, 320.1);
    endShape();
    beginShape();
    vertex(337.6, 325.6);
    bezierVertex(339.1, 324.7, 340.1, 325.1, 340.9, 326.6);
    bezierVertex(350.4, 344, 359.9, 361.4, 369, 379.1);
    bezierVertex(357.1, 370.2, 349, 357.5, 337.6, 348.2);
    bezierVertex(337.6, 340.7, 337.6, 333.1, 337.6, 325.6);
    endShape();
    beginShape();
    vertex(336.3, 266.2);
    bezierVertex(337.6, 267.2, 337.4, 268.6, 337.4, 270);
    bezierVertex(337.4, 286.7, 337.3, 303.4, 337.3, 320.1);
    bezierVertex(330.7, 315.8, 327.9, 309.7, 327.9, 301.8);
    bezierVertex(327.9, 295.9, 327.6, 289.9, 326.5, 284.2);
    bezierVertex(325.2, 277.3, 327.6, 272.6, 333.1, 268.8);
    bezierVertex(334.2, 268, 335.2, 267.1, 336.3, 266.2);
    endShape();
    beginShape();
    vertex(467, 319.9);
    bezierVertex(467, 301.8, 467, 283.7, 467.1, 265.7);
    bezierVertex(469.9, 268.1, 472.6, 270.7, 475.6, 273);
    bezierVertex(477.5, 274.5, 478.1, 276.2, 477.9, 278.6);
    bezierVertex(477, 289, 476.4, 299.4, 475.4, 309.8);
    bezierVertex(474.8, 314.7, 470.1, 316.8, 467, 319.9);
    endShape();
    beginShape();
    vertex(349.6, 272.5);
    bezierVertex(365.1, 274.8, 380.4, 277.1, 395.7, 279.4);
    bezierVertex(393.5, 287.6, 386, 292.4, 375.1, 292.6);
    bezierVertex(363, 292.9, 353.5, 285.6, 349.6, 272.5);
    endShape();
    beginShape();
    vertex(408, 279.5);
    bezierVertex(423.6, 277.1, 438.8, 274.8, 454, 272.5);
    bezierVertex(452.5, 282.3, 443.2, 291.2, 433.6, 292.3);
    bezierVertex(421, 293.8, 412.1, 289.5, 408, 279.5);
    endShape();
    beginShape();
    vertex(465.9, 324.2);
    bezierVertex(466.2, 324.3, 466.6, 324.4, 466.9, 324.5);
    bezierVertex(466.9, 331.9, 466.9, 339.4, 466.9, 346.8);
    bezierVertex(466.9, 348, 467.1, 349.2, 466, 350.1);
    bezierVertex(455.4, 359, 446.9, 370, 437.1, 379.7);
    bezierVertex(436.7, 379.4, 455.9, 342.4, 465.9, 324.2);
    endShape();


    // battle screen
  }

  if (screen == 2)
  {
    if (HPBAR1 == 0 || HPBAR2 == 0)
    {
      if (keyCode == ENTER)
      {
        screen = 0;
      }
    }
    if (keyCode == 'r' || keyCode == 'R')
    { 
      screen = 1;
    }
    if (HPBAR1 > 0 && HPBAR2 > 0)
    {
      if (TURN == 0)
      {

        if (keyCode == '1')
        {
          HPBAR1 -= 50;
          TURN += 1;
        }

        if (keyCode == '2')
        {
          HPBAR1 -= 30;
          TURN += 1;
        }

        if (keyCode == '3')
        {
          HPBAR1 -= 80;
          TURN += 1;
        }
      }
      if (TURN == 1)
      {
        if (keyCode == '8')
        {
          HPBAR2 -= 50;
          TURN -=1;
        }
        if (keyCode == '9')
        {
          HPBAR2 -= 50;
          TURN -=1;
        }

        if (keyCode == '0')
        {
          HPBAR2 -= 50;
          TURN -=1;
        }
      }
    }
  }
}

void draw()
{
  drawP1();
  drawP2();
  drawP3();
  drawBG();
  drawP4();
  drawP5();
  drawArr1();
  drawArr2();

  if ( screen == 0)
  {
    HPBAR1 = 300;
    HPBAR2 = 300;
    TURN = 0;
    ArrowX1 = -30;
    ArrowX2 = 620;
    sel1 = 0;
    sel2 = 0;
    rectMode (CENTER);
    background(0);

    fill (0);
    logoCount += 3;
    stroke (255, 0, 0);
    textSize(30);

    if (logoCount >= 20)
    {
      rect (width/2, height/2-150, width/2, 100);
      fill (255, 0, 0);
      text ("CINEGAMEX", width/2-80, height/2-140);
    }
    if (logoCount >= 100)
    {
      logoCount = 0;
    }
    textSize (15);
    fill(0);
    stroke(0, 0, 255);
    rect (width/2, height/2+80, width/2, 100);
    fill(0, 0, 255);
    text( "PRESS ENTER TO START", width/2-80, height/2+90);
  }

  if (screen == 1)
  {
    if (ArrowX1 <= -30)
    {
      ArrowX1 = -30;
    }

    if (ArrowX1 >= 490)
    {
      ArrowX1 = 490;
    }

    if (ArrowX2 >= 620)
    {
      ArrowX2 = 620;
    }

    if (ArrowX2 <= 100)
    {
      ArrowX2 = 100;
    }



    rectMode(CORNER);
    imageMode(CORNER);
    background(0);
    image (BG, 0, 0);
    fill(#F9F7E4);
    textSize(50);
    text("CINEGAMEX", width/2-80, 110);
    textSize(14);
    fill (#539CBC);
    text ("Jugador 1 Presiona 'A' o 'D' para moverte y 'V' para escoger", 20, 170);
    fill(#442523);
    text ("Jugador 2 Presiona '<-' o '->' para moverte y 'P' para escoger", 420, 170);

    pushMatrix();
    scale(0.9);
    image (P1, 85, 230);
    image (P2, 225, 230);
    image (P3, 365, 230);
    image (P4, 505, 230);
    image (P5, 655, 230);
    popMatrix();
    noStroke();
    fill(#393A3E);
    rect(71, 398, 651, 137);
    fill(#BDCDB9);
    rect(60, 398, 670, 22);
    image (Arr1, ArrowX1, ArrowY1);
    image (Arr2, ArrowX2, ArrowY2);


    if (sel1 >= 1 && sel2 >= 1)
    {
      textSize(20);
      text ("¡PRESIONA ENTER PARA COMBARTIR!", width/2-150, 500);
    }
  }

  if (screen == 2)
  {

    if (HPBAR1 <= 0)
    {
      HPBAR1 = 0;
    }
    if (HPBAR2 <= 0)
    {
      HPBAR2 = 0;
    }
    if ( sel1 == 1)
    {
      P1T = "STAFF";
      T1 = P1;
      AT1 = "(1) GOLPE DE PALOMITAS";
      AT2 = "(2) LANZAMIENTO DE CHAROLA";
      AT3 = "(3)CANCELACIONES";
    }
    if ( sel1 == 2)
    {
      P1T = "COORDINADOR";
      T1 = P2;
      AT1 = "(1) ACTA";
      AT2 = "(2) SIN BREAK";
      AT3 = "(3) FALTANTES";
    }
    if ( sel1 == 3)
    {
      P1T = "GERENTE";
      T1 = P3;
      AT1 = "(1) BAJA";
      AT2 = "(2) FALTANTE";
      AT3 = "(3) BLOQUEO";
    }
    if ( sel1 == 4)
    {
      P1T = "LIMPIEZA";
      T1 = P4;
      AT1 = "(1) PISO RESBALOSO ";
      AT2 = "(2) TRAPIADOR";
      AT3 = "(3) ASPIRADORA";
    }
    if ( sel1 == 5)
    {
      P1T = "INVITADO";
      T1 = P5;
      AT1 = "(1) QUEJAS";
      AT2 = "(2) ACCIDENTES";
      AT3 = "(3) DEMANDAS";
    }

    if ( sel2 == 1)
    {
      P2T = "STAFF";
      T2 = P1;
      AT4 = "(1) GOLPE DE PALOMITAS";
      AT5 = "(2) LANZAMIENTO DE CHAROLA";
      AT6 = "(3)CANCELACIONES";
    }
    if ( sel2 == 2)
    {
      P2T = "COORDINADOR";
      T2 = P2;
      AT4 = "(1) ACTA";
      AT5 = "(2) SIN BREAK";
      AT6 = "(3) FALTANTES";
    }
    if ( sel2 == 3)
    {
      P2T = "GERENTE";
      T2 = P3;
      AT4 = "(1) BAJA";
      AT5 = "(2) FALTANTE";
      AT6 = "(3) BLOQUEO";
    }
    if ( sel2 == 4)
    {
      P2T = "LIMPIEZA";
      T2 = P4;
      AT4 = "(1) PISO RESBALOSO ";
      AT5 = "(2) TRAPIADOR";
      AT6 = "(3) ASPIRADORA";
    }
    if ( sel2 == 5)
    {
      P2T = "INVITADO";
      T2 = P5;
      AT4 = "(1) QUEJAS";
      AT5 = "(2) ACCIDENTES";
      AT6 = "(3) DEMANDAS";
    }





    // P1 
    drawBG2();
    pushMatrix();
    image (T1, 500, 500);
    popMatrix();
    pushMatrix();
    imageMode(CENTER);
    scale(-1, 1);
    image (T2, -300, 500);
    popMatrix();
    strokeWeight(3);
    stroke (255);

    // UI
    rectMode (CENTER);
    fill (0, 0, 255);
    rect (200, 80, 300, 50);
    fill (255, 0, 0);
    rect (600, 80, 300, 50);

    textSize(30);
    fill(255);
    text (P1T, 80, 90);
    text (P2T, 510, 90);
    //BARRAS DE VIDA 1
    rectMode(CORNER);
    fill(255, 0, 0 );
    rect (30, 130, 300, 30);
    fill(0, 255, 0 );
    rect (30, 130, HPBAR1, 30);
    //BARRA DE VIDA 2
    fill(255, 0, 0);
    rect (470, 130, 300, 30);
    fill(0, 255, 0);
    rect (470, 130, HPBAR2, 30);

    fill(20, 20, 130);
    rect (0, 250, 130, 300);
    fill(130, 20, 20);
    rect (670, 250, 130, 300);
    pushMatrix();
    fill(255);
    textSize(11);
    text (AT1, 10, 300, 130, 300);
    text (AT2, 10, 350, 130, 300);
    text (AT3, 10, 400, 130, 300);
    text (AT4, 680, 300, 130, 300);
    text (AT5, 680, 350, 130, 300);
    text (AT6, 680, 400, 130, 300);
    popMatrix();

    textSize (30);
    if (HPBAR1 ==0)
    {
      fill(255);
      text ("GANA JUGADOR 2", width/2-150, height/2);      
      text ("PRESIONA ENTER PARA EMPEZAR DE NUEVO", width/2-300, height/2+100);
    }
    if (HPBAR2 == 0)
    {
      fill(255);
      text ("GANA JUGADOR 1", width/2-150, height/2);
      text ("PRESIONA ENTER PARA EMPEZAR DE NUEVO", width/2-300, height/2+100);
    }
  }
}