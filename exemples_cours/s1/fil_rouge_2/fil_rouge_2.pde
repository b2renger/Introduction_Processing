// variable pour stocker la taille de notre ellipse
int size;
// variables pour stockes les coordonnées de notre ellipse
float xpos, ypos;

// commande pour changer la taille de la fenêtre de dessin
size(640,480);

// assignation de valeurs à nos variables
size = 50;
xpos = 65;
ypos = 75;

// dessin de l'ellipse
ellipse(xpos,ypos,size,size);

