class Vida {
  int vidas;
  Vida() {
    vidas=4;
  }
  void mostrar() {
    if (vidas<4) {
      text("vidas:", 25, 10);
      text(vidas, 65, 10);
    }
    if (vidas==0) {
      pantallaperder();
      pantalla=1;
    }
  }

  void perderVida() {
    vidas --;
  }
}
