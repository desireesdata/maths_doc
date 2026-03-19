#import "@preview/typslides:1.3.2": *

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
  subtitle: ["A quoi ressemblerait un livre d'éléments mathématiques pour les métiers de la documentation ?"],
)

// #table-of-contents()

#title-slide[
  Brève présentation de la série
]

#slide(title: "Pourquoi cette série ?", outlined: true)[
  - Une série sur les *mathématiques appliquées* aux métiers de la documentation (en prenant pour base _Elements de statistique..._)
    - (Statistiques, mesures, graphes, etc.).
  - Systèmes d’information documentaires : archives, bibliothèques, universités. 
  - L’objectif : ouvrir un espace de discussion autour d’outils et d’idées utiles à nos pratiques.
  - Pas un cours exhaustif, mais une acculturation.
]

#slide(title: "Trois axes recouverts", outlined: true)[
  1. Gouvernance des données, documents, arborescences : audits.
    - Un pas de côté "stratégique" : pas seulement un outil technique.
  2. Technique : évaluer les données produites par un système technique (OCR, HTR, pipeline de transformation de données, migration, alignement de données, évaluation des résultats d'un LLM).
  3. Acculturation : veille métier; rester critique; expliquer et mettre en perspective des résultats.
]

#slide(title: "L’esprit de la série")[

  #framed(title: "Ce que ce n’est pas")[
    - Pas une formation complète d’ingénierie documentaire.
    - Pas non plus une initiation classique à la data-analyse.
  ]

  - Discussion à partir du livre _Elements de statistique et de mathématique de l'information_

  #v(0.6em)

  #framed(title: "Ce que l’on cherche")[
    - Discuter, lire, commenter, imaginer ce que serait ce livre aujourd'hui;
    - Faire émerger des intuitions mathématiques utiles dans nos métiers;
    - Relier les problèmes documentaires à des outils conceptuels.
  ]

   #framed(title: "Ce que l’on cherche")[
    - Je ne suis pas mathématicien du tout !
    - On ne deviendra pas "mathématicien", mais tenter de prendre au sérieux la dimension "ingénierie" de nos métiers.
    - C'est ambitieux, mais l'idée est de cheminer.

  ]
]

#slide(title: "Pourquoi des mathématiques en documentation ?")[

  - Pour mieux comprendre les données et leurs traitements.
    - Exemples : avant et après une migration ou un enrichissement de données;
    - Qualité de l'OCR/HTR, biais des métriques classiques;
    - Alignement/matching de données 
  - Pour auditer un système d’information ou une base documentaire.
    - Transformer des arborescences de façon optimale;
    - "Explicabilité" des boîtes noires & des biais: algorithmes de recherche, embeddings, métriques, etc.
  - Appliquer des solutions adaptées (les LLMS sont des tanks).
    - Quelque soit le degré de performance des LLMs, on *doit* rester critique vis à vis de résultats produits par des systèmes techniuqes
]

#slide(title: "Pourquoi des mathématiques en documentation ?")[

#framed(title: "Ce que l’on cherche")[
   == C'est ambitieux, mais on verra où nous mène cette balade "mathématico-documentaire" !
  ]

]
#title-slide[
  _Elements de statistique et de mathématique de l'information_ comme base de discussion ?
]

#slide(title: "Un point de départ volontairement simple")[

  - L'ouvrage est paru en *2002*.
  - Il présente des éléments de statistique et de mathématiques de l’information pour les métiers de la documentation.
  - Il date un peu, mais il peut servir de *base de départ* pour notre propre cheminement "documento-mathématique".
  - L’idée sera aussi de l’actualiser à la lumière de ce qui a changé en vingt ans.
    - à croiser avec d'autres ressources plus récentes.
]

#slide(title: "Pourquoi ce livre m’intéresse")[

  - Il représente bien l’état d’esprit de cette série.
  - Il propose un socle solide, situé à l’intersection :
    - des métiers de la documentation,
    - des données,
    - des méthodes quantitatives.
]

#slide(title: "Ce que nous allons faire dans cette première vidéo")[

  - Survoler le sommaire.
  - Extraire deux ou trois citations de l’introduction.
  - Faire passerelle avec la prochaine vidéo qui sera plus "mathématique".
  
]

#slide(title:"Magistral ou pratique ?")[
  === On ne résoudra pas d'équations, mais l'idée est de pratiquer via la programmation et la manipulation de données. Quelques incursions théoriques semblent cependant nécessaires pour pouvoir lier des choses apparemment différentes et développer son intuition !
]

#front-slide(
  title: "Lecture",
)


#slide(title:"Préface et introduction")[
  - Les "\*-métries"
    - découpage pertinent aujourd'hui ? (Penser surtout en termes de schémas de données et de contexte)
  - la notion de "loi" 
    - approche empirique "explicative"
    - une vision plus "offensive" des outils mathématiques (ex: enrichir des données) 
]

#slide(title:"Sommaire")[
  == Chapitres :
  1. La mesure de l'information
  2. Statistique de l'information
  3. Mathématique de l'information

  #framed[Un programme enthousiasmant... et ambitieux. ]
]