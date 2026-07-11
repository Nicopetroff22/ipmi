PImage imagen;

float tam = 50;
float rotacion = 0;

boolean modoRandom = false;
boolean azul = false;


//https://youtu.be/-LNHCx8HYHE

void setup() {
  size(800, 400);
  imagen = loadImage("imagen.jpg");
}

void draw() {
  image(imagen, 0, 0, 400, 400);

  pushMatrix();
  translate(650, 200);
  rotate(rotacion);
  Patron(0, 0);
  popMatrix();
}

void Patron(float centroX, float centroY) {

  for (int fila = -5; fila < 5; fila++) {
    for (int col = -5; col < 5; col++) {
      
      float x = centroX + col * tam;
      float y = centroY + fila * tam;
      float d = dist(mouseX, mouseY, x + 600, y + 200);
      float tam = calcularTam(d);
      
      if ((fila + col) % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      stroke(0,100, 255);
      rect(x, y, tam, tam);
      if ((fila + col) % 2 == 0) {
        if (azul) {
          fill(0, 26, 247);
        } else {
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
  float valor = map(distancia, 0, 300, tam * 1.4, tam);
  return valor;
}

void mousePressed() {
 azul = !azul; 
  modoRandom = !modoRandom;
}
void keyPressed() {

  if (key == 'a' || key == 'A') {
    tam = 50;
    rotacion = 0;
    modoRandom = false;
    azul = false;
  }
}
