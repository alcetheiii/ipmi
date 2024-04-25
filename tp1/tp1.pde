//sena alex
//tp1
//comision 1
/*
 NOTA IMPORTANTE:
 Programado en processing 3.5.4 por 
 limitaciones con el hardware
*/
PImage foto;

void setup(){
  size(800,400);
  foto = loadImage("timmie.png");
}
void draw(){
  //el color de las sabanas del fondo
  background(255,247,247);
  //poner la imagen a la izquierda
  image(foto,0,0,400,400);
  //dibujo a la derecha
  //Parte de atras
  
  //Base del dibujo
  noStroke();
  fill(0);
  quad(524,191,532,71,752,171,746,256);
  //Cola
  triangle(746,255,795,240,750,169);
  quad(765,229,763,248,800,246,800,227);
  triangle(772, 204, 771, 236, 797, 228);
  //Patita de atras
  triangle(657, 195, 721, 248, 639, 279);
  //pata derecha
  quad(537,183,444,148,451,133,525,148);
  
  //cabeza
  quad(528,63,585,78,578,142,509,122);
  triangle(574,135,585,79,624,110);
  triangle(529,64,489,109,522,112);
  fill(240,206,206);
  quad(509,120,575,131,550,160,517,148);
  fill(0);
  quad(519,120,562,124,538,142,527,138);
  
  //ojos
  fill(67,67,67);
  circle(566,109,15);
  circle(525,99,15);
  triangle(557,117,569,118,564,123);
  triangle(525,110,517,107,519,115);
  fill(0);
  //pata izquierda
  quad(574,205,525,183,463,186,455,201);
  
  
  print((mouseX)+"&"+mouseY+"\n");
}
