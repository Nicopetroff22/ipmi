boolean play = false;
boolean bajar = false;
boolean mover = false;
boolean finbatalla = false;
boolean reset = false;
boolean POKEDEX = false;
boolean bajaPokedex = false;

PImage kanto;
PImage pokemon;
PImage pikachu;
PImage miImagen;
PImage caterpie;
PImage pueblopaleta;
PImage profesoroak;
PImage pokedex;
PImage batallafinal;

PFont fuente;

int posX = 245;
int posY = 350;
int ancho = 150;
int alto = 70;
int tiempo;
int xpikachu = 0;
int xtext = 217;
int Frame;
int yCaterpie = -200;
int ytext = 230;
int inicioFrame;
int Cpueblopaleta = -220;
int Ctext = -400;
int inicioPueblo;
int Voak = 420;
int Vtext = 700;
int xPokedex = -500;
int iniciopokedex;
int iniciodebatalla = -300;
int textobatalla = - 380;


void setup() {
  size(640, 480);

  kanto = loadImage ("kanto.jpg");
  miImagen= loadImage("pokemon.jpg");
  pikachu = loadImage("pikachu.jpg");
  caterpie = loadImage ("caterpie.jpg");
  pueblopaleta = loadImage ("pueblopaleta.jpg");
  profesoroak = loadImage ("oak.jpg");
  pokemon = loadImage("kanto.jpg");
  pokedex = loadImage("pokedex.jpg");
  batallafinal = loadImage ("batallafinal.jpg");
  
  fuente = loadFont("BankGothicBT-Medium-48.vlw");
}



void draw() {
  background(255);
  
  textFont(fuente);
  textSize(32);
  if (play == false) {
    image(miImagen, 0, 0, 640, 250);
    fill(92, 92, 222);
    rect(posX, posY, ancho, alto);
    fill(255, 232, 23);
    textSize(40);
    text("PLAY", posX + 25, posY + 45);
  } else {
    background(0);
    
    image(kanto, 0, 0, 640, 480);
    image(pikachu, xpikachu, 0, 220, 150);

    fill(0);
    textSize(20);
    text("PIKACHU: Es el pokemon que lo eligio a Ash en el principio de la serie, y que lo va a acompañar el resto de su aventura, es tipo electrico y es el numero 25 en la pokedex", xtext, 50, 420, 300);

    if (frameCount - Frame > 300) {
      xpikachu = xpikachu -3;
      xtext = xtext +3;
      if (xpikachu > -220) {
      } else {
        image(caterpie, 0, yCaterpie, 220, 150);

        textSize(20);
        text("CATERPIE: fue uno de los primeros pokemones que atrapo Ash al iniciar la serie, tiene sus tres evoluciones, llamadas METAPOD Y BUTTERFREE, es tipo bicho y es el numero 10 en la pokedex", 230, yCaterpie, 420, 300);

        if (yCaterpie < 100) {
          yCaterpie = yCaterpie +2;
          ytext = ytext -2;
        }
        if ( bajar == false) {
          inicioFrame = frameCount;
          bajar = true;
        }

        if ( frameCount - inicioFrame > 300 && bajar == true) {
          yCaterpie = yCaterpie +2;
          ytext = ytext +2;
        }
       
        if (yCaterpie > 500) {
          image(pueblopaleta, Cpueblopaleta, 0, 220, 150);
          image(profesoroak, Cpueblopaleta, 220, 220, 130);
          fill(0);
          
          textSize(20);
          text("PUEBLO PALETA: es donde vive Ash, en el pueblo paleta se encuentra el profesor Oak, fue quien le entrego a Ash a pikachu. El profesor Oak se encarga de investigar a los pokemones", Ctext, 50, 420, 300);
          text("PROFESOR OAK: el profesor oak vive en pueblo paleta en el laboratorio de los pokemones, el se encarga de investigarlos, al dirigirte a pueblo paleta, el profesor Oak te va a dar un pokemon con el que podras iniciar una aventura junto a él", Cpueblopaleta + 230, 240,420, 200);
         
          
          if ( mover == false) {
            if (Cpueblopaleta < 0) {
              Cpueblopaleta = Cpueblopaleta +3;
              if(Voak > -10){
              Voak = Voak -3;
              }
              if (Vtext > 230){
                Vtext = Vtext -3;
              }
            }
          }
          if (Ctext < 230) {
            Ctext = Ctext +3;
          }
          if (Cpueblopaleta > 0 && mover == false) {
            inicioPueblo = frameCount;
            mover = true;
          }
          if (frameCount - inicioPueblo > 300 && mover == true) {
            Cpueblopaleta = Cpueblopaleta +3;
            Ctext = Ctext +3;
            
            if (Cpueblopaleta > 640){
            image (pokedex, 170, xPokedex, 300, 200);
            fill(0);
            textSize(20);
            text("POKEDEX: La pokedex sirve para guardar la informacion de los pokemones capturados, a los entrenadores les sirve porque les muestra toda la informacion de ese pokemon", 130, xPokedex + 230, 400, 200);
            
            if(POKEDEX== false){
            
            if(xPokedex < 70){
              xPokedex = xPokedex + 3;
            }else{
              
              iniciopokedex = frameCount;
              POKEDEX = true;
             }
            }
            if(POKEDEX == true && bajaPokedex == false){
            if (frameCount - iniciopokedex > 300){
              bajaPokedex = true;
            }     
           } 
            if(bajaPokedex == true){
             if(xPokedex < 700){ 
              xPokedex = xPokedex + 3;
              
             }
            }
              if(xPokedex > 500){
           image(batallafinal, 150, iniciodebatalla, 350, 220);
           fill(0);
           textSize(20);
           text("BATALLA FINAL: en esta batalla, Ash Ketchum se enfrenta al campeon invicto Lionel, Ash Ketchum le gana a Lionel y se consagra él campeon mundial", 130, textobatalla, 420, 200);

            if(iniciodebatalla < 100){ 
           iniciodebatalla = iniciodebatalla +3;
          textobatalla = textobatalla +3;
           } 
           else if(finbatalla == false){

            tiempo = frameCount;
            finbatalla = true;
           
           }
           if(finbatalla == true && frameCount - tiempo > 300){

            iniciodebatalla = iniciodebatalla +3;
            textobatalla = textobatalla +3;
            
            if (iniciodebatalla > 480)
            reset = true;
            
            if(reset){
            Boton(220, 200, 200, 80);        
          }
         }
        }
       }
      }
     }
    }
   }
  }
}
 void Boton(int x, int y, int alto , int ancho){

   if (reset){
   fill(92, 92, 222);
   rect (x, y, alto, ancho);
   
    fill(255, 232, 23);
   textSize (40);
   text("RESET", 275, 250);
  }     
 }





void mouseClicked () {
  if (mouseX > posX && mouseX < posX + ancho &&
    mouseY > posY && mouseY < posY + alto ) {

    play = true;

    Frame = frameCount;
  }
  if (mouseX > 220 && mouseX < 420 &&
  mouseY > 200 && mouseY < 280){
  
  play = false;
  reset = false;
  
   xpikachu = 0;
    xtext = 230;
    yCaterpie = -200;
    ytext = 230;
    Cpueblopaleta = -220;
    Ctext = -400;
    iniciodebatalla = -300;
    textobatalla = -380;
    xPokedex = -500;
    
    mover = false;
    bajar = false;
    finbatalla = false;
    POKEDEX = false; 
  }
}
