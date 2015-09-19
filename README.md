# Introduction_Processing
This respository is a french introduction to the Processing programming language

Notes : 
* Ce document ne se veut pas exhaustif, il présente les fonctions principales dont nous aurons l’utilité dans le cadre de ce cours. Processing étant très bien documenté il est très facile de trouver de nombreux tutoriels en ligne sur les différents aspects du programme. Se référer à la section « Ressources » pour plus d’informations.
* Ce document a pour but de rappeler les informations vues en cours sous une autre forme et d'en apporter de nouvelles, sa lecture doit donc s’accompagner des exemples de code construits pendant le module.


# Contenus
* [Introduction](#Introduction)<br>
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

```
<p><i>
Processing seeks to ruin the careers of talented designers by tempting them away from their
usual tools and into the world of programming and computation. Similarly, the project is designed
to turn engineers and computer scientists to less gainful employment as artists and designers.
</i>.</p>
```

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


<a name="Premier-Programme"/>
#Premier Programme




<a name="Les-variables"/>
#Les variables