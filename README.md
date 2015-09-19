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