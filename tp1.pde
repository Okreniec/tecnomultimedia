//Okreniec, Ivan     Legajo: 91341/0      comisión 3      tp1
int tiempo;
PFont fuente;

int transparencia=0;
int x_text=200;

PImage imagen0;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PImage imagen6;
PImage imagen7;

boolean boton=false;

int x=300;
int y=350;
int w=90;
int h=40;

void setup(){
  size(400,400);
  textSize(20);
  tiempo=0;
  fuente = loadFont("ArialNarrow-48.vlw");
}

void draw(){
  background(0);
  textFont(fuente);
  tiempo+=2;         // * _-_-_-_-_-_-_-_-_-_-AUMENTAR LA VELOCIDAD ACÁ_-_-_-_-_-_-_-_-_-_- *
  textAlign(CENTER, CENTER);
  fill(255);
  Imagenes();
  botonera();
  titulo();
  protagonistas_principales();
  protagonistas_secundarios();
  Musica();
}

void mousePressed(){
  if((mouseX > x) && (mouseX < x+w) && (mouseY > y) && (mouseX < y+w)){
    if(boton){
      boton=false;
    }else{
      tiempo=+1;
      boton=true;
      transparencia=0;
      x_text=200;
      textSize(20);
    }
  }
}

void titulo(){
  textAlign(CENTER);
  if(tiempo<=100){ //si tiempo es menor o igual a cien aumentar transparencia
    transparencia+=2;
  }else if((tiempo>=200) && (tiempo<=300)){ //si tiempo es mayor o igual a docientos y menor o igual a 300 reducir transparencia
    transparencia-=2;
  }else if(tiempo>=301){ //si tiempo es mayor o igual a trecientos uno aumentar transparencia es docienots cincuenta y cinco y x_text es 800 (eje x del texto)
    transparencia=255;
    x_text=800;
  }
  fill(255,255,255,transparencia);
  text ("Tp #1 - Animando con código", x_text, 200);
}

void protagonistas_principales(){
  textAlign(CENTER);
  if(tiempo>=301){
    textSize(14);
    text ("Cast", 200, 770+(-tiempo));
    text ("(in order of appearance)", 200, 790+(-tiempo));
    text ("Ennis Del Mar    HEATH LEDGER", 200, 830+(-tiempo));
    text ("‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍Jack Twist    JAKE GYLLENHALL", 200, 850+(-tiempo));
    text ("‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍Joe Aguirre    RANDY QUAID", 200, 870+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎  ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍Waitress    VALERIE PLANCHE", 200, 890+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍ ‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‎‍‍‍‍ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍ ‍‍Basque    DAVID TRIMBLE", 200, 910+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍ ‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‎‍‍‍‍ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍ ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍ ‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‎‍‍‍‍ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍  Alma    MICHELLE WILLIAMS", 200, 930+(-tiempo));
    text ("‍‍‍‍‍‎‍‍‍Jolly Minister    LARRY REESE ‍‍‍‍‍‎", 200, 950+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍ ‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‎‍‍‍‍ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍  ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‎‍‍Timmy    MARTY ANTONINI", 200, 970+(-tiempo));
    text ("‍‍‍‍‍‎‍‍‍‍‍‎Rodeo Clown    TOM CAREY‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎  ", 200, 990+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‍‍Lureen Newsome    ANNE HATHAWAY", 200, 1010+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎ Announcer    DUVAL LANG", 200, 1030+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‍‍Alma Jr. age 3    HANNAH STEWART", 200, 1050+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎  ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎‍‍‍‍‍‎‍‍‍‍‍‍‍Monroe    SCOTT MICHAEL", 200, 1070+(-tiempo));
    text ("‍‍‍‍‍‍‍Fayette Newsome    MARY LIBOIRON‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎", 200, 1090+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎ L. D. Newsome    GRAHAM BECKEL", 200, 1110+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‍‍Ennis, age 9    KADE PHILIPS", 200, 1130+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‍‍K. E. Del Mar, age 11    STEFFEN COLE MOSER", 200, 1150+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎  ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ Jenny, age 4    BROOKLYN PROULX", 200, 1170+(-tiempo));
    text (" ‍‍‍‍‍‎Alma Jr. age 5    KEANNA DUBÉ", 200, 1190+(-tiempo));
    text (" Alma Jr. age 9-12    SARAH HYSLOP‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ", 200, 1210+(-tiempo));
    text ("  ‍‍‍‍‍‎Jenny, age 7-8    JACEY KENNY‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ", 200, 1230+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎          Judge    JERRY CALLAGHAN", 200, 1250+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ Jenny, age 11    CAYLA WOLEVER", 200, 1270+(-tiempo));
    text (" ‍‍‍‍‍‎ Alma Jr. age 13    CHEYENNE HILL", 200, 1290+(-tiempo));
    text (" ‍‍‍‍‍‎Bobby, age 10    JAKE CHURCH", 200, 1310+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎           Cassie    LINDA CARDELLINI", 200, 1330+(-tiempo));
    text ("Lashawn Malone    ANNA FARIS‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎  ", 200, 1350+(-tiempo));
    text (" ‍‍‍‍‍‎   Randall Malone    DAVID HARBOUR", 200, 1370+(-tiempo));
    text ("  Alma Jr. age 19    KATE MARA‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ", 200, 1390+(-tiempo));
    text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎        Carl    WILL MARTIN", 200, 1410+(-tiempo));
    text ("Killer Mechanic    GARY LAUDER", 200, 1430+(-tiempo));
    text (" ‍‍‍‍‍‎    Grease Monekey    CHRISTIAN FRASER", 200, 1450+(-tiempo));
    text (" ‍‍‍‍‍‎              Assailant    CAM SUTHERLAND", 200, 1470+(-tiempo));
    text (" ‍‍‍‍‍‎         Jack's Mother    ROBERTA MAXWELL", 200, 1490+(-tiempo));
    text (" ‍‍‍‍‍‎         John Twist    PETER McROBBIE", 200, 1510+(-tiempo));
  }
}

void protagonistas_secundarios(){
  textAlign(CENTER);
    if(tiempo>=1300){
      text ("Chilean Sheepherder #1    VICTOR REYES ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎  ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎ ", 200, 1770+(-tiempo));
      text ("Chilean Sheepherder #2    LACHLAN MACKINTOSH ‍‍‍‍‍‎", 200, 1790+(-tiempo));
      text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍ ‍‍‍‍‍‎‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ Bartender #1    DAN McDOUGALL", 200, 1810+(-tiempo));
      text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‎‍‍‍‍ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‎Biker #1    DON BLAND", 200, 1830+(-tiempo));
      text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍ ‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‎‍‍‍‍ ‍‍‍‍‍‎‍‍‍‍‍‎‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎  ‍‍‍‍‍‎‍‍‍‍‍‎‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‎‍‍‍‍  ‍‍‍‍‍‍‍‍‍‎‍‍‍‍  ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‎‍‍‍‍ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‎‍‍‍‍‍‎Biker #2    STEVEN CREE MOLISON", 200, 1850+(-tiempo));
      text (" ‍‍‍‍‍‎ ‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎ Bartender #2    DEAN BARRETT", 200, 1870+(-tiempo));
      text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍Farmer #1    JAMES BAKER", 200, 1890+(-tiempo));
      text (" ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ ‍‍‍‍‍‎ Farmer #2    PETE SEADON", 200, 1910+(-tiempo));
      text ("Roughneck #1    KEN ZILKA‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ‍‍‍‍‍‎‍‍‍‍‍‍‍‍‍‍‍‍‎ ", 200, 1930+(-tiempo));
      text ("Roughneck #2    JOHN TENCH ", 200, 1950+(-tiempo));
    }
}

void Musica(){
  if(tiempo>=1300){
  text ("Songs", 200, 2190+(-tiempo));
  textSize(14);
  text ("'FRIENDS'", 200, 2230+(-tiempo));
  textSize(11);
  text ("Written by Lan Masa Tsuchiura & Kevin Villecco", 200, 2250+(-tiempo));
  text ("Performed by Hyper Potions", 200, 2270+(-tiempo));
  text ("Courtesy of GameChops", 200, 2290+(-tiempo));
  textSize(14);
  text ("'DON'T STOP ME NOW'", 200, 2330+(-tiempo));
  textSize(11);
  text ("Written by Freddy Mercury", 200, 2350+(-tiempo));
  text ("Performed by Queen", 200, 2370+(-tiempo));
  text ("Courtesy of Mercury Records Limited", 200, 2390+(-tiempo));
  text ("under license from Universal Music Enterprises/", 200, 2410+(-tiempo));
  text ("Courtesy of Hollywood Records, inc. for N. America", 200, 2430+(-tiempo));
  textSize(14);
  text ("'FLIGHT OF THE VALKYRIES'", 200, 2470+(-tiempo));
  textSize(11);
  text ("Written by Wilhelm Richard Wagner", 200, 2490+(-tiempo));
  text ("Performed by Jim Carrey", 200, 2510+(-tiempo));
  textSize(14);
  text ("'ALL FIRED UP'", 200, 2550+(-tiempo));
  textSize(11);
  text ("Written by Leon Harrison & Matthew Morris", 200, 2570+(-tiempo));
  text ("Performed by The Lazys", 200, 2590+(-tiempo));
  text ("Courtesy of The Lazys and", 200, 2610+(-tiempo));
  text ("Sony/ATV Music Publishing (Australia) Pty Limited", 200, 2630+(-tiempo));
  textSize(14);
  text ("'WHITE LIGHTENING'", 200, 2670+(-tiempo));
  textSize(11);
  text ("Written by Michael Hendrix", 200, 2690+(-tiempo));
  text ("Performed by Tennesse River Crooks", 200, 2710+(-tiempo));
  text ("Courtesy of fervor Records", 200, 2730+(-tiempo));
  textSize(14);
  text ("'I'M TURNIN' 'EM UP'", 200, 2770+(-tiempo));
  textSize(11);
  text ("Written & Performed by Wyley Randall", 200, 2790+(-tiempo));
  text ("Courtesy of CD Baby Licensing", 200, 2810+(-tiempo));
  textSize(14);
  text ("'BAD NEWS'", 200, 2850+(-tiempo));
  textSize(11);
  text ("Written by Kevin Bowe, David Grissom & Thomas Tull", 200, 2870+(-tiempo));
  text ("Performed by Ghost Hounds", 200, 2890+(-tiempo));
  text ("Courtesy of Maple House Records LLC", 200, 2910+(-tiempo));
  
  textSize(14);
  text ("'LOVE IN THE CITY'", 200, 3210+(-tiempo));
  textSize(14);
  text ("Written by Jhon Christopher Strokes", 200, 3230+(-tiempo));
  text ("Courtesy of APM Music on behalf of EMI Music Publishing", 200, 3250+(-tiempo));
  textSize(14);
  text ("'BOOM'", 200, 3270+(-tiempo));
  textSize(11);
  text ("Written by Eric Freferic, Adam Levin, Casey Harris,", 200, 3290+(-tiempo));
  text ("Sam Harris, Thomas Eriksson & Tom Peyton", 200, 3310+(-tiempo));
  text ("Performed by X Ambassadors", 200, 3330+(-tiempo));
  text ("Courtesy of KIDinaKORNER/Interscope Records", 200, 3350+(-tiempo));
  text ("under license from Universal Music Enterprises", 200, 3370+(-tiempo));
  textSize(14);
  text ("'WHERE EVIL GROWS'", 200, 3410+(-tiempo));
  textSize(11);
  text ("Written & Performed by The Poppy Family featuring Terry Jacks", 200, 3430+(-tiempo));
  text ("Courtesy of Gone Fishin' Music Ltd.", 200, 3450+(-tiempo));
  textSize(14);
  text ("'GREEN HILL ZONE'", 200, 3490+(-tiempo));
  textSize(11);
  text ("Written by Masato Nakamura", 200, 3510+(-tiempo));
  text ("Performed by Jon Batiste", 200, 3530+(-tiempo));
  text ("Courtesy of The Verve Music Group", 200, 3550+(-tiempo));
  text ("under license from Universal Music Enterprises", 200, 3570+(-tiempo));
  textSize(14);
  text ("'SPEED ME UP'", 200, 3610+(-tiempo));
  textSize(11);
  text ("Written by David Charles Marshall Biral, Denzel Michael-Akil Baptiste,", 200, 3630+(-tiempo));
  text ("Cameron Jibril Thomaz, Tyrone William Griffin, Jr.,", 200, 3650+(-tiempo));
  text ("Miles Parks McCollum, Akeem Hayes, William Schultz", 200, 3670+(-tiempo));
  text ("Performed by Wiz Khalifa, Ty Dolla Sign, Lil Yachty and Sueco The Child", 200, 3690+(-tiempo));
  text ("Produced by Take A Daytrip", 200, 3710+(-tiempo));
  text ("Wiz Khalifa courtesy of Atlantic Recording Corporation", 200, 3730+(-tiempo));
  text ("Ty Dolla Sign courtesy of Atlantic Recording Corporation", 200, 3750+(-tiempo));
  text ("Lil Yachty courtey of Quality Control Music/motown Records", 200, 3770+(-tiempo));
  text ("Sueco the Child courtesy of Atlantic Recording Corporation", 200, 3790+(-tiempo));
  }
}

void Imagenes(){
  if((tiempo>=303) && (tiempo<=700)){
    imagen0 = loadImage("1.jpg");
    imagen0.resize(800,400);
    image(imagen0, 300+(-tiempo), -0);
  }else if ((tiempo>=700) && (tiempo<=1100)){
    imagen1 = loadImage("2.jpg");
    imagen1.resize(800,400);
    image(imagen1, -1100+(tiempo), 0);
  }else if ((tiempo>=1100) && (tiempo<=1500)){
    imagen2 = loadImage("3.jpg");
    imagen2.resize(800,400);
    image(imagen2, 400+(-tiempo/2), 0);
  }else if ((tiempo>=1500) && (tiempo<=1900)){
    imagen3 = loadImage("4.jpg");
    imagen3.resize(800,400);
    image(imagen3, -1900+(tiempo), 0);
  }else if ((tiempo>=1900) && (tiempo<=2400)){
    imagen4 = loadImage("5.jpg");
    imagen4.resize(800,400);
    image(imagen4, 800+(-tiempo/2), 0);
  }else if ((tiempo>=2400) && (tiempo<=2800)){
    imagen5 = loadImage("6.jpg");
    imagen5.resize(800,400);
    image(imagen5, -2800+(tiempo), 0);
  }else if ((tiempo>=2800) && (tiempo<=3400)){
    imagen6 = loadImage("7.jpg");
    imagen6.resize(900,400);
    image(imagen6, 1400+(-tiempo/2), 0);
  }else if ((tiempo>=3400) && (tiempo<=3800)){
    imagen7 = loadImage("8.jpg");
    imagen7.resize(800,400);
    image(imagen7, -3800+(tiempo), 0);
  }
}

void botonera(){
  fill(60);
  rect(x,y,w,h);
  fill(255);
  textSize(20);
  text("Reiniciar",x+45,y+17);
}
