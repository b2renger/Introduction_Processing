/* This sketch is a color selector, a palette creator, with helper functions 
to copy selected color to clipboard.

you can replace the background image named 'wall' by the one you want
*/

// pour la copie dans le clipboard
import java.awt.datatransfer.*;
import java.awt.Toolkit; 
// une classe pour aider à copier dans le clipboard
ClipHelper cp = new ClipHelper();

// image de fond qui sera un nuancier
PImage wall;

// variables pour stocker les couleurs dans les deux modes
float r, g, blu;
float h, s, b;
// variables pour stocker les noms des couleurs et les afficher
String re, gr, bl;
String hu, sa, br;

// une classe Holder qui sert de vignette pour juger des couleurs relatives
// et créer une sous-palette. On prend une couleur dans le nuancier et on la
// fait glisser jusqu'à la vignette dans laquelle on veut stocker la couleur.
Holder h1, h2, h3, h4, h5, h6;
Holder h7, h8, h9, h10, h11, h12;

// boutons pour copier les couleurs vers le clipboard
Button copyRGB, copyHSB;

void setup() {
  size(660, 420);
  rectMode(CENTER);
  noStroke();

  // charger l'image de fond
  wall = loadImage("color-palette.png");
  fill(0);
  textSize(14);
  //initialiser les strings de noms
  re = "R :";
  gr = "G :";
  bl = "B :";
  hu = "H :";
  sa = "S :";
  br=  "B :";

  // initialiser les vignettes
  h1 = new Holder(35, 380, 50, color(255, 255, 255));
  h2 = new Holder(85, 380, 50, color(255, 255, 255));
  h3 = new Holder(135, 380, 50, color(255, 255, 255));
  h4 = new Holder(185, 380, 50, color(255, 255, 255));
  h5 = new Holder(235, 380, 50, color(255, 255, 255));
  h6 = new Holder(285, 380, 50, color(255, 255, 255));
  h7 = new Holder(335, 380, 50, color(255, 255, 255));
  h8 = new Holder(385, 380, 50, color(255, 255, 255));
  h9 = new Holder(435, 380, 50, color(255, 255, 255));
  h10 = new Holder(485, 380, 50, color(255, 255, 255));
  h11 = new Holder(535, 380, 50, color(255, 255, 255));
  h12 = new Holder(585, 380, 50, color(255, 255, 255));

  // initialiser les boutons
  copyRGB = new Button(300, 300, 120, 25, color(0, 0, 0), "Copy RGB");
  copyHSB = new Button(300, 330, 120, 25, color(0, 0, 0), "Copy HSB");
}

void draw() {

  background(255);
  scale(0.6);
  image(wall, 0, 0);
  // reset le call à la fonction scale();
  resetMatrix();
  // afficher le text
  text(re, 10, 300);
  text(gr, 10, 320);
  text(bl, 10, 340);

  text(hu, 100, 300);
  text(sa, 100, 320);
  text(br, 100, 340);

  // dessiner les vignettes (vides)
  h1.drawMe();
  h2.drawMe();
  h3.drawMe();
  h4.drawMe();
  h5.drawMe();
  h6.drawMe();
  h7.drawMe();
  h8.drawMe();
  h9.drawMe();
  h10.drawMe();
  h11.drawMe();
  h12.drawMe();

  //dessiner les boutons
  copyRGB.drawMe();
  copyHSB.drawMe();


  if (mousePressed) {
    // dessiner un carré de la couleur que l'on a choisit qui suit la souris
    pushStyle();
    fill(r, g, blu, 180);
    rect(mouseX, mouseY, 50, 50);
    popStyle();

    // vérfier si on est au dessus des vignettes et si on est au dessus changer leur couleur
    // pour celle qui est sélectionnée en ce moment.
    h1.overMe(mouseX, mouseY, color(r, g, blu));
    h2.overMe(mouseX, mouseY, color(r, g, blu));
    h3.overMe(mouseX, mouseY, color(r, g, blu));
    h4.overMe(mouseX, mouseY, color(r, g, blu));
    h5.overMe(mouseX, mouseY, color(r, g, blu));
    h6.overMe(mouseX, mouseY, color(r, g, blu));
    h7.overMe(mouseX, mouseY, color(r, g, blu));
    h8.overMe(mouseX, mouseY, color(r, g, blu));
    h9.overMe(mouseX, mouseY, color(r, g, blu));
    h10.overMe(mouseX, mouseY, color(r, g, blu));
    h11.overMe(mouseX, mouseY, color(r, g, blu));
    h12.overMe(mouseX, mouseY, color(r, g, blu));

    // vérifier si on est au dessus des boutons et si oui, copier la couleur formatée dans le clipboard et 
    // imprimer les valeur copiées dans la console
    copyRGB.overMeRGB(mouseX, mouseY);
    copyHSB.overMeHSB(mouseX, mouseY);
  }
}



void mousePressed () {
  // on ne veut peut que ce code s'execute si on est dans la zone dans laquelle on va clicker sur les boutons
  if (mouseY<270||mouseY>355) {
    // on récupère la couleur à la position de la souris
    color c = get(mouseX, mouseY);

    // rgb
    r = red(c); // Extract red
    g = green(c); // Extract green
    blu = blue(c); // Extract blue
    re = "R :"+r; // update text
    gr = "G :"+g;
    bl = "B :"+blu;

    //hsb
    h = hue(c);
    s = saturation(c);
    b = brightness(c);
    hu = "H :"+h;
    sa = "S :"+s;
    br = "B :"+b;
  }
}