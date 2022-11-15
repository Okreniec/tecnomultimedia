class Vida {
  int Vidas;
  Vida() {
    Vidas = 4;
  }

  void mostrar() {
    if (Vidas < 4) {
      text("vidas:", 25, 10);
      text(Vidas, 65, 10);
    }
    if (Vidas <= 0) {
      PantallaPerder();
      Pantalla = 2;
    }
  }

  int PerderVida(int n) {
    Vidas --;
    return n;
  }

  void PantallaPerder() {
    background(255, 0, 0);
    fill(255);
    textSize(20);
    text("¡perdiste!", 150, 180);
    text("puntos: ", 140, 210);
    text(puntos.Puntos, 240, 210);
    text("'Espacio' para reiniciar", width/2-100, height-50);
  }
}
