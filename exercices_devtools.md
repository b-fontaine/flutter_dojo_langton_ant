# Exercices Flutter DevTools - Fourmi de Langton

Ce document contient 10 exercices progressifs pour maîtriser complètement Flutter DevTools dans le contexte de l'application Fourmi de Langton.

## Table des matières

1. [Exercice 1 : Découverte de l'Inspector - Explorer l'arborescence des widgets](#exercice-1--découverte-de-linspector---explorer-larborescence-des-widgets)
2. [Exercice 2 : Layout Explorer - Comprendre les contraintes et le positionnement](#exercice-2--layout-explorer---comprendre-les-contraintes-et-le-positionnement)
3. [Exercice 3 : Widget Inspector - Modifier les propriétés en temps réel](#exercice-3--widget-inspector---modifier-les-propriétés-en-temps-réel)
4. [Exercice 4 : Performance View - Identifier les problèmes de rendu](#exercice-4--performance-view---identifier-les-problèmes-de-rendu)
5. [Exercice 5 : Memory View - Détecter les fuites mémoire](#exercice-5--memory-view---détecter-les-fuites-mémoire)
6. [Exercice 6 : Network View - Analyser les appels API](#exercice-6--network-view---analyser-les-appels-api)
7. [Exercice 7 : Logging View - Tracer l'exécution de l'application](#exercice-7--logging-view---tracer-lexécution-de-lapplication)
8. [Exercice 8 : Debugger - Points d'arrêt et inspection de variables](#exercice-8--debugger---points-darrêt-et-inspection-de-variables)
9. [Exercice 9 : App Size Tool - Optimiser la taille de l'application](#exercice-9--app-size-tool---optimiser-la-taille-de-lapplication)
10. [Exercice 10 : Deep Links & Navigation - Analyser le flux de navigation](#exercice-10--deep-links--navigation---analyser-le-flux-de-navigation)

---

## Exercice 1 : Découverte de l'Inspector - Explorer l'arborescence des widgets

### 🎯 Objectif
Apprendre à naviguer dans l'arborescence des widgets de l'application Fourmi de Langton et comprendre la structure de l'interface utilisateur.

### 📋 Fonctionnalités DevTools pratiquées
- **Flutter Inspector** : Arborescence des widgets, sélection de widgets, propriétés

### 📝 Instructions étape par étape

1. **Lancer l'application en mode debug**
   ```bash
   cd front/langton_flutter
   flutter run -d chrome --web-port=8080
   ```

2. **Ouvrir DevTools**
   - Dans le terminal, repérez l'URL DevTools (ex: `http://127.0.0.1:9100/?uri=...`)
   - Ouvrez cette URL dans votre navigateur
   - Ou utilisez la commande : `flutter pub global run devtools`

3. **Accéder à l'onglet Inspector**
   - Cliquez sur l'onglet "Flutter Inspector" dans la barre supérieure
   - Observez l'arborescence des widgets à gauche

4. **Explorer la structure de MyHomePage**
   - Développez l'arborescence : `MyApp` → `MaterialApp` → `MyHomePage` → `Scaffold`
   - Notez les widgets enfants : `AppBar`, `Center`, `Image`

5. **Utiliser le mode "Select Widget"**
   - Cliquez sur l'icône de curseur en haut de l'Inspector
   - Survolez l'image de la fourmi dans l'application
   - Observez comment le widget correspondant est mis en surbrillance dans l'arborescence

6. **Examiner les propriétés du widget Image**
   - Sélectionnez le widget `Image` dans l'arborescence
   - Dans le panneau de droite, observez les propriétés :
     - `height: 80.0`
     - `image: AssetImage('assets/ant.png')`

### 🔍 Solution détaillée

**Comment accéder au panneau Inspector :**
- L'Inspector est accessible via le premier onglet de DevTools
- Il affiche une représentation visuelle de l'arborescence des widgets

**Ce qu'il faut observer :**
- **Structure hiérarchique** : L'application suit la structure classique Flutter
  ```
  MyApp (StatelessWidget)
  └── MaterialApp
      └── MyHomePage (StatefulWidget)
          └── Scaffold
              ├── AppBar
              │   └── Text("Fourmi de Langton")
              └── Center
                  └── Image.asset('assets/ant.png')
  ```

- **Propriétés des widgets** : Chaque widget affiche ses propriétés configurables
- **État du widget** : Les StatefulWidgets montrent leur état actuel

**Comment interpréter les résultats :**
- Les widgets en **gras** sont des widgets clés (avec une Key)
- Les icônes indiquent le type de widget (StatelessWidget, StatefulWidget, etc.)
- La profondeur de l'arborescence indique la complexité de l'UI

**Bonnes pratiques :**
- ✅ Utilisez l'Inspector pour comprendre la structure avant de modifier le code
- ✅ Activez "Show Guidelines" pour visualiser les contraintes de layout
- ✅ Utilisez "Highlight Repaints" pour identifier les widgets qui se redessinent
- ⚠️ Une arborescence trop profonde (>10 niveaux) peut indiquer un problème de structure

**Astuces :**
- **Raccourci clavier** : `Shift + Click` sur un widget dans l'app pour le sélectionner dans l'Inspector
- **Recherche** : Utilisez la barre de recherche pour trouver rapidement un widget par son type
- **Filtres** : Activez "Hide Debug Paint" pour masquer les widgets de debug

---

## Exercice 2 : Layout Explorer - Comprendre les contraintes et le positionnement

### 🎯 Objectif
Maîtriser le Layout Explorer pour comprendre comment les widgets sont positionnés et dimensionnés, en particulier le widget `Center` qui contient l'image de la fourmi.

### 📋 Fonctionnalités DevTools pratiquées
- **Layout Explorer** : Visualisation des contraintes, dimensions, alignement
- **Inspector** : Sélection de widgets de layout

### 📝 Instructions étape par étape

1. **Sélectionner le widget Center**
   - Dans l'Inspector, localisez et sélectionnez le widget `Center`
   - Observez qu'il est l'enfant direct du `body` du `Scaffold`

2. **Activer le Layout Explorer**
   - Dans le panneau de droite de l'Inspector, repérez la section "Layout Explorer"
   - Si elle n'est pas visible, assurez-vous d'avoir sélectionné un widget de layout (Center, Row, Column, etc.)

3. **Analyser les contraintes du Center**
   - Observez les dimensions affichées :
     - **Contraintes reçues** : Les contraintes du parent (Scaffold body)
     - **Taille réelle** : La taille occupée par le Center
   - Notez que le Center occupe tout l'espace disponible

4. **Examiner le positionnement de l'Image**
   - Sélectionnez le widget `Image` enfant du `Center`
   - Observez dans le Layout Explorer :
     - La hauteur fixe de 80 pixels
     - L'absence de largeur spécifiée (utilise la largeur intrinsèque de l'image)
     - Le centrage horizontal et vertical

5. **Activer "Show Baselines"**
   - Dans les options de l'Inspector, activez "Show Baselines"
   - Observez les lignes de base du texte dans l'AppBar

6. **Expérimenter avec les contraintes**
   - Redimensionnez la fenêtre du navigateur
   - Observez comment le Center s'adapte et maintient l'image centrée

### 🔍 Solution détaillée

**Comment accéder au Layout Explorer :**
- Sélectionnez un widget de layout (Center, Row, Column, Stack, Flex, etc.)
- Le Layout Explorer apparaît automatiquement dans le panneau de droite
- Il affiche une représentation visuelle des contraintes et dimensions

**Ce qu'il faut observer :**

1. **Contraintes du Center**
   - **Contraintes entrantes** : `BoxConstraints(0.0<=w<=Infinity, 0.0<=h<=Infinity)`
   - Le Center reçoit des contraintes "loose" (non strictes) du Scaffold
   - Il peut occuper n'importe quelle taille dans ces limites

2. **Comportement du Center**
   - Le Center occupe **tout l'espace disponible** du parent
   - Il centre son enfant (Image) dans cet espace
   - Dimensions typiques : largeur = largeur de l'écran, hauteur = hauteur disponible sous l'AppBar

3. **Contraintes de l'Image**
   - **Hauteur** : Fixée à 80 pixels (`height: 80`)
   - **Largeur** : Calculée automatiquement pour maintenir le ratio de l'image
   - **Position** : Centrée horizontalement et verticalement par le widget Center parent

**Comment interpréter les résultats :**

Le Layout Explorer utilise un code couleur :
- 🟦 **Bleu** : Contraintes du parent
- 🟩 **Vert** : Taille réelle du widget
- 🟨 **Jaune** : Padding/Margin
- 🟥 **Rouge** : Violations de contraintes (overflow)

**Schéma de layout :**
```
Scaffold (plein écran)
└── body: Center (occupe tout l'espace disponible)
    └── Image (80px de haut, largeur auto, centré)
```

**Bonnes pratiques :**
- ✅ Utilisez le Layout Explorer pour déboguer les problèmes de positionnement
- ✅ Vérifiez que les contraintes sont cohérentes (pas de conflits)
- ✅ Activez "Show Guidelines" pour visualiser les limites des widgets
- ⚠️ Les overflow (débordements) apparaissent en rouge - à corriger immédiatement

**Astuces :**
- **Dimensions flexibles** : Un widget sans taille explicite prend la taille de son contenu
- **Contraintes strictes** : `BoxConstraints.tight(Size(100, 100))` force une taille exacte
- **Contraintes loose** : Permettent au widget de choisir sa taille dans une plage
- **Debug Paint** : Activez pour voir les bordures de tous les widgets

**Exercice bonus :**
Modifiez le code pour remplacer `Center` par `Align` avec différents alignements :
```dart
Align(
  alignment: Alignment.topLeft,
  child: Image.asset('assets/ant.png', height: 80),
)
```
Observez les changements dans le Layout Explorer.

---

## Exercice 3 : Widget Inspector - Modifier les propriétés en temps réel

### 🎯 Objectif
Apprendre à modifier les propriétés des widgets en temps réel sans recompiler l'application, en utilisant les fonctionnalités avancées de l'Inspector.

### 📋 Fonctionnalités DevTools pratiquées
- **Widget Inspector** : Modification de propriétés, Hot Reload, Debug Paint
- **Details Tree** : Exploration approfondie des propriétés

### 📝 Instructions étape par étape

1. **Activer les options de debug paint**
   - Dans l'Inspector, localisez la barre d'outils en haut
   - Activez les options suivantes (icônes en haut à droite) :
     - 🎨 **Debug Paint** : Affiche les bordures de tous les widgets
     - 📏 **Show Guidelines** : Affiche les lignes de guidage
     - 🔄 **Highlight Repaints** : Met en surbrillance les widgets qui se redessinent

2. **Observer l'effet du Debug Paint**
   - Notez les bordures colorées autour de chaque widget
   - Les couleurs indiquent différents types de widgets :
     - Cyan : RenderBox avec taille
     - Bleu : Widgets de layout
     - Jaune : Padding

3. **Modifier la hauteur de l'image**
   - Sélectionnez le widget `Image` dans l'arborescence
   - Dans le panneau "Details Tree" à droite, trouvez la propriété `height`
   - Notez la valeur actuelle : `80.0`
   - **Note** : La modification directe n'est pas toujours possible, mais vous pouvez :
     - Copier le chemin du widget
     - Modifier le code source
     - Utiliser Hot Reload (⚡)

4. **Utiliser Hot Reload pour tester des modifications**
   - Ouvrez `lib/main.dart` dans votre éditeur
   - Modifiez la ligne 54 :
     ```dart
     child: Image.asset('assets/ant.png', height: 150), // Changé de 80 à 150
     ```
   - Sauvegardez le fichier (Ctrl+S / Cmd+S)
   - Observez le Hot Reload automatique dans le terminal
   - Dans DevTools, vérifiez que la propriété `height` est maintenant `150.0`

5. **Expérimenter avec d'autres propriétés**
   - Ajoutez une largeur explicite :
     ```dart
     child: Image.asset('assets/ant.png', height: 150, width: 150),
     ```
   - Observez dans le Layout Explorer comment les contraintes changent

6. **Tester le mode "Slow Animations"**
   - Dans la barre d'outils de l'Inspector, cliquez sur l'icône de tortue 🐢
   - Cela ralentit toutes les animations par un facteur 5
   - Redimensionnez la fenêtre pour voir les animations de layout au ralenti

### 🔍 Solution détaillée

**Comment accéder aux propriétés modifiables :**
- Sélectionnez un widget dans l'arborescence
- Le panneau "Details Tree" affiche toutes les propriétés
- Les propriétés en **gras** sont celles définies explicitement dans le code
- Les propriétés en gris sont les valeurs par défaut

**Ce qu'il faut observer :**

1. **Debug Paint activé**
   - Chaque widget a une bordure colorée
   - Les RenderBox affichent leurs dimensions
   - Les baselines de texte sont visibles
   - Les contraintes de layout sont matérialisées

2. **Propriétés de l'Image**
   ```
   Image
   ├── image: AssetImage(bundle: null, name: "assets/ant.png")
   ├── height: 80.0 (ou 150.0 après modification)
   ├── width: null (ou 150.0 si spécifié)
   ├── fit: null (utilise BoxFit.contain par défaut)
   └── alignment: Alignment.center
   ```

3. **Effet du Hot Reload**
   - Le Hot Reload préserve l'état de l'application
   - Seuls les widgets modifiés sont reconstruits
   - Le temps de reload est généralement < 1 seconde

**Comment interpréter les résultats :**

**Avant modification (height: 80)** :
- L'image occupe 80 pixels de hauteur
- La largeur est calculée automatiquement pour maintenir le ratio
- L'image est centrée dans le Center parent

**Après modification (height: 150, width: 150)** :
- L'image occupe 150x150 pixels
- Le ratio original peut être déformé si l'image n'est pas carrée
- L'image reste centrée

**Bonnes pratiques :**
- ✅ Utilisez Hot Reload pour tester rapidement des modifications visuelles
- ✅ Activez Debug Paint pour comprendre la structure de layout
- ✅ Utilisez "Slow Animations" pour déboguer les animations complexes
- ✅ Désactivez Debug Paint en production (impact sur les performances)
- ⚠️ Hot Reload ne fonctionne pas pour tous les changements (ex: modifications de l'état global)

**Astuces :**
- **Hot Reload** : `r` dans le terminal ou sauvegarde du fichier
- **Hot Restart** : `R` dans le terminal (réinitialise l'état)
- **Copier le chemin du widget** : Clic droit sur un widget → "Copy Widget Path"
- **Inspecter le RenderObject** : Passez à l'onglet "Render Tree" pour voir les objets de rendu

**Propriétés courantes à modifier pour expérimenter :**
```dart
// Taille
Image.asset('assets/ant.png', 
  height: 150, 
  width: 150,
)

// Ajustement
Image.asset('assets/ant.png', 
  height: 150,
  fit: BoxFit.cover, // ou contain, fill, fitWidth, fitHeight, none, scaleDown
)

// Couleur de teinte
Image.asset('assets/ant.png', 
  height: 150,
  color: Colors.blue,
  colorBlendMode: BlendMode.modulate,
)
```

**Exercice bonus :**
Ajoutez un `Container` autour de l'Image avec un padding et une bordure :
```dart
Container(
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.orange, width: 3),
    borderRadius: BorderRadius.circular(10),
  ),
  child: Image.asset('assets/ant.png', height: 80),
)
```
Observez dans l'Inspector comment le Container affecte le layout.

---

## Exercice 4 : Performance View - Identifier les problèmes de rendu

### 🎯 Objectif
Apprendre à utiliser le Performance View pour identifier les problèmes de performance, mesurer le temps de rendu des frames et détecter les janks (saccades).

### 📋 Fonctionnalités DevTools pratiquées
- **Performance View** : Timeline, Frame Analysis, Shader Compilation
- **CPU Profiler** : Analyse des appels de méthodes

### 📝 Instructions étape par étape

1. **Préparer l'application pour le profiling**
   - Assurez-vous que l'application est en mode **debug** (pas profile ou release)
   - Ouvrez DevTools et accédez à l'onglet **"Performance"**

2. **Créer une animation pour tester les performances**
   - Modifiez `lib/main.dart` pour ajouter une animation de rotation à l'image :
   ```dart
   class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
     late AnimationController _controller;

     @override
     void initState() {
       super.initState();
       _controller = AnimationController(
         duration: const Duration(seconds: 2),
         vsync: this,
       )..repeat();
     }

     @override
     void dispose() {
       _controller.dispose();
       super.dispose();
     }

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
           title: Text(widget.title),
         ),
         body: Center(
           child: RotationTransition(
             turns: _controller,
             child: Image.asset('assets/ant.png', height: 80),
           ),
         ),
       );
     }
   }
   ```
   - Sauvegardez et attendez le Hot Reload

3. **Enregistrer une session de performance**
   - Dans l'onglet Performance, cliquez sur le bouton **"Record"** (⏺️)
   - Laissez l'animation tourner pendant 5-10 secondes
   - Cliquez sur **"Stop"** (⏹️)

4. **Analyser le Frame Chart**
   - Observez le graphique des frames en haut
   - Les barres vertes représentent les frames rendues à 60 FPS (16.67ms)
   - Les barres rouges indiquent des frames qui ont dépassé le budget (janks)
   - Recherchez des pics ou des irrégularités

5. **Examiner la Timeline**
   - Sélectionnez une frame dans le graphique
   - La timeline détaillée s'affiche en dessous
   - Observez les différentes phases :
     - **Build** : Construction des widgets
     - **Layout** : Calcul des positions et tailles
     - **Paint** : Dessin des widgets
     - **Rasterize** : Conversion en pixels (GPU)

6. **Identifier les goulots d'étranglement**
   - Recherchez les méthodes qui prennent le plus de temps
   - Les barres les plus longues indiquent les opérations coûteuses
   - Notez les appels répétitifs qui pourraient être optimisés

### 🔍 Solution détaillée

**Comment accéder au Performance View :**
- Onglet "Performance" dans DevTools
- Bouton "Record" pour démarrer l'enregistrement
- Bouton "Stop" pour arrêter et analyser

**Ce qu'il faut observer :**

1. **Frame Chart (graphique des frames)**
   - **Axe horizontal** : Temps (en secondes)
   - **Axe vertical** : Durée de la frame (en millisecondes)
   - **Ligne verte à 16.67ms** : Budget pour 60 FPS
   - **Ligne rouge à 33.33ms** : Budget pour 30 FPS

2. **Indicateurs de performance**
   - **FPS moyen** : Devrait être proche de 60
   - **Frame time** : Devrait rester sous 16.67ms
   - **Janks** : Nombre de frames qui dépassent le budget

3. **Timeline détaillée**
   ```
   Frame #42 (16.2ms) ✅
   ├── Build (2.1ms)
   │   └── _MyHomePageState.build
   ├── Layout (1.8ms)
   │   └── RenderRotationTransition.performLayout
   ├── Paint (3.2ms)
   │   └── RenderImage.paint
   └── Rasterize (9.1ms) [GPU]
       └── Shader compilation
   ```

**Comment interpréter les résultats :**

**Performance optimale** :
- Toutes les frames en vert (< 16.67ms)
- FPS stable à 60
- Pas de pics dans la timeline
- Build/Layout/Paint équilibrés

**Problèmes courants** :
- 🔴 **Frames rouges** : Janks, l'animation saccade
- ⚠️ **Build trop long** : Trop de widgets reconstruits
- ⚠️ **Paint trop long** : Widgets complexes à dessiner
- ⚠️ **Rasterize trop long** : Problème GPU (shaders, effets)

**Bonnes pratiques :**
- ✅ Visez 60 FPS constant pour une expérience fluide
- ✅ Utilisez `const` constructors pour éviter les rebuilds inutiles
- ✅ Évitez les opérations coûteuses dans `build()`
- ✅ Utilisez `RepaintBoundary` pour isoler les zones qui se repeignent souvent
- ⚠️ Le mode debug est plus lent que le mode profile/release

**Astuces :**
- **Mode Profile** : Pour des mesures plus précises, lancez en mode profile :
  ```bash
  flutter run --profile -d chrome
  ```
- **Shader Warmup** : Les premières frames peuvent être lentes (compilation des shaders)
- **Zoom** : Utilisez la molette de la souris pour zoomer dans la timeline
- **Sélection** : Cliquez sur une frame pour voir ses détails

**Optimisations possibles pour l'animation** :
```dart
// ✅ Bon : Utilise RepaintBoundary pour isoler l'animation
Center(
  child: RepaintBoundary(
    child: RotationTransition(
      turns: _controller,
      child: Image.asset('assets/ant.png', height: 80),
    ),
  ),
)

// ✅ Bon : Utilise const pour les widgets statiques
AppBar(
  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  title: const Text('Fourmi de Langton'), // const ici
)
```

**Exercice bonus :**
Ajoutez plusieurs images animées et observez l'impact sur les performances :
```dart
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(5, (index) =>
      RotationTransition(
        turns: _controller,
        child: Image.asset('assets/ant.png', height: 80),
      ),
    ),
  ),
)
```
Comparez les performances avec et sans `RepaintBoundary`.

---

## Exercice 5 : Memory View - Détecter les fuites mémoire

### 🎯 Objectif
Maîtriser le Memory View pour surveiller l'utilisation de la mémoire, détecter les fuites mémoire et analyser les allocations d'objets.

### 📋 Fonctionnalités DevTools pratiquées
- **Memory View** : Heap Snapshot, Memory Timeline, Allocation Tracking
- **Diff View** : Comparaison de snapshots

### 📝 Instructions étape par étape

1. **Accéder au Memory View**
   - Ouvrez DevTools et cliquez sur l'onglet **"Memory"**
   - Observez le graphique de la mémoire en temps réel

2. **Comprendre le graphique de mémoire**
   - **Axe horizontal** : Temps
   - **Axe vertical** : Mémoire utilisée (en MB)
   - **Ligne bleue** : Mémoire Dart (heap)
   - **Ligne orange** : Mémoire native (images, plugins)
   - **Ligne verte** : Mémoire totale

3. **Créer un scénario de test avec allocation mémoire**
   - Modifiez `lib/main.dart` pour ajouter un bouton qui crée des objets :
   ```dart
   class _MyHomePageState extends State<MyHomePage> {
     List<List<int>> _data = [];

     void _allocateMemory() {
       setState(() {
         // Alloue environ 10MB de données
         _data.add(List.generate(1000000, (index) => index));
       });
     }

     void _clearMemory() {
       setState(() {
         _data.clear();
       });
     }

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
           title: Text(widget.title),
         ),
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset('assets/ant.png', height: 80),
               SizedBox(height: 20),
               Text('Listes allouées: ${_data.length}'),
               SizedBox(height: 20),
               ElevatedButton(
                 onPressed: _allocateMemory,
                 child: Text('Allouer mémoire'),
               ),
               ElevatedButton(
                 onPressed: _clearMemory,
                 child: Text('Libérer mémoire'),
               ),
             ],
           ),
         ),
       );
     }
   }
   ```
   - Sauvegardez et attendez le Hot Reload

4. **Prendre un snapshot initial**
   - Dans le Memory View, cliquez sur **"Snapshot"** (📸)
   - Un snapshot de la heap est créé et apparaît dans la liste

5. **Allouer de la mémoire et observer**
   - Cliquez 3-4 fois sur le bouton "Allouer mémoire" dans l'application
   - Observez le graphique de mémoire monter
   - Prenez un nouveau snapshot

6. **Comparer les snapshots (Diff View)**
   - Sélectionnez les deux snapshots
   - Cliquez sur **"Diff"**
   - Observez les objets qui ont été créés entre les deux snapshots
   - Recherchez les `List<int>` dans la liste

7. **Libérer la mémoire et vérifier**
   - Cliquez sur "Libérer mémoire" dans l'application
   - Cliquez sur **"GC"** (Garbage Collection) dans DevTools
   - Observez la mémoire diminuer
   - Prenez un troisième snapshot pour confirmer

8. **Analyser les objets en mémoire**
   - Dans un snapshot, explorez les différentes catégories :
     - **Class** : Groupé par type de classe
     - **Size** : Trié par taille mémoire
     - **Count** : Trié par nombre d'instances
   - Recherchez les objets de votre application

### 🔍 Solution détaillée

**Comment accéder au Memory View :**
- Onglet "Memory" dans DevTools
- Graphique en temps réel de l'utilisation mémoire
- Boutons pour Snapshot, GC, et analyse

**Ce qu'il faut observer :**

1. **Graphique de mémoire en temps réel**
   ```
   Mémoire (MB)
   50 |                    /\
   40 |                   /  \
   30 |                  /    \___
   20 |    /\    /\    /
   10 |___/  \__/  \__/
    0 |________________________
      0s   10s   20s   30s   40s
   ```
   - **Pics** : Allocations importantes
   - **Descentes** : Garbage Collection
   - **Plateau** : Mémoire stable

2. **Snapshot de la heap**
   ```
   Snapshot #1 (12.5 MB)
   ├── List<int> (10.2 MB) - 3 instances
   ├── String (1.1 MB) - 245 instances
   ├── Image (0.8 MB) - 1 instance
   └── Autres (0.4 MB)
   ```

3. **Diff entre snapshots**
   ```
   Diff: Snapshot #2 - Snapshot #1
   ├── +List<int> (10.2 MB) - +1 instance ⚠️
   ├── +String (0.2 MB) - +12 instances
   └── -BuildContext (0.1 MB) - -5 instances
   ```

**Comment interpréter les résultats :**

**Utilisation mémoire normale** :
- Mémoire augmente progressivement au démarrage
- Stabilisation après le chargement initial
- GC périodiques (descentes dans le graphique)
- Retour à un niveau de base après libération

**Signes de fuite mémoire** :
- 🔴 Mémoire qui augmente continuellement sans redescendre
- 🔴 Objets qui ne sont jamais libérés après utilisation
- 🔴 Nombre d'instances qui croît indéfiniment
- 🔴 GC qui ne libère pas la mémoire

**Bonnes pratiques :**
- ✅ Prenez des snapshots avant et après des opérations importantes
- ✅ Forcez le GC avant de prendre un snapshot pour des résultats précis
- ✅ Utilisez le Diff pour identifier les fuites
- ✅ Surveillez les listeners non supprimés (StreamSubscription, AnimationController)
- ⚠️ Les images en cache peuvent consommer beaucoup de mémoire

**Astuces :**
- **Forcer le GC** : Cliquez sur le bouton "GC" pour déclencher le garbage collector
- **Filtrer** : Utilisez la barre de recherche pour trouver des classes spécifiques
- **Trier** : Cliquez sur les en-têtes de colonnes pour trier par taille, count, etc.
- **Retainer Path** : Double-cliquez sur un objet pour voir ce qui le retient en mémoire

**Fuites mémoire courantes à éviter** :
```dart
// ❌ Mauvais : StreamSubscription non annulée
class _MyState extends State<MyWidget> {
  late StreamSubscription _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = someStream.listen((data) {});
    // Oubli de _subscription.cancel() dans dispose()
  }
}

// ✅ Bon : Annulation dans dispose()
class _MyState extends State<MyWidget> {
  late StreamSubscription _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = someStream.listen((data) {});
  }

  @override
  void dispose() {
    _subscription.cancel(); // ✅
    super.dispose();
  }
}

// ❌ Mauvais : AnimationController non disposé
class _MyState extends State<MyWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
  }
  // Oubli de _controller.dispose()
}

// ✅ Bon : Dispose du controller
@override
void dispose() {
  _controller.dispose(); // ✅
  super.dispose();
}
```

**Exercice bonus :**
Créez intentionnellement une fuite mémoire et détectez-la :
```dart
// Fuite : Timer qui n'est jamais annulé
Timer.periodic(Duration(seconds: 1), (timer) {
  print('Tick'); // Ce timer ne sera jamais annulé
});
```
Utilisez le Memory View pour identifier cette fuite.

---

## Exercice 6 : Network View - Analyser les appels API

### 🎯 Objectif
Maîtriser le Network View pour surveiller les requêtes HTTP, analyser les temps de réponse et déboguer les problèmes de communication avec l'API Langton.

### 📋 Fonctionnalités DevTools pratiquées
- **Network View** : Monitoring des requêtes HTTP, inspection des headers, analyse des payloads
- **Timeline** : Visualisation du timing des requêtes

### 📝 Instructions étape par étape

1. **Préparer l'application pour les appels réseau**
   - Ajoutez la dépendance `http` dans `pubspec.yaml` :
   ```yaml
   dependencies:
     flutter:
       sdk: flutter
     cupertino_icons: ^1.0.8
     http: ^1.2.0
   ```
   - Exécutez `flutter pub get`

2. **Modifier l'application pour appeler l'API Langton**
   - Modifiez `lib/main.dart` pour ajouter un appel à l'API :
   ```dart
   import 'package:http/http.dart' as http;
   import 'dart:convert';

   class _MyHomePageState extends State<MyHomePage> {
     String _status = 'Prêt';
     Map<String, dynamic>? _lastResponse;

     Future<void> _callLangtonApi() async {
       setState(() {
         _status = 'Appel en cours...';
       });

       try {
         final response = await http.post(
           Uri.parse('http://localhost:3000/api/step'),
           headers: {'Content-Type': 'application/json'},
           body: jsonEncode({
             'orientation': 'north',
             'position': {'x': 0, 'y': 0},
             'cell_color': 'white',
           }),
         );

         if (response.statusCode == 200) {
           setState(() {
             _lastResponse = jsonDecode(response.body);
             _status = 'Succès: ${response.statusCode}';
           });
         } else {
           setState(() {
             _status = 'Erreur: ${response.statusCode}';
           });
         }
       } catch (e) {
         setState(() {
           _status = 'Erreur: $e';
         });
       }
     }

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
           title: Text(widget.title),
         ),
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset('assets/ant.png', height: 80),
               SizedBox(height: 20),
               Text('Status: $_status'),
               if (_lastResponse != null)
                 Text('Position: ${_lastResponse!['ant']['position']}'),
               SizedBox(height: 20),
               ElevatedButton(
                 onPressed: _callLangtonApi,
                 child: Text('Appeler API'),
               ),
             ],
           ),
         ),
       );
     }
   }
   ```
   - Sauvegardez et attendez le Hot Reload

3. **Démarrer le serveur Langton**
   ```bash
   docker-compose up -d langton-api
   ```

4. **Accéder au Network View**
   - Ouvrez DevTools et cliquez sur l'onglet **"Network"**
   - Observez la liste vide des requêtes

5. **Effectuer des requêtes et observer**
   - Cliquez sur le bouton "Appeler API" dans l'application
   - Observez la requête apparaître dans le Network View
   - Cliquez sur la requête pour voir les détails

6. **Analyser les détails de la requête**
   - **General** : URL, méthode, status code, timing
   - **Request Headers** : Content-Type, User-Agent, etc.
   - **Request Body** : Le JSON envoyé
   - **Response Headers** : Content-Type, Content-Length, etc.
   - **Response Body** : Le JSON reçu

7. **Mesurer les performances réseau**
   - Effectuez plusieurs requêtes
   - Observez les temps de réponse dans la colonne "Duration"
   - Identifiez les requêtes lentes (> 1000ms)

8. **Tester les cas d'erreur**
   - Arrêtez le serveur : `docker-compose stop langton-api`
   - Cliquez sur "Appeler API"
   - Observez l'erreur dans le Network View

### 🔍 Solution détaillée

**Comment accéder au Network View :**
- Onglet "Network" dans DevTools
- Liste chronologique de toutes les requêtes HTTP
- Détails complets de chaque requête/réponse

**Ce qu'il faut observer :**

1. **Liste des requêtes**
   ```
   Method | URL                              | Status | Duration | Size
   POST   | http://localhost:3000/api/step   | 200    | 45ms     | 156B
   POST   | http://localhost:3000/api/step   | 200    | 38ms     | 156B
   POST   | http://localhost:3000/api/step   | 500    | 12ms     | 89B
   ```

2. **Détails d'une requête réussie**
   ```
   General:
   - URL: http://localhost:3000/api/step
   - Method: POST
   - Status: 200 OK
   - Duration: 45ms

   Request Headers:
   - Content-Type: application/json
   - Accept: application/json
   - User-Agent: Dart/3.9 (dart:io)

   Request Body:
   {
     "orientation": "north",
     "position": {"x": 0, "y": 0},
     "cell_color": "white"
   }

   Response Headers:
   - Content-Type: application/json
   - Content-Length: 156
   - Access-Control-Allow-Origin: *

   Response Body:
   {
     "ant": {
       "orientation": "east",
       "position": {"x": 1, "y": 0}
     },
     "cell": {
       "position": {"x": 0, "y": 0},
       "color": "black"
     }
   }
   ```

**Comment interpréter les résultats :**

**Requête réussie (200 OK)** :
- ✅ Status code 200
- ✅ Temps de réponse < 100ms (bon)
- ✅ Headers corrects (Content-Type: application/json)
- ✅ Body valide et conforme au contrat

**Problèmes courants** :
- 🔴 **404 Not Found** : URL incorrecte ou endpoint inexistant
- 🔴 **500 Internal Server Error** : Erreur côté serveur
- 🔴 **CORS Error** : Problème de Cross-Origin Resource Sharing
- ⚠️ **Timeout** : Serveur trop lent ou injoignable
- ⚠️ **Network Error** : Pas de connexion réseau

**Bonnes pratiques :**
- ✅ Vérifiez toujours les status codes (2xx = succès, 4xx = erreur client, 5xx = erreur serveur)
- ✅ Inspectez les headers pour déboguer les problèmes CORS
- ✅ Validez le format du body (JSON, XML, etc.)
- ✅ Surveillez les temps de réponse (< 100ms = excellent, < 500ms = bon, > 1000ms = lent)
- ⚠️ Attention aux données sensibles dans les logs (tokens, mots de passe)

**Astuces :**
- **Filtrer** : Utilisez la barre de recherche pour filtrer par URL ou méthode
- **Copier** : Clic droit sur une requête → "Copy as cURL" pour reproduire la requête
- **Clear** : Bouton "Clear" pour vider la liste des requêtes
- **Timing** : La colonne "Duration" inclut le temps réseau + traitement serveur

**Analyse du timing** :
```
Total Duration: 45ms
├── DNS Lookup: 2ms
├── TCP Connection: 5ms
├── TLS Handshake: 8ms (si HTTPS)
├── Request Sent: 1ms
├── Waiting (TTFB): 25ms  ← Temps serveur
└── Content Download: 4ms
```

**Exercice bonus :**
Ajoutez un intercepteur pour logger toutes les requêtes :
```dart
import 'package:http/http.dart' as http;

class LoggingClient extends http.BaseClient {
  final http.Client _inner = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    print('Request: ${request.method} ${request.url}');
    final response = await _inner.send(request);
    print('Response: ${response.statusCode}');
    return response;
  }
}

// Utilisation
final client = LoggingClient();
final response = await client.post(...);
```

---

## Exercice 7 : Logging View - Tracer l'exécution de l'application

### 🎯 Objectif
Maîtriser le Logging View pour tracer l'exécution de l'application, déboguer les problèmes et comprendre le flux d'exécution.

### 📋 Fonctionnalités DevTools pratiquées
- **Logging View** : Console de logs, filtrage, niveaux de log
- **Debugger Console** : Évaluation d'expressions

### 📝 Instructions étape par étape

1. **Accéder au Logging View**
   - Ouvrez DevTools et cliquez sur l'onglet **"Logging"**
   - Observez les logs système déjà présents

2. **Ajouter des logs dans l'application**
   - Modifiez `lib/main.dart` pour ajouter des logs :
   ```dart
   import 'dart:developer' as developer;

   class _MyHomePageState extends State<MyHomePage> {
     int _counter = 0;

     void _incrementCounter() {
       developer.log('Début de _incrementCounter', name: 'MyApp');
       developer.log('Valeur actuelle: $_counter', name: 'MyApp', level: 800);

       setState(() {
         _counter++;
       });

       developer.log('Nouvelle valeur: $_counter', name: 'MyApp', level: 800);
       developer.log('Fin de _incrementCounter', name: 'MyApp');
     }

     @override
     void initState() {
       super.initState();
       developer.log('initState appelé', name: 'MyApp.Lifecycle');
     }

     @override
     void dispose() {
       developer.log('dispose appelé', name: 'MyApp.Lifecycle');
       super.dispose();
     }

     @override
     Widget build(BuildContext context) {
       developer.log('build appelé', name: 'MyApp.Lifecycle', level: 500);

       return Scaffold(
         appBar: AppBar(
           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
           title: Text(widget.title),
         ),
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset('assets/ant.png', height: 80),
               SizedBox(height: 20),
               Text('Compteur: $_counter'),
               SizedBox(height: 20),
               ElevatedButton(
                 onPressed: _incrementCounter,
                 child: Text('Incrémenter'),
               ),
             ],
           ),
         ),
       );
     }
   }
   ```
   - Sauvegardez et attendez le Hot Reload

3. **Observer les logs au démarrage**
   - Dans le Logging View, observez les logs de `initState` et `build`
   - Notez l'ordre d'exécution des méthodes

4. **Interagir et observer les logs**
   - Cliquez plusieurs fois sur "Incrémenter"
   - Observez les logs de `_incrementCounter` et `build`
   - Notez que `build` est appelé après chaque `setState`

5. **Utiliser les filtres**
   - Dans la barre de recherche, tapez "Lifecycle"
   - Seuls les logs avec le nom "MyApp.Lifecycle" sont affichés
   - Effacez le filtre pour voir tous les logs

6. **Filtrer par niveau de log**
   - Utilisez le menu déroulant pour sélectionner un niveau minimum
   - **ALL** : Tous les logs
   - **FINEST** (300) : Logs très détaillés
   - **FINER** (400) : Logs détaillés
   - **FINE** (500) : Logs de debug
   - **CONFIG** (700) : Configuration
   - **INFO** (800) : Informations
   - **WARNING** (900) : Avertissements
   - **SEVERE** (1000) : Erreurs graves

7. **Utiliser print() vs developer.log()**
   - Ajoutez un `print()` dans le code :
   ```dart
   void _incrementCounter() {
     print('Print: Compteur = $_counter'); // Apparaît dans stdout
     developer.log('Log: Compteur = $_counter', name: 'MyApp'); // Apparaît dans Logging
     setState(() {
       _counter++;
     });
   }
   ```
   - Observez que `print()` apparaît aussi dans le Logging View

8. **Logger des objets complexes**
   ```dart
   developer.log(
     'Données complexes',
     name: 'MyApp',
     error: {'counter': _counter, 'timestamp': DateTime.now().toString()},
   );
   ```

### 🔍 Solution détaillée

**Comment accéder au Logging View :**
- Onglet "Logging" dans DevTools
- Console affichant tous les logs de l'application
- Filtres par nom, niveau, et texte

**Ce qu'il faut observer :**

1. **Ordre d'exécution au démarrage**
   ```
   [MyApp.Lifecycle] initState appelé
   [MyApp.Lifecycle] build appelé
   [flutter] Frame rendered
   ```

2. **Ordre d'exécution lors d'un clic**
   ```
   [MyApp] Début de _incrementCounter
   [MyApp] Valeur actuelle: 0
   [MyApp] Nouvelle valeur: 1
   [MyApp] Fin de _incrementCounter
   [MyApp.Lifecycle] build appelé
   [flutter] Frame rendered
   ```

3. **Format des logs**
   ```
   [Timestamp] [Name] Message
   12:34:56.789 [MyApp] Début de _incrementCounter
   ```

**Comment interpréter les résultats :**

**Cycle de vie normal** :
1. `initState()` appelé une fois au montage du widget
2. `build()` appelé après `initState()`
3. `build()` rappelé après chaque `setState()`
4. `dispose()` appelé au démontage du widget

**Problèmes courants** :
- 🔴 **build() appelé trop souvent** : Optimisation nécessaire
- 🔴 **setState() dans build()** : Boucle infinie
- ⚠️ **Logs manquants** : Vérifier le niveau de filtrage
- ⚠️ **Trop de logs** : Pollution de la console

**Bonnes pratiques :**
- ✅ Utilisez `developer.log()` plutôt que `print()` pour un meilleur contrôle
- ✅ Ajoutez un `name` pour catégoriser les logs
- ✅ Utilisez des niveaux appropriés (INFO pour info, WARNING pour avertissements, etc.)
- ✅ Loggez les événements importants (lifecycle, erreurs, actions utilisateur)
- ⚠️ Évitez de logger dans `build()` en production (impact performance)

**Astuces :**
- **Clear** : Bouton "Clear" pour vider les logs
- **Copier** : Sélectionnez un log et copiez-le
- **Recherche** : Utilisez Ctrl+F pour rechercher dans les logs
- **Timestamp** : Activez/désactivez l'affichage des timestamps

**Niveaux de log recommandés** :
```dart
// FINEST (300) : Détails très fins
developer.log('Détail interne', level: 300);

// FINE (500) : Debug
developer.log('Debug info', level: 500);

// INFO (800) : Information
developer.log('Action utilisateur', level: 800);

// WARNING (900) : Avertissement
developer.log('Attention', level: 900);

// SEVERE (1000) : Erreur grave
developer.log('Erreur critique', level: 1000);
```

**Exercice bonus :**
Créez une classe de logging personnalisée :
```dart
class AppLogger {
  static void debug(String message) {
    developer.log(message, name: 'App', level: 500);
  }

  static void info(String message) {
    developer.log(message, name: 'App', level: 800);
  }

  static void warning(String message) {
    developer.log(message, name: 'App', level: 900);
  }

  static void error(String message, [Object? error]) {
    developer.log(message, name: 'App', level: 1000, error: error);
  }
}

// Utilisation
AppLogger.info('Application démarrée');
AppLogger.error('Erreur réseau', exception);
```

---

## Exercice 8 : Debugger - Points d'arrêt et inspection de variables

### 🎯 Objectif
Maîtriser le Debugger pour poser des points d'arrêt, inspecter les variables, et naviguer dans le code pas à pas.

### 📋 Fonctionnalités DevTools pratiquées
- **Debugger** : Breakpoints, Step Over, Step Into, Step Out
- **Variables View** : Inspection de l'état
- **Call Stack** : Pile d'appels

### 📝 Instructions étape par étape

1. **Préparer le code pour le debugging**
   - Modifiez `lib/main.dart` pour ajouter une logique plus complexe :
   ```dart
   class _MyHomePageState extends State<MyHomePage> {
     int _counter = 0;
     List<int> _history = [];

     void _incrementCounter() {
       final oldValue = _counter;
       _counter++;
       _history.add(_counter);

       if (_counter % 5 == 0) {
         _showMultipleOfFive();
       }
     }

     void _showMultipleOfFive() {
       print('Le compteur est un multiple de 5: $_counter');
     }

     int _calculateSum() {
       return _history.fold(0, (sum, value) => sum + value);
     }

     @override
     Widget build(BuildContext context) {
       final sum = _calculateSum();

       return Scaffold(
         appBar: AppBar(
           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
           title: Text(widget.title),
         ),
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset('assets/ant.png', height: 80),
               SizedBox(height: 20),
               Text('Compteur: $_counter'),
               Text('Somme: $sum'),
               Text('Historique: ${_history.length} valeurs'),
               SizedBox(height: 20),
               ElevatedButton(
                 onPressed: _incrementCounter,
                 child: Text('Incrémenter'),
               ),
             ],
           ),
         ),
       );
     }
   }
   ```

2. **Accéder au Debugger dans VS Code ou Android Studio**
   - **VS Code** : Ouvrez le fichier `main.dart`
   - Cliquez dans la marge gauche à côté de la ligne `_counter++;` pour poser un breakpoint (point rouge)
   - Lancez l'application en mode debug (F5)

3. **Accéder au Debugger dans DevTools**
   - Ouvrez DevTools et cliquez sur l'onglet **"Debugger"**
   - Naviguez vers le fichier `main.dart` dans l'arborescence
   - Cliquez sur le numéro de ligne pour poser un breakpoint

4. **Déclencher le breakpoint**
   - Dans l'application, cliquez sur "Incrémenter"
   - L'exécution s'arrête au breakpoint
   - L'interface du debugger s'active

5. **Inspecter les variables**
   - Dans le panneau "Variables", observez :
     - `this` : L'instance de `_MyHomePageState`
     - `_counter` : La valeur actuelle
     - `_history` : La liste des valeurs
     - `oldValue` : La variable locale

6. **Naviguer pas à pas**
   - **Step Over (F10)** : Exécute la ligne courante et passe à la suivante
   - **Step Into (F11)** : Entre dans la fonction appelée
   - **Step Out (Shift+F11)** : Sort de la fonction courante
   - **Continue (F5)** : Continue jusqu'au prochain breakpoint

7. **Utiliser la Call Stack**
   - Observez la pile d'appels dans le panneau "Call Stack"
   - Cliquez sur différents frames pour voir le contexte

8. **Évaluer des expressions**
   - Dans la console du debugger, tapez des expressions :
     - `_counter * 2`
     - `_history.length`
     - `_calculateSum()`
   - Observez les résultats en temps réel

9. **Breakpoints conditionnels**
   - Clic droit sur un breakpoint → "Edit Breakpoint"
   - Ajoutez une condition : `_counter > 3`
   - Le breakpoint ne s'active que si la condition est vraie

10. **Logpoints (points de log)**
    - Clic droit dans la marge → "Add Logpoint"
    - Entrez un message : `Compteur = {_counter}`
    - Un message est loggé sans arrêter l'exécution

### 🔍 Solution détaillée

**Comment accéder au Debugger :**
- **VS Code** : Panneau de debug (Ctrl+Shift+D), lancez avec F5
- **Android Studio** : Bouton Debug, breakpoints dans la marge
- **DevTools** : Onglet "Debugger", navigation dans les fichiers

**Ce qu'il faut observer :**

1. **État au breakpoint**
   ```
   Variables:
   ├── this (_MyHomePageState)
   │   ├── _counter: 3
   │   ├── _history: [1, 2, 3]
   │   └── widget: MyHomePage
   ├── oldValue: 3
   └── context: BuildContext
   ```

2. **Call Stack**
   ```
   Call Stack:
   #0  _MyHomePageState._incrementCounter (main.dart:45)
   #1  _InkResponseState._handleTap (ink_well.dart:989)
   #2  GestureRecognizer.invokeCallback (recognizer.dart:198)
   #3  TapGestureRecognizer.handleTapUp (tap.dart:608)
   ```

3. **Breakpoints actifs**
   ```
   Breakpoints:
   ✓ main.dart:45 (_counter++;)
   ✓ main.dart:50 (_showMultipleOfFive) [condition: _counter % 5 == 0]
   ⊗ main.dart:55 (disabled)
   ```

**Comment interpréter les résultats :**

**Navigation pas à pas** :
- **Step Over** : Utile pour exécuter rapidement sans entrer dans les détails
- **Step Into** : Utile pour comprendre le fonctionnement interne d'une fonction
- **Step Out** : Utile pour sortir d'une fonction dont on a vu assez

**Inspection des variables** :
- Les variables locales sont dans le scope actuel
- `this` donne accès à tous les champs de la classe
- Les collections (List, Map) peuvent être explorées

**Bonnes pratiques :**
- ✅ Posez des breakpoints aux endroits stratégiques (début de fonction, conditions, boucles)
- ✅ Utilisez des breakpoints conditionnels pour cibler des cas spécifiques
- ✅ Utilisez des logpoints pour tracer sans arrêter l'exécution
- ✅ Inspectez la call stack pour comprendre le flux d'exécution
- ⚠️ Désactivez les breakpoints inutiles pour ne pas ralentir le debug

**Astuces :**
- **Breakpoint temporaire** : Shift+Clic pour un breakpoint qui se désactive après la première activation
- **Désactiver tous les breakpoints** : Utile pour exécuter sans interruption
- **Watch expressions** : Ajoutez des expressions à surveiller en permanence
- **Hot Reload pendant le debug** : Fonctionne même avec des breakpoints actifs

**Scénarios de debugging courants** :

1. **Déboguer une condition**
   ```dart
   if (_counter % 5 == 0) {  // Breakpoint ici
     _showMultipleOfFive();
   }
   // Vérifier pourquoi la condition est vraie/fausse
   ```

2. **Déboguer une boucle**
   ```dart
   for (var i = 0; i < _history.length; i++) {  // Breakpoint ici
     sum += _history[i];
     // Inspecter i et sum à chaque itération
   }
   ```

3. **Déboguer une exception**
   ```dart
   try {
     final result = _calculateSum();  // Breakpoint ici
   } catch (e) {
     print('Erreur: $e');  // Breakpoint ici aussi
   }
   ```

**Exercice bonus :**
Ajoutez un bug intentionnel et utilisez le debugger pour le trouver :
```dart
int _calculateSum() {
  var sum = 0;
  for (var i = 0; i <= _history.length; i++) {  // Bug: <= au lieu de <
    sum += _history[i];  // RangeError quand i == _history.length
  }
  return sum;
}
```
Utilisez le debugger pour identifier et corriger le bug.

---

## Exercice 9 : App Size Tool - Optimiser la taille de l'application

### 🎯 Objectif
Maîtriser l'App Size Tool pour analyser la taille de l'application, identifier les gros fichiers et optimiser le bundle final.

### 📋 Fonctionnalités DevTools pratiquées
- **App Size Tool** : Analyse de la taille, Tree Map, Diff entre versions

### 📝 Instructions étape par étape

1. **Compiler l'application en mode release**
   ```bash
   cd front/langton_flutter
   flutter build web --release
   ```

2. **Générer le fichier d'analyse de taille**
   ```bash
   flutter build web --release --analyze-size
   ```
   - Un fichier JSON est généré avec les informations de taille

3. **Accéder à l'App Size Tool**
   - Ouvrez DevTools (peut nécessiter une application en cours d'exécution)
   - Cliquez sur l'onglet **"App Size"**
   - Cliquez sur "Load Size File"
   - Sélectionnez le fichier JSON généré

4. **Analyser la Tree Map**
   - Observez la visualisation en rectangles
   - Chaque rectangle représente un fichier ou un package
   - La taille du rectangle est proportionnelle à la taille du fichier
   - Les couleurs regroupent les packages

5. **Identifier les gros fichiers**
   - Recherchez les plus gros rectangles
   - Cliquez sur un rectangle pour voir les détails
   - Notez les fichiers qui occupent le plus d'espace :
     - Dart code compilé
     - Assets (images, fonts)
     - Packages tiers

6. **Analyser par catégorie**
   - Utilisez le menu déroulant pour changer la vue :
     - **By Package** : Groupé par package
     - **By Directory** : Groupé par répertoire
     - **By File Type** : Groupé par type de fichier

7. **Comparer deux versions**
   - Modifiez l'application (ajoutez une grosse image par exemple)
   - Recompilez : `flutter build web --release --analyze-size`
   - Dans l'App Size Tool, cliquez sur "Load Diff"
   - Sélectionnez les deux fichiers JSON
   - Observez les différences (en vert = augmentation, en rouge = diminution)

8. **Optimiser la taille**
   - Identifiez les optimisations possibles :
     - Compresser les images
     - Supprimer les packages inutilisés
     - Utiliser des fonts système au lieu de custom fonts
     - Activer le tree-shaking

### 🔍 Solution détaillée

**Comment accéder à l'App Size Tool :**
- Onglet "App Size" dans DevTools
- Nécessite un fichier JSON généré par `--analyze-size`
- Visualisation interactive de la taille de l'app

**Ce qu'il faut observer :**

1. **Taille totale de l'application**
   ```
   Total Size: 2.4 MB
   ├── Dart Code: 1.2 MB (50%)
   ├── Assets: 0.8 MB (33%)
   ├── Packages: 0.3 MB (12%)
   └── Other: 0.1 MB (5%)
   ```

2. **Répartition par package**
   ```
   flutter: 800 KB
   ├── material: 400 KB
   ├── widgets: 300 KB
   └── rendering: 100 KB

   http: 150 KB
   langton_ant: 250 KB
   ├── main.dart: 50 KB
   └── assets/ant.png: 200 KB
   ```

3. **Tree Map visuelle**
   ```
   ┌─────────────────────────────────────┐
   │ flutter (800KB)                     │
   │ ┌──────────┐ ┌──────────┐          │
   │ │ material │ │ widgets  │          │
   │ │  400KB   │ │  300KB   │          │
   │ └──────────┘ └──────────┘          │
   ├─────────────────────────────────────┤
   │ langton_ant (250KB)                 │
   │ ┌──────────────────────┐            │
   │ │ assets/ant.png 200KB │            │
   │ └──────────────────────┘            │
   └─────────────────────────────────────┘
   ```

**Comment interpréter les résultats :**

**Taille normale pour une app Flutter web** :
- **Petite app** : 1-3 MB
- **App moyenne** : 3-10 MB
- **Grosse app** : > 10 MB

**Éléments qui augmentent la taille** :
- 📦 **Packages tiers** : Chaque package ajoute du code
- 🖼️ **Assets non optimisés** : Images haute résolution, fonts
- 🎨 **Material Design** : Icônes et composants
- 🌐 **Internationalisation** : Traductions multiples

**Bonnes pratiques :**
- ✅ Compressez les images (WebP pour le web, PNG optimisé)
- ✅ Utilisez des SVG pour les icônes au lieu de PNG
- ✅ Supprimez les packages inutilisés du `pubspec.yaml`
- ✅ Activez le tree-shaking (automatique en mode release)
- ✅ Utilisez `--split-debug-info` pour réduire la taille
- ⚠️ Évitez d'inclure des assets inutilisés

**Astuces :**
- **Zoom** : Utilisez la molette pour zoomer dans la Tree Map
- **Recherche** : Barre de recherche pour trouver un fichier spécifique
- **Export** : Exportez les données en CSV pour analyse externe
- **Diff** : Comparez avant/après optimisation pour mesurer l'impact

**Optimisations concrètes** :

1. **Optimiser les images**
   ```bash
   # Installer ImageMagick
   brew install imagemagick  # macOS

   # Compresser une image PNG
   convert assets/ant.png -quality 85 -strip assets/ant_optimized.png

   # Convertir en WebP (meilleure compression)
   cwebp -q 80 assets/ant.png -o assets/ant.webp
   ```

2. **Supprimer les packages inutilisés**
   ```bash
   # Analyser les dépendances
   flutter pub deps

   # Supprimer un package
   flutter pub remove package_name
   ```

3. **Utiliser des fonts système**
   ```dart
   // ❌ Mauvais : Custom font (ajoute ~200KB)
   TextStyle(fontFamily: 'CustomFont')

   // ✅ Bon : Font système (0KB)
   TextStyle(fontFamily: 'Roboto')  // Android
   TextStyle(fontFamily: 'SF Pro')  // iOS
   ```

4. **Lazy loading des assets**
   ```dart
   // Charger les images à la demande
   Image.network('https://example.com/large-image.png')
   // au lieu de
   Image.asset('assets/large-image.png')
   ```

**Exercice bonus :**
Ajoutez plusieurs images et mesurez l'impact :
```yaml
# pubspec.yaml
flutter:
  assets:
    - assets/ant.png
    - assets/large_image_1.png  # 500KB
    - assets/large_image_2.png  # 500KB
    - assets/large_image_3.png  # 500KB
```
Compilez et comparez la taille avant/après avec l'App Size Tool.

---

## Exercice 10 : Deep Links & Navigation - Analyser le flux de navigation

### 🎯 Objectif
Maîtriser les outils de navigation de DevTools pour comprendre le flux de navigation, déboguer les routes et analyser les deep links.

### 📋 Fonctionnalités DevTools pratiquées
- **Navigator Inspector** : Visualisation de la pile de navigation
- **Route Analysis** : Analyse des routes
- **Deep Link Testing** : Test des liens profonds

### 📝 Instructions étape par étape

1. **Ajouter la navigation à l'application**
   - Modifiez `lib/main.dart` pour ajouter plusieurs écrans :
   ```dart
   import 'package:flutter/material.dart';

   void main() {
     runApp(const MyApp());
   }

   class MyApp extends StatelessWidget {
     const MyApp({super.key});

     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         title: 'Fourmi de Langton',
         theme: ThemeData(
           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
         ),
         initialRoute: '/',
         routes: {
           '/': (context) => const HomePage(),
           '/about': (context) => const AboutPage(),
           '/settings': (context) => const SettingsPage(),
         },
       );
     }
   }

   class HomePage extends StatelessWidget {
     const HomePage({super.key});

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: const Text('Fourmi de Langton'),
           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
         ),
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset('assets/ant.png', height: 80),
               const SizedBox(height: 20),
               ElevatedButton(
                 onPressed: () => Navigator.pushNamed(context, '/about'),
                 child: const Text('À propos'),
               ),
               ElevatedButton(
                 onPressed: () => Navigator.pushNamed(context, '/settings'),
                 child: const Text('Paramètres'),
               ),
             ],
           ),
         ),
       );
     }
   }

   class AboutPage extends StatelessWidget {
     const AboutPage({super.key});

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: const Text('À propos'),
           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
         ),
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Text('Application Fourmi de Langton'),
               const Text('Version 1.0.0'),
               const SizedBox(height: 20),
               ElevatedButton(
                 onPressed: () => Navigator.pop(context),
                 child: const Text('Retour'),
               ),
             ],
           ),
         ),
       );
     }
   }

   class SettingsPage extends StatelessWidget {
     const SettingsPage({super.key});

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: const Text('Paramètres'),
           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
         ),
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Text('Paramètres de l\'application'),
               const SizedBox(height: 20),
               ElevatedButton(
                 onPressed: () => Navigator.pop(context),
                 child: const Text('Retour'),
               ),
             ],
           ),
         ),
       );
     }
   }
   ```

2. **Accéder au Navigator Inspector**
   - Ouvrez DevTools
   - Dans l'onglet "Flutter Inspector", recherchez la section "Navigator"
   - Ou utilisez l'onglet dédié "Navigator" si disponible

3. **Observer la pile de navigation initiale**
   - Au démarrage, la pile contient uniquement `HomePage`
   - Représentation : `[HomePage]`

4. **Naviguer et observer les changements**
   - Cliquez sur "À propos" dans l'application
   - Observez la pile : `[HomePage, AboutPage]`
   - Cliquez sur "Retour"
   - Observez la pile : `[HomePage]`

5. **Tester une navigation complexe**
   - Depuis HomePage, allez vers About
   - Depuis About, retournez et allez vers Settings
   - Observez comment la pile évolue

6. **Utiliser le Widget Inspector avec la navigation**
   - Sélectionnez un widget dans AboutPage
   - Observez le chemin complet dans l'arborescence
   - Notez la présence de `Navigator` et `Route` dans l'arbre

7. **Déboguer les problèmes de navigation**
   - Ajoutez un log dans `onGenerateRoute` :
   ```dart
   MaterialApp(
     onGenerateRoute: (settings) {
       print('Navigation vers: ${settings.name}');
       // Logique de routing
     },
   )
   ```

8. **Tester les deep links (web uniquement)**
   - Modifiez l'URL dans le navigateur : `http://localhost:8080/#/about`
   - Observez que l'application navigue directement vers AboutPage
   - Vérifiez dans le Navigator Inspector

### 🔍 Solution détaillée

**Comment accéder au Navigator Inspector :**
- Section "Navigator" dans le Flutter Inspector
- Affiche la pile de navigation en temps réel
- Permet de visualiser les routes actives

**Ce qu'il faut observer :**

1. **Pile de navigation simple**
   ```
   Navigator Stack:
   ┌─────────────┐
   │  HomePage   │ ← Route active
   └─────────────┘
   ```

2. **Pile après navigation**
   ```
   Navigator Stack:
   ┌─────────────┐
   │  AboutPage  │ ← Route active (top)
   ├─────────────┤
   │  HomePage   │ ← Route en dessous
   └─────────────┘
   ```

3. **Routes nommées**
   ```
   Routes:
   / → HomePage
   /about → AboutPage
   /settings → SettingsPage
   ```

**Comment interpréter les résultats :**

**Navigation normale** :
- `push` ajoute une route au sommet de la pile
- `pop` retire la route du sommet
- La route au sommet est celle affichée

**Problèmes courants** :
- 🔴 **Route non trouvée** : Nom de route incorrect ou non défini
- 🔴 **Pile vide** : Pop sur une pile avec une seule route
- ⚠️ **Fuite mémoire** : Routes qui ne sont jamais retirées de la pile
- ⚠️ **Navigation circulaire** : A → B → A → B...

**Bonnes pratiques :**
- ✅ Utilisez des routes nommées pour une meilleure organisation
- ✅ Définissez toutes les routes dans `routes` ou `onGenerateRoute`
- ✅ Utilisez `Navigator.pushReplacementNamed` pour remplacer la route actuelle
- ✅ Utilisez `Navigator.popUntil` pour revenir à une route spécifique
- ⚠️ Attention aux routes modales qui bloquent la navigation

**Astuces :**
- **Navigation programmatique** : Testez la navigation depuis le debugger
  ```dart
  Navigator.pushNamed(context, '/about');
  ```
- **Arguments de route** : Passez des données entre écrans
  ```dart
  Navigator.pushNamed(context, '/details', arguments: {'id': 123});
  ```
- **Transitions personnalisées** : Utilisez `PageRouteBuilder` pour des animations custom

**Patterns de navigation avancés** :

1. **Navigation avec remplacement**
   ```dart
   // Remplace la route actuelle (pas de retour possible)
   Navigator.pushReplacementNamed(context, '/home');
   ```

2. **Navigation avec suppression de l'historique**
   ```dart
   // Supprime toutes les routes et navigue vers /home
   Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
   ```

3. **Navigation conditionnelle**
   ```dart
   // Retourne jusqu'à la première route
   Navigator.popUntil(context, (route) => route.isFirst);
   ```

4. **Deep links avec go_router**
   ```dart
   // Meilleure gestion des deep links
   final router = GoRouter(
     routes: [
       GoRoute(path: '/', builder: (context, state) => HomePage()),
       GoRoute(path: '/about', builder: (context, state) => AboutPage()),
     ],
   );
   ```

**Exercice bonus :**
Implémentez une navigation avec passage de paramètres :
```dart
// Page d'origine
Navigator.pushNamed(
  context,
  '/details',
  arguments: AntData(position: Position(x: 5, y: 10)),
);

// Page de destination
class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as AntData;
    return Scaffold(
      body: Text('Position: ${args.position.x}, ${args.position.y}'),
    );
  }
}
```
Observez dans le Navigator Inspector comment les arguments sont passés.

---

## Conclusion

Félicitations ! Vous avez complété les 10 exercices Flutter DevTools. Vous maîtrisez maintenant :

1. ✅ **Inspector** : Navigation dans l'arborescence des widgets
2. ✅ **Layout Explorer** : Compréhension des contraintes et du positionnement
3. ✅ **Widget Inspector** : Modification en temps réel et debug paint
4. ✅ **Performance View** : Identification des problèmes de rendu
5. ✅ **Memory View** : Détection des fuites mémoire
6. ✅ **Network View** : Analyse des appels API
7. ✅ **Logging View** : Traçage de l'exécution
8. ✅ **Debugger** : Points d'arrêt et inspection de variables
9. ✅ **App Size Tool** : Optimisation de la taille
10. ✅ **Navigation** : Analyse du flux de navigation

### Ressources complémentaires

- 📚 [Documentation officielle Flutter DevTools](https://docs.flutter.dev/tools/devtools)
- 🎥 [Flutter DevTools Playlist YouTube](https://www.youtube.com/playlist?list=PLjxrf2q8roU2RkC8gPPLfVGOEJkFVvL8L)
- 🔗 [Flutter Performance Best Practices](https://docs.flutter.dev/perf/best-practices)
- 🔗 [Flutter Debugging Guide](https://docs.flutter.dev/testing/debugging)

### Prochaines étapes

Pour aller plus loin avec l'application Fourmi de Langton :
1. Implémentez la grille de cellules avec un `GridView`
2. Ajoutez l'animation de la fourmi avec `AnimationController`
3. Intégrez l'API Rust pour calculer les mouvements
4. Utilisez DevTools pour optimiser les performances de la grille
5. Profilez la mémoire lors de l'exécution de milliers de mouvements

Bon développement avec Flutter DevTools ! 🚀
