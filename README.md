# Introduction_Processing
This respository is a french introduction to the Processing programming language

Notes : 
* Ce document ne se veut pas exhaustif, il présente les fonctions principales dont nous aurons l’utilité dans le cadre de ce cours. Processing étant très bien documenté il est très facile de trouver de nombreux tutoriels en ligne sur les différents aspects du programme. Se référer à la section « Ressources » pour plus d’informations.
* Ce document a pour but de rappeler les informations vues en cours sous une autre forme et d'en apporter de nouvelles, sa lecture doit donc s’accompagner des exemples de code construits pendant le module.


# Contenu
* [Introduction](#Introduction)<br>
* [L'IDE](#ide)<br>
* [Premier Programme](#Premier-Programme)<br>
* [Les variables](#Les-variables)<br>
 * [Définition](#définition)<br>
 * [Différents types de variables](#types)<br>
 * [La portée des variables](#portée)<br>
 * [Exemple d’utilisation des variables](#exemples)<br>
 * [Variables globales de processing](#globales)<br>
* [L’aléatoire](#L’aléatoire)<br>
 * [random()](#random)<br>
 * [noise()](#noise)<br>
 * [randomSeed() et noiseSeed()](#randomSeed)<br>
* [Les boucles](#Les-boucles)<br>
* [Couleurs](#Couleurs)<br>
* [Primitives de dessin](#Primitives-de-dessin)<br>
* [Transformation de l’espace](#Transformation-de-l’espace)<br>
* [Coder ses propres fonctions](#Coder-ses-propres-fonctions)<br>	
* [Interactions Souris et clavier](#Interactions-Souris-et-clavier)<br>
* [Dessiner du texte et utiliser des polices de caractère](#Dessiner-du-texte-et-utiliser-des-polices-de-caractère)<br>
* [Les Classes Programmation Orientée Objet](#Les-Classes-Programmation-Orientée-Objet)<br>
* [Les Tableaux](#Les-Tableaux)<br>
* [Emergence : Un programme interactif complexe](#Emergence)<br>
* [Les Librairies](#Les-Librairies)<br>
* [Travailler avec les images](#Travailler-avec-les-images)<br>
* [Trucs et astuces](#Trucs-et-astuces)<br>
* [Ressources](#Ressources)<br>

<a name="Introduction"/>
#Introduction

Processing est un langage de programmation basé sur java et principalement destiné à la création
graphique. Il est apparut en 2001, crée par deux artistes Ben Fry et Casey Reas, alors étudiants au
MIT. Il reprend une partie des concepts de Design by Numbers l’environnement de programmation
graphique developpé par John Maeda au sein du Média Lab du même MIT.

Le langage processing est du Java fortement simplifié par l’accès direct à de nombreuses primitives
de dessin. Il a été crée spécialement dans le but de faciliter l’apprentissage des bases de la
programmation objet, via la création graphique permettant ainsi d’obtenir des résultats valorisants
très rapidement.

<p><i>
Processing seeks to ruin the careers of talented designers by tempting them away from their
usual tools and into the world of programming and computation. Similarly, the project is designed
to turn engineers and computer scientists to less gainful employment as artists and designers.
</i></p>

Au-delà du fait d’être un formidable outil de dessin et de prototypage rapide en terme de design
d’interaction. Processing est un réel langage de programmation capable de réaliser n’importe quelle
fonction.

Processing est un projet Open Source devenu collaboratif de par l’intérêt qu’il a suscité dès sa sortie.
Il est ouvert au développements tiers par l’intégration d’un système de librairie ainsi qu’une
documentation aidant au développement de librairies externes. Il existe aussi un système
de « modes » permettant d’ajouter des fonction à l’IDE (Itegrated Developpement Environment) de
processing comme le développement pour android (smartphones et tablettes), ou en javascript
(web).

Processing existe aussi bien sous Linux, Windows que Mac OS. Le projet étant à but pédagogique et
porté par une communauté très active il est excessivement bien documenté.

<a name="ide"/>
#L'IDE
IDE signifie Inegrated Developpemet Environment, c'est l'outil avec lequel on va travailler, c'est la fenêtre qu'ouvre notre système d'exploitation lorsque l'on lance processing. Cela ressemble à un éditeur de texte, mais nous avons des boutons pour compiler nos programmes et une seconde fenêtre de rendu qui s'ouvre à la compilation.

![L'IDE de Processing](assets/001_IDE.png)

* La zone 1 correspond à la barre d’action, en haut à gauche se situe différents boutons : le premier « run » permet de lancer son programme, le second « stop » permet de le stopper. En dessous se trouve un système d’onglet, cela permet de mieux organiser son code quand les programmes deviennent plus complexes. Tout à droite se trouve un menu déroulant permettant de passer d’un mode à un autre (c’est-à-dire d’un developpement android à un developpement java classique par exemple).

* La zone 2 est un éditeur de texte classique permettant d’écrire son programme. Les mots clés du langage processing y apparaitront en surbrillance. Il est important de noter qu’à tout moment il est possible de consulter la documentation en ligne en effectuant un clic droit sur un mot clé et en sélectionnant « find in reference ».

* La zone 3 est la console qui renvoi les erreurs rencontrées par l’ordinateur lorsqu’il tente d’exécuter un programme. C’est aussi une zone d’information dans laquelle on peut choisir d’afficher des messages (à l’aide de la fonction println()).

* La zone 4 est la fenêtre d’exécution de notre programme. 

Processing fonctionne par défaut avec l’utilisation d’un « sketchbook ». C’est un dossier sur votre disque dur dans lequel seront stockés vos programmes et toutes les librairies, ainsi que les diférents modes que vous avez installé. Il est possible de modifier l’emplacement de ce dossier en allant dans : <i> File -> Preferences </i>

<a name="Premier-Programme"/>
#Premier Programme

A tout moment il est possible d’insérer un commentaire dans son programme en utilisant ces deux caractères en début de ligne  « // ». On peut aussi créer des commentaires sur plusieurs lignes en utilisant ces caractères :« / »  suivi de « * » pour signaler le début d’un commentaire, et de « * » suivi de « / » pour signaler la fin de ce même commentaire.

```java
// voici mon premier programme
void setup() {
  size(200, 200) ; // permet de spécifier la taille de la fenêtre.
  background(0) ; // utilisons un fond noir.
}
void draw() {
  background(0) ; // dessinons un fond noir.
  stroke(180) ; // on choisit de  dessiner un contour gris.
  strokeWeight(2) ; // ce contour aura un épaisseur de 2 pixels.
  fill(255) ; // le remplissage de notre dessin sera blanc.
  /* on dessine une ellipse située à 100 pixels du bord gauche, à 100 pixels du bord haut, d’une largeur de 50 pixels et d’une hauteur de 50 pixels … un cercle donc ! */
  ellipse(100, 100, 50, 50) ;
}

```
![exemples_pdf/Sketch_1_01.pde](assets/002_PremierProgramme.png)

Ce programme se compose de deux parties principales, appelées aussi « fonctions » qui se démarquent par l’utilisation de mots clés **« void »** ainsi que la paire d’accolade **{** **}** qui délimite les instructions exécutées lors de l’appel de la fonction.

* Les lignes 02 à 05 : présentent la fonction **setup()**. Cette fonction est appelée une seule fois au démarrage du programme, c’est un initialisation.
* Les lignes 06 à 12 : présentent la fonction **draw()**, qui est le cœur du programme. La suite d’instruction enfermée entre les accolades est exécutée en boucle, le plus rapidement possible.

Il existe des fonction spécifique au langage processing appelée primitives, on peut les appeler simplement en utilisant leur syntaxe spécifique. Chaque fonction indiquée en surbrillance possède une documentation en ligne, il est fortement conseillé de s’y référer pour savoir comment les utiliser.

A noter que par défaut nous utilisons un systèmes de coordonnées cartésiennes centré en haut à gauche de la fenêtre de dessin. Dans notre programme, le coin en haut à gauche a donc les coordonnées(0,0), le coin en bas à droite a donc les coordonnées (199,199) 

<a name="Les-variables"/>
#Les variables

<a name="définition"/>
##Définition
Les variables correspondent à un espace utilisé dans la mémoire de l’ordinateur pour stocker une information de manière temporaire. Les variables peuvent être de différents types en fonction des données qu’elles doivent stocker.

<a name="types"/>
##Différents types de variables
**int** : permet de stocker des nombres entiers.
**float** : permet de stocker des nombres flottants soit des nombres à virgules.
**string** : permet de stocker des chaines de caractères, c’est-à-dire du texte.
**color** : permet de stocker une couleur.

Si on écrit :

```java

int a;
a = 5;
int b ;
b =3;
int result = a + b;
String operation = a +"+"+ b +"=";
println(operation);
println(result);

```

On crée une variable entière dont le nom est a, et on lui attribue la valeur 5. On crée une seconde variable entière dont le nom est b et on lui attribue la valeur 3. On crée ensuite un entier pour stocker le résultat que l’on obtient en additionnant les deux variables.

On crée ensuite une variable de type chaine de caractère pour inscrire l’opération effectuée puis son résultat dans la console. Une chaine de caractère doit être comprise entre deux " " pour être reconnue comme telle.  Ici on compose une chaine de caractère complexe en utilisant le symbole « + », les différentes chaines de caractères (ou caractères simples) qui la compose sont accolées.

Il est important de noter que si jamais notre variable appelée « result » avait été de type String, la ligne :

```java
String result = a+b ;
```

aurait renvoyé un tout autre résultat puisque les variables aurait été interprétée comme des String on aurait alors obtenu le juxtaposition des deux caractère soit « 53 ».

Certain type sont compatibles avec d’autres : on peut par exemple stocker un entier dans un flottant et des entiers ou des flottants dans des String. Cependant l’utilisation d’un flottant avec un type entier reverra nécessairement une erreur dans la console.

Il est aussi possible de stocker des données plus complexes comme des tableaux. Les tableaux servent à stocker des ensembles de données d’un type précis, on peut même y stocker des instances de classes… (nous verrons ceci dans la section dédiée aux classes).

<a name="portée"/>
##La portée des variables

Un point essentiel réside dans la portée de ces variables (en anglais on parle de « scope »). D’une façon simplifiée : une variable sera accessible uniquement dans la fonction ou portion de code dans laquelle elle aura été définie. Une portion de code correspond à l’espace entre deux accolades « { } ».

Cela signifie qui si je définie une variable dans le setup() de mon programme celle-ne sera accessible uniquement dans le setup().

Il est possible de définir des variables à l’extérieur des fonctions setup() et draw() : par exemple en tout début de programme, ces variables seront alors accessibles partout dans notre programme.

<a name="exemples"/>
##Exemple d’utilisation des variables

Habituellement on a tendance à créer les variables tout en haut de notre programme, on les initialise ensuite dans le setup() , puis on les utilise dans le draw().

```java
  // voici mon premier programme utilisant des variables
  color background_color ;
  int size ;
  float xpos,ypos ;
  
  void setup(){
  size(200,200) ;
  background_color = color(0) ;
  size = 50 ;
  xpos = random(100) ;
  ypos = random(100) ;
  background(background_color ) ; // utilisons un fond noir.
  }
  
  void draw(){
  background(background_color ) ; 
  stroke(180) ; 
  strokeWeight(2) ; 
  fill(255) ;
/* on dessine notre ellipse en utilisant nos variables*/
  ellipse(xpos,ypos,size,size) ; 
  }
```
![exemples_pdf/Sketch_1_02.pde](assets/003_Utilisation_variables.png)

<a name="globales"/>
##Variables globales de processing

Il existe dans processing des variables globales, qui sont donc accessibles partout dans processing, ces variables sont définies par défaut et gérée par processing lui-même, il faut mieux éviter d’utiliser leur nom pour définir ses propres variables.

C’est le cas entre autres de :

**width** : (float) qui est associée par défaut à largeur de la fenêtre de dessin.
**height** : (float) qui est associée par défaut à la hauteur de la fenêtre de dessin.

<a name="L'aléatoire"/>
#L'aléatoire

En informatique et en design génératif , l’aléatoire est très souvent utilisé pour obtenir des résultats présentant des variantes contraintes, c’est-à-dire pour obtenir plusieurs variations d’un même algorithme.

Il existe deux principales façon d’obtenir des nombres aléatoires ou plutôt pseudo-aléatoire, car il n’existe pas en informatique de méthode permettant d’obtenir un résultat réellement et statistiquement complètement aléatoire.

<a name="random"/>
##random()

La fonction random() renvoit donc des résultats aléatoires en fonction d’un argument qui sera spécifié entre les parenthèses. Ce nombre aléatoire sera de type float.
Par exemple :
```java
float nb_aleatoire = random(100) ;
println(nb_aleatoire) ;
 ```
nous obtiendrons avec ce code un nombre aléatoire compris entre 0 et 100.

Il est aussi possible de spécifier un borne supérieur, ainsi qu’un borne inférieure, ainsi :
```java
float nb_aleatoire = random(20,50) ;
println(nb_aleatoire) ;
```
renverra une valeur aléatoire comprise entre 20 et 50 ;

```java
/* voici mon premier programme utilisant des variables et de l’aléatoire */
int size ;
float xpos, ypos ;

void setup() {
  size(200, 200) ;
  size = 25 ;
  xpos = random(0, width) ;
  ypos = random(0, height) ;
  background(0 ) ; // utilisons un fond noir.
}

void draw() {
  background(0) ; 
  stroke(180) ; 
  strokeWeight(2) ; 
  fill(255) ;
  // à chaque image calculée on définit une nouvelle position
  xpos = random(0, width) ;
  ypos = random(0, height) ;
  /* on dessine notre ellipse en utilisant nos variables*/
  ellipse(xpos, ypos, size, size) ;
}
```

Ce programme va dessiner, à chaque image, un cercle positionné aléatoirement dans la fenêtre de dessin.

![exemples_pdf/Sketch_1_03.pde](assets/004_Aléatoire.png)

<a name="noise"/>
##noise()

La fonction noise() est un peu particulière puisque elle permet de générer des suites de nombres très proches les uns des autres. Cela permet notament de créer des mouvement et des contours qui paraissent plus naturels.

Son usage est un peu plus compliqué car il faut lui fournir un argument  « évolutif », celle-ci renvoi des valeurs comprises entre 0 et 1. Il faut donc souvent adapter le résultat obtenu en fonction de nos besoins.

```java
float noiseF; // facteur évolutif de notre fonction noise
float xpos, ypos; // coordonnées de notre forme

void setup() {
  size(200, 200);
  background(0);
  noStroke();
  fill(255);
  // on initialise notre facteur à une valeur aléatoire
  noiseF = random(500) ;
  // on place notre forme au centre de la fenetre.
  xpos = width/2;
  ypos = height/2;
}

void draw() {
  background(0);
  /* on ajoute à notre position une valeur comprise entre      -1 et 1, résultante de notre fonction noise. */
  xpos += noise(noiseF, 10, 20)*2-1;
  ypos += noise(noiseF, 85, 140)*2 -1;
  ellipse(xpos, ypos, 5, 5);  
  // on incrémente notre facteur noise d’une petite valeur
  noiseF += 0.005;
}
```
![exemples_pdf/Sketch_1_04.pde](assets/005_Noise.png)

Ce programme dessine un cercle qui va se déplacer aléatoirement dans l’espace de dessin. Il est d’ailleurs fort probable qu’il en sorte, mais nous y reviendrons plus tard.

<a name="randomSeed"/>
##randomSeed() et noiseSeed()

Ces deux fonctions permettent de pouvoir retrouver un résultat qui a été obtenu avec des nombres aléatoires. Comme mentionné ci-dessus, les ordinateurs ne permettent pas d’avoir des générateurs de nombres complétement aléatoires, dans certain cas cela peut-être un avantage, notament quand il s’agit de pouvoir régénérer exactement la même image avec un algorithme qui utilise pourtant des nombres aléatoires.

Ces fonctions s’utilisent de la même façon ( exemples_pdf/Sketch_1_05.pde ) :

```java
int seed ;
seed = 123;

randomSeed(seed);
float a = random(500);
println("seed" + seed +" : " + a); 

seed = 52;
randomSeed(seed);
a = random(500);
println("seed" + seed +" : " + a); 

seed = 123;
randomSeed(seed);
a = random(500);
println("seed" + seed +" : " + a); 
```




