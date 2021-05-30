
import g4p_controls.*;
int Resultado = 0;
PImage UI;
PImage Dado;
int apertado = 0;


GButton botDado;

void setup() {
  textFont(createFont("SansSerif", 40));
  surface.setTitle ("Ficha João Esteves");
 size (1198, 801);
 UI = loadImage("InterfaceFicha.png");
 Dado = loadImage("d20.png");

  botDado = new GButton(this, 520, 211, 202, 50, "Rolar");

}

void draw(){

  image(UI, 0, 0);
  image(Dado, 530, 40, Dado.width/3.5, Dado.height/3.5); 
  

  
  text(Resultado, 599, 135);
  

}
public void handleButtonEvents(GButton button, GEvent event) {
 if(button == botDado){
   Rolar();
  }
}


void Rolar(){

 Resultado = int(random(1, 21));


}
