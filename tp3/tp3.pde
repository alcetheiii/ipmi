//tp3 comision 1
//Alex Sena
/*
Link del video: https://youtu.be/dQw4w9WgXcQ?si=8B2BERoeWvfHuQvI
 */


PImage izqImagen;
float easing = 0.5;
float x, y;
int center = 200;
int cant = 2;
int tam;
int cresult = coinflip();

void setup() {
  size(800, 400);
  izqImagen = loadImage("refimage.png");
  tam = 400/cant;
  x= 90.0;
  y= 10.0;
}

void draw() {
  //lado izquierdo
  background(105);
  image(izqImagen, 0, 0, 400, 400);

  //Lado derecho
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      limites((400)+i*tam, (600)+i*tam, (0)+j*tam, (200)+j*tam, 7);
    }
  }
  println(int(random(0, 2)));
  circle(mouseX,mouseY,7);
}

void limites(int comienzoX, int finalX, int comienzoY, int finalY, int secciones) {
  for (float i = 0; i<=12; i++) {
    float ease = i/22;
    if (cresult==0) {
      if (i%2==1) {
        fill(0);
      } else {
        fill(255);
      }
    } else {
      if (i%2==1) {
        fill(255);
      } else {
        fill(0);
      }
    }
    if (mouseX>=comienzoX && mouseX <= finalX && mouseY >= comienzoY && mouseY < finalY) {
      x = mouseX-(finalX-comienzoX)/2-comienzoX;
      y = mouseY-(finalY-comienzoY)/2-comienzoY;
    }
    quad(comienzoX+(x*ease)+(secciones*i), comienzoY+(y*ease)+(secciones*i), /**/finalX+(x*ease)-(secciones*i), comienzoY+(y*ease)+(secciones*i), /**/finalX+(x*ease)-(secciones*i), finalY+(y*ease)-(secciones*i), /**/comienzoX+(x*ease)+(secciones*i), finalY+(y*ease)-(secciones*i));
  }
}

void keyPressed() {
  mouseX = 0;
  mouseY = 0;
  x = 90;
  y = 10;
  cresult = coinflip();
}

int coinflip() {
  if (int(random(0, 2)) == 0) {
    return 1;
  } else {
    return 0;
  }
}
