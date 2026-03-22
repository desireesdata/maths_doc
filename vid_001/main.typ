#import "@preview/typslides:1.3.2": *
// #import "@preview/mitex:0.2.6"

#show: typslides.with(
  ratio: "16-9",
  theme: "bluey",
  font: "Fira Sans",
  font-size: 20pt,
  link-style: "color",
  show-progress: true,
)

#front-slide(
  title: "Mathématiques documentaires",
  subtitle: [001 : Juste \"compter \" ?],
)

// #table-of-contents()

#title-slide[
  Le nombre
]

#slide(title: "Lecture", outlined: true)[
  - Le premier chapitre commence par "le nombre"
  - le chapitre suivant traite de la mesure 
    - mais certaines notions sont discutables ("grandeur")
    - pas de lien avec la théorie des ensembles
    - ni avec les probabilités
]

#slide[
  == On peut donc essayer de profiter de ce chapitre pour aborder davantage de notions
]

#focus-slide[
  Lecture
]

#slide[
  == Est présentée une notion élémentaire : quoi dire d'autre ?
]

#slide[
  - Parler brièvement des différents ensembles de nombres (et donc parler des ensembles et des types prédéfinies en informatique)
  - Clarifier "ensemblistement" : compter des éléments d'un ensemble fini
  - Du monde des ensembles au monde de la mesure
]

#title-slide()[
  == Ensembles de nombres
]

#slide(title: "Ensembles de nombres les plus importants en pratique")[
  $NN$ (unsigned int en C; int)
  \
  $0; 1; 2; 3;...$
  \
  $ZZ$ (int)
  \
  $-3; -2; -1; 0; 1; 2; 3;...$
  \
  $RR$ (float)
  \
  $-1;  0;  2,4;  3,5459; 200; ...$
  \
  $0, 0,00000...1, 0,00000...2, ... 1, 1,00000...1, 1,00000...2, ...$

  #framed[
    Attention, ce n'est pas tout à fait exact car un ordinateur ayant une puissance de calcul finie, on n'est pas techniquement dans $RR$ !   
  ]
]

#focus-slide()[
  Côté programmation ?
]

#slide(title: "Appartient à ...")[
  == $2 in NN$ 
  
  == $-3 in ZZ$
  
  == $4 in ZZ$
  
  == $9,6 in RR$
  
  == $-2 in.not NN$ 

  #framed[
    L'appartenance concerne une relation élément/ensemble.   
  ]
]

#slide(title: "Inclusion")[
  == $NN subset ZZ subset RR $
  #framed[
    Il y a d'autres ensembles de nombres intermédiaires ($QQ$ par exemple) et d'autres plus "grands" ($CC$) mais cela suffit largement pour nous.
  ]
]

#slide(title:"Les ensembles ne sont pas que des nombres")[
  == Gagner un degré d'abstraction tout en étant plus concret
  $"ce livre" in "cette bibliotheque"$,
  \
  $"ce document d'archives" in "ce service d'archives"$

  #framed[
    On peut remplacer des "choses" par des lettres. Si elles sont connues, on peut utiliser des lettres comme $a, b, c, ...$ (attention aux conventions); sinon on utilisera plutôt $x$.
    \
    $l in B$,\
    $a in A$
  ]
]

#focus-slide()[
  Ensembles en Python : listes, ensembles. On verra les dictionnaires une autre fois.
  \ (script 01.py)
]

#slide(title: "Compter : la notion de cardinalité")[
  == Cardinal d'un ensemble (fini)
  $l_1, l_2, l_3 in B$\
  - $|B| = 3$\
  - $"card"(B) = 3$\
  - "$B = 3$" est faux !

  == En programmation
  La fonction (ou méthode, selon le cas/le langage) length, len, etc. 

  #framed()[
    Le cardinal est ici une fonction qui prend un ensemble et retourne une valeur numérique
  ]
]


#slide(title:"Deux mondes : celui des ensembles et celui des nombres")[
  Rappel : $"card"(B) = 3$\
  "$B = 3$" est faux !\
  \
  On additionne pas les ensembles : l'union $union$\
  $A union B$\
  mais on peut additionner les nombres (donc leur cardinal)\
  $|A union B| = |A| + |B|$
  
  #framed()[
    On suppose que tous les éléments de A sont distincts des éléments de B (pas de valeur qui appartiendrait à deux ensembles à la fois (intersection))
  ]
]

#focus-slide()[
  Python : cardinalité d'unions d'ensembles
  \ (script 02.py)
]

#slide()[
  = Autres concepts importants de la théorie des ensembles
  - Intersection $inter$
  - Ensemble vide $emptyset$
  - Applications
  - Définition en compréhension
  - etc.

  #framed()[
    Mais on ne s'intéresse ici qu'au *comptage*... donc on considère que les ensembles sont *disjonts*, autrement dit que l'intersection des deux ensembles est vide :\
    $A inter B  = emptyset$.\
    Exemple : compter des cotes uniques mais dont certaines sont rattachées à deux collections
  ]
]

#title-slide("C'est tout ?")

#slide(title:"Un carrefour conceptuel")[
  == On a précisé que "compter" c'était manipuler la cardinalité d'ensembles et plus encore en contexte documentaire 
  - Après tout les collections ou les fonds sont des ensembles finis !
    - On pourrait s'arrêter là.
  == Il y aurait de nombreux liens théoriques à faire :
    - Théorie de la mesure
    - Types, algèbre des types
    - Structures algébriques et propriétés
    - Théorie des catégories (la mécanique derrière l'addition)
    - etc.
]

#slide(title: "Un pied dans la mesure")[
  == Pour l'instant on se contente de parler de mesure
  - Cela permet de poser une première pierre pour parler de *métriques*;
  - de faire une incursion "silencieuse" dans le monde des probabilités dont on parlera plus tard
  #framed()[
    On verra la mesure dans le chapitre suivant, mais il peut être utile de développer son intuition avec un concept au nom barbare...
  ]
]

#title-slide("Comprendre l'additivité finie")

#slide(title:"Boum")[
  // $ mu(∪_(k=1)^∞ E_k) = sum_(k=1)^∞ mu(E_k) $
// $ mu(∪_(k=1)^∞ E_k) = sum_(k=1)^∞ mu(E_k) $
  $
  mu(union.big_(k=1)^∞ E_k) = sum_(k=1)^∞ mu(E_k)
  $

  #framed()[
    Ce genre de formules peuvent paraître impressionnantes (ici elle concerne la sigma-additivité), mais si on prend les choses petit à petit, les choses ne sont pas si difficiles.
  ]
]

#slide(title:"Pragmatisme : débarassons-nous de l'infini")[
  // $ mu(∪_(k=1)^∞ E_k) = sum_(k=1)^∞ mu(E_k) $
// $ mu(∪_(k=1)^∞ E_k) = sum_(k=1)^∞ mu(E_k) $
  $
  mu(union.big_(k=1)^n E_k) = sum_(k=1)^n mu(E_k)
  $

  - On suppose chaque ensemble disjoint !

  #framed()[
    En se débarassant de l'infini, on a une *mesure simplement additive*. Dans le livre _Elements de statistique..._, le chapitre sur la mesure mentionne la notion de mesure additive sans la définir ET sans expliciter qu'il s'agit bien d'un concept mathématique.\ On reviendra (peut-être ?) ultérieurement sur la sigma-additivité.
  ]
]

#slide(title:"le cardinal fait sa mu")[
  == Le symbole $mu$
  On a déjà vu le cardinal qui marche comme une fonction :
  $"Ensemble" arrow "Nombre"$\

  \
  En fait : \ 
  $"card"(E) = mu(E)$

  == $mu$ comme mesure de comptage. 
  #framed[
    Le cardinal comme cas particulier de mesure !
    \ Vrai ici pour nos ensembles *discrets* (ou dénombrables), c'est-à-dire dans $NN$
  ]

]

#slide(title:"La somme")[
  == Le symbole $sum$ 
  - Il peut faire peur, mais c'est comme une boucle en programmation
  - 1 + 2 + 3 + 4 $arrow$ "compter tous les nombres de 1 à 4"
  - Cela revient à dire "on a 1 au début et on a 4 à la fin" :
  $
    sum_(k=1)^4
  $
  - pour parcourir tous les éléments entre 1 et 4 on utilise un indice, en général noté $i$, $k$, $j$...
  - mais on veut additionner chaque élément, représenté par l'indice, donc on note :
   $
    sum_(k=1)^4 k
  $

  #framed()[
     $
    sum_(k=1)^4 k = 10
  $

    $k$ change donc de valeur (il s'incrémente) à chaque itération; et chaque valeur de k est additionné à la suivante. $k$ est comme un compteur :
    $
      k = 1 "initiatlisation à 1";\
      + (k = 2) "1 + 2 = 3 : on additionne le résultat précédent par celui-ci";\
      + (k = 3) "3 + 3 = 6 : on additionne le résultat précédent par celui-ci "\
      + (k = 4) "6 + 4 = 10 : on additionne le résultat précédent par celui-ci "\
    $
  ]

]

#focus-slide()[
  Cette notation est utile écrire de façon plus synthétique : imaginons qu'on ait à calculer tous les nombres de 1 à 1000 et qu'il faille écrire chaque opération à la main...
]

#slide(title:"Indice")[
  == On peut utiliser ce compteur autrement
  - Si ce compteur commence à 1, puis 2, puis ... jusqu'à $n$ (ici $n = 4$), on peut s'en servir pour parcourir différents ensembles.

  === J'ai plusieurs ensembles 
  $
    E_1, E_2, E_3, 3_4
  $

  $mu$ (qui nous permet de compter les éléments de E), renvoie donc des valeurs, par exemple :

  $
    mu(E_1) = 3\
    mu(E_2) = 1\
    mu(E_3) = 6\
    mu(E_4) = 3 
  $

]

#slide(title:"Mesure de comptage de différents ensembles")[
  == Retourner et additionner la mesure de comptage de chaque ensemble
  $
    sum_(k=1)^4 mu(E_k) = 13
  $

 Ici on a 4 ensembles, mais on peut généraliser avec un nombre naturel quelconque, noté $n$\

 $
  sum_(k=1)^n mu(E_k) = {n | n in NN} 
 $
]

#slide(title:"Le grand symbole Union")[
 $
  mu(union.big_(k=1)^n E_k) = sum_(k=1)^n mu(E_k)
  $



  - Cela revient à dire que la mesure de comptage sur l'union des ensembles est égale à la somme des mesures de comptage faites sur chaque ensemble pris séparément 

  #framed()[
    Vous vous rappelez de :\
    $|A union B| = |A| + |B|$ ?
  ]
]

#slide(title: "Pourquoi faire ça ?")[
  == Conclusion
  - C'est tout pour la notion de comptage !
  - Les dernières notions vues ne sont pas utiles immédiatement mais :
    - permettent de s'acclimater à certains symboles
    - posent des jalons (incomplets) pour la partie axée mesure puis probabilités
]
