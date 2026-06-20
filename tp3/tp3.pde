PImage imagen;

float tamBase = 50;
float rotacion = 0;

boolean modoRandom = false;
boolean ROJOS = false;

// https://youtu.be/-jwedjt42bw

void setup() {
  size(800, 400);
  imagen = loadImage("imagen.jpg"); 
}

void draw() {
  image(imagen, 0, 0, 400, 400);
  
 
  pushMatrix();
  translate(650, 200);
  rotate(rotacion);
  noRetornable(400, 0);
  popMatrix();
}

void noRetornable(float centroX, float centroY) {

  for (int fila = -5; fila < 5; fila++) {
    for (int col = -5; col < 5; col++) {

      float x = col * tamBase;
      float y = fila * tamBase;
      float d = dist(mouseX, mouseY, x + 600, y + 200);
      float tam = calcularTam(d);
      if ((fila + col) % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      noStroke();
      rect(x, y, tam, tam);
      if ((fila + col) % 2 == 0) {
        if (ROJOS){
        fill(255, 0, 0);
        }else{
        fill(255);
        }
        float interior;
        if (modoRandom) {
          interior = random(10, tam/2);
        } else {
          interior = tam/3;
        }
        rect(x + tam/2, y + tam/2, interior, interior);
   }
  }
 }
}


float calcularTam(float distancia) {
  float valor = map(distancia, 0, 300, tamBase * 1.4, tamBase);
  valor = constrain(valor, tamBase, tamBase * 1.4);
  return valor;
}

void mousePressed() {
 
  ROJOS = !ROJOS;
  modoRandom = !modoRandom;
  
}
void keyPressed() {

  if (key == 'a' || key == 'A') {
    rotacion = 2;
   tamBase = 50;
  rotacion = 0;
  modoRandom = false;
  ROJOS = false;

  }
}
