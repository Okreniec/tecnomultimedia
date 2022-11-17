class Puntos {
  int Puntos;
  void mostrar() {
    if (Pantalla ==1) {
      textSize(12);
      text("Puntos:", 310, 10); 
      text(Puntos, 350, 10);
      fill(0);
    }
  }
}

class MP3 {

  void musica() {
    if (Pantalla == 1 && key == 'q') {
      sonido1.trigger();
    }
    if (Pantalla == 1 && key == 'w') {
      sonido2.trigger();
    }
    if (Pantalla == 1 && key == 'e') {
      sonido3.trigger();
    }
    if (Pantalla == 1 && key == 'r') {
      sonido4.trigger();
    }
  }
}
