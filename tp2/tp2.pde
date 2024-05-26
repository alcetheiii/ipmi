//alex sena
//tp2 comision 1
/*
 Hecho en Processing 3.5.4
 por limitaciones de Hardware
*/
 
 
 
int currentScene = 0;
int fme = 0;
//Primer Escena
PImage bg1;
PImage banner;
PImage logo;
int banY = 0;
//Segunda Escena
PImage bgscn2;
PImage jakeJump0;
PImage jakeJump1;
PImage jakeJump2;
PImage cloud;
PImage moon;
PImage jakeStep0;
PImage jakeStep1;
//Tercer Escena
PImage jakeHead0;
PImage jakeHead1;
PImage jakeHead2;
PImage jakeText0;//por alguna razon, la fuente usada en esta escena esta dibujada a mano
PImage jakeText1;
//Cuarta Scena
PImage finnFace0;
PImage finnFace1;
PImage finnFace2;

PImage finnText0;
PImage finnText1;
PImage finnText2;
//Quinta Escena
PImage squadUp0;
PImage squadUp1;
PImage logoNoSword;
PImage sword;
PImage logoOverlay;
PImage bgScn5;
Boolean active = false;
float swordX = 0;
//Funciones
void setup() {
  size(640, 480);
  //1
  bg1 = loadImage("1stbackground.png");
  banner = loadImage("banderin.png");
  logo = loadImage("logo.png");
  //2
  bgscn2 = loadImage("bgscn2.png");
  jakeJump0 = loadImage("jakejump0.png");
  jakeJump1 = loadImage("jakejump1.png");
  jakeJump2 = loadImage("jakejump2.png");
  cloud = loadImage("cloud.png");
  moon = loadImage("moon.png");
  jakeStep0 = loadImage("jakestep0.png");
  jakeStep1 = loadImage("jakestep1.png");
  //3
  jakeHead0 = loadImage("jakesface0.png");
  jakeHead1 = loadImage("jakesface1.png");
  jakeHead2 = loadImage("jakesface2.png");
  jakeText0 = loadImage("Scn3txt0.png");
  jakeText1 = loadImage("Scn3txt1.png");
  //4
  finnFace0 = loadImage("finnspr0.png");
  finnFace1 = loadImage("finnspr1.png");
  finnFace2 = loadImage("finnspr2.png");
  finnText0 = loadImage("scn4txt0.png");
  finnText1 = loadImage("scn4txt1.png");
  finnText2 = loadImage("scn4txt2.png");
  //5
  squadUp0 = loadImage("squadup0.png");
  squadUp1 = loadImage("squadup1.png");
  logoNoSword = loadImage("logonosword.png");
  sword = loadImage("sword.png");
  logoOverlay = loadImage("logooverlay.png");
  bgScn5 = loadImage("bgscn5.png");
}

void draw() {
  //Escena 1 (3)
  if (currentScene == 0) {
    if (banY > -200) {
      banY = banY - 5;
    } else if (banY >= -200) {
      fme++;
      if (fme >= 50) {
        currentScene = 1;
        fme = 0;
        banY = 0;
      }
    }
    image(bg1, 0, 0);
    image(banner, 0, 200 + banY);
    image(logo, 0, 0);
  }
  //Escena 2(5)
  else if (currentScene == 1) {
    swordX = swordX + 0.5;
    if (fme >= 0 && fme < 40) {
      image(bgscn2, 0, 0);
      image(jakeJump0, 0, 0);
      fme++;
    } else if (fme >= 40 && fme < 80) {
      image(bgscn2, 0, 0);
      image(jakeJump1, 0, 0);
      fme++;
    } else if (fme >= 80 && fme < 120) {
      image(bgscn2, 0, 0);
      image(jakeJump2, 0, 0);
      fme++;
    } else if (fme >= 120 && fme < 145) {
      background(33, 56, 180);
      image(moon, 0+swordX, 0);
      image(cloud, 0+swordX*4, 0);
      image(jakeStep0, 0, 0);
      fme++;
    } else if (fme >= 145 && fme < 160) {
      background(33, 56, 180);
      image(moon, swordX, 0);
      image(cloud, swordX*4, 0);
      image(jakeStep1, 0, 0);
      fme++;
    } else if (fme >= 160 && fme < 180) {
      background(33, 56, 180);
      image(moon, 0+swordX, 0);
      image(cloud, 0+swordX*4, 0);
      image(jakeStep0, 0, 0);
      fme++;
    } else if (fme >= 180) {
      currentScene = 2;
      fme = 0;
      swordX = 0;
    }
  }
  //Escena 3 (1)
  else if (currentScene == 2) {
    background(82, 247, 247);
    if (fme >= 0 && fme < 28) {
      image(jakeHead0, 0, 0);
      image(jakeText0, 0, 0);
      fme++;
    } else if (fme >= 28 && fme < 48) {
      image(jakeHead1, 0, 0);
      image(jakeText0, 0, 0);
      fme++;
    } else if (fme >= 48 && fme < 68) {
      image(jakeHead2, 0, 0);
      image(jakeText0, 0, 0);
      image(jakeText1, 0, 0);
      fme++;
    } else if (fme >= 68) {
      currentScene = 3;
      fme = 0;
    }
  }
  //Escena 4 (2)
  else if (currentScene == 3) {
    background(247, 82, 82);
    if (fme >= 0 && fme < 28) {
      image(finnFace0, 0, 0);
      image(finnText0, 0, 0);
      fme++;
    } else if (fme >= 28 && fme < 48) {
      image(finnFace1, 0, 0);
      image(finnText1, 0, 0);
      fme++;
    } else if (fme >= 48 && fme < 68) {
      image(finnFace2, 0, 0);
      image(finnText2, 0, 0);
      fme++;
    } else if (fme >= 68) {
      currentScene = 4;
      fme = 0;
    }
  }
  //Escena 5(4)
  else if (currentScene == 4) {
    image(bgScn5, 0, 0);
    if (fme >= 0 && fme < 48) {
      image(squadUp0, 0, 0);
      fme++;
    } else if (fme >= 48 && fme < 60) {
      image(squadUp1, 0, 0);
      fme++;
    } else if (fme >= 60 && fme < 120) {
      if (swordX >= 0 && swordX < 800) {
        image(squadUp1, 0, 0);
        image(logoNoSword, 100, 50, 440, 280);
        image(sword, -500+swordX, 50, 440, 280);
        image(logoOverlay, 100, 50, 440, 280);
        swordX = swordX + 200;
        if (swordX >= 800) {
          currentScene = 5;
          fme = 0;
          swordX = 0;
        }
      }
    }
  } else if ( currentScene == 5) {
    if (active = false) {   //el dibujo se renderiza una sola vez para evitar que el framerate caiga
      image(bgScn5, 0, 0);  //al menos para mi computadora
      image(squadUp1, 0, 0);
      image(logoNoSword, 100, 50, 440, 280);
      image(sword, 100, 50, 440, 280);
      image(logoOverlay, 100, 50, 440, 280);
      active = true;
    }
    fme++;
    if (fme == 240) {
      currentScene = 0;
    }
  }
}
