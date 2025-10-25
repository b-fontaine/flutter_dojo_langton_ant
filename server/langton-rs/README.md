# Langton's Ant - API REST en Rust

API REST implémentant la simulation de la fourmi de Langton, développée en Rust avec une architecture propre (Clean Architecture).

## 📋 Table des matières

- [Description](#description)
- [Règles de la fourmi de Langton](#règles-de-la-fourmi-de-langton)
- [Architecture](#architecture)
- [Prérequis](#prérequis)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [API](#api)
- [Tests](#tests)
- [Contribution](#contribution)
- [Qualité du code](#qualité-du-code)

## 📖 Description

La fourmi de Langton est un automate cellulaire bidimensionnel inventé par Chris Langton en 1986. Cette API REST permet de simuler le comportement de la fourmi étape par étape.

Cette implémentation suit les principes de **Clean Architecture** avec une séparation stricte des couches :
- **Domain** : Logique métier pure (entités, objets-valeur)
- **Application** : Cas d'utilisation
- **Infrastructure** : Serveur web, CORS
- **Interface** : Handlers HTTP, DTOs

## 🐜 Règles de la fourmi de Langton

La fourmi se déplace sur une grille infinie de cellules blanches et noires selon ces règles simples :

1. **Sur une cellule blanche** :
   - Tourner de 90° vers la droite (sens horaire)
   - Changer la couleur de la cellule en noir
   - Avancer d'une case

2. **Sur une cellule noire** :
   - Tourner de 90° vers la gauche (sens anti-horaire)
   - Changer la couleur de la cellule en blanc
   - Avancer d'une case

Malgré la simplicité de ces règles, la fourmi génère des motifs complexes et imprévisibles.

## 🏗️ Architecture

```
src/
├── domain/              # Couche domaine (logique métier)
│   ├── entities.rs      # Entités Ant et Cell
│   └── value_objects.rs # Objets-valeur (Orientation, Position, Color)
├── application/         # Couche application
│   └── use_cases.rs     # Cas d'utilisation StepUseCase
├── infrastructure/      # Couche infrastructure
│   └── web.rs           # Configuration serveur web et CORS
├── interface/           # Couche interface
│   ├── handlers.rs      # Handlers HTTP
│   └── dto.rs           # Data Transfer Objects
├── main.rs              # Point d'entrée
└── lib.rs               # Exports de bibliothèque
```

## 🔧 Prérequis

- **Rust** 1.75 ou supérieur
- **Cargo** (gestionnaire de paquets Rust)
- **Docker** et **Docker Compose** (optionnel, pour l'exécution conteneurisée)

## 📦 Installation

### Installation locale

```bash
# Cloner le dépôt
git clone <url-du-repo>
cd server/langton-rs

# Installer les dépendances
make install
# ou
cargo fetch

# Compiler le projet
make build
# ou
cargo build --release
```

### Installation avec Docker

```bash
# Construire l'image Docker
make docker-build
# ou
docker-compose build
```

## 🚀 Utilisation

### Exécution locale

```bash
# Lancer le serveur en mode développement
cargo run

# Lancer le serveur en mode release
cargo run --release
```

Le serveur démarre sur `http://localhost:3000`

### Exécution avec Docker

```bash
# Démarrer le service avec Docker Compose
make docker-up
# ou
docker-compose up -d

# Arrêter le service
docker-compose down
```

## 🌐 API

### Endpoint principal

**POST** `/api/step`

Calcule la prochaine étape de la fourmi de Langton.

#### Requête

**Headers:**
```
Content-Type: application/json
```

**Body:**
```json
{
  "orientation": "north",
  "position": {
    "x": 0,
    "y": 0
  },
  "cell_color": "white"
}
```

**Paramètres:**
- `orientation` (string) : Orientation de la fourmi
  - Valeurs possibles : `"north"`, `"east"`, `"south"`, `"west"`
- `position` (object) : Position actuelle de la fourmi
  - `x` (integer) : Coordonnée X
  - `y` (integer) : Coordonnée Y
- `cell_color` (string) : Couleur de la cellule actuelle
  - Valeurs possibles : `"white"`, `"black"`

#### Réponse

**Status:** `200 OK`

**Body:**
```json
{
  "ant": {
    "orientation": "east",
    "position": {
      "x": 1,
      "y": 0
    }
  },
  "cell": {
    "color": "black",
    "position": {
      "x": 0,
      "y": 0
    }
  }
}
```

**Paramètres de réponse:**
- `ant` (object) : État de la fourmi après le déplacement
  - `orientation` (string) : Nouvelle orientation
  - `position` (object) : Nouvelle position
- `cell` (object) : État de la cellule après le passage de la fourmi
  - `color` (string) : Nouvelle couleur de la cellule
  - `position` (object) : Position de la cellule modifiée

### Exemples avec curl

#### Exemple 1 : Fourmi sur cellule blanche, orientée vers le nord

```bash
curl -X POST http://localhost:3000/api/step \
  -H "Content-Type: application/json" \
  -d '{
    "orientation": "north",
    "position": {"x": 0, "y": 0},
    "cell_color": "white"
  }'
```

**Résultat :** La fourmi tourne à droite (vers l'est), la cellule devient noire, et la fourmi avance en (1, 0).

#### Exemple 2 : Fourmi sur cellule noire, orientée vers l'est

```bash
curl -X POST http://localhost:3000/api/step \
  -H "Content-Type: application/json" \
  -d '{
    "orientation": "east",
    "position": {"x": 5, "y": 3},
    "cell_color": "black"
  }'
```

**Résultat :** La fourmi tourne à gauche (vers le nord), la cellule devient blanche, et la fourmi avance en (5, 4).

#### Exemple 3 : Séquence de plusieurs étapes

```bash
# Étape 1
curl -X POST http://localhost:3000/api/step \
  -H "Content-Type: application/json" \
  -d '{"orientation":"north","position":{"x":0,"y":0},"cell_color":"white"}'

# Étape 2 (utiliser la réponse de l'étape 1)
curl -X POST http://localhost:3000/api/step \
  -H "Content-Type: application/json" \
  -d '{"orientation":"east","position":{"x":1,"y":0},"cell_color":"white"}'

# Étape 3 (utiliser la réponse de l'étape 2)
curl -X POST http://localhost:3000/api/step \
  -H "Content-Type: application/json" \
  -d '{"orientation":"south","position":{"x":1,"y":-1},"cell_color":"white"}'
```

#### Exemple 4 : Avec jq pour formater la réponse

```bash
curl -X POST http://localhost:3000/api/step \
  -H "Content-Type: application/json" \
  -d '{"orientation":"west","position":{"x":-2,"y":5},"cell_color":"black"}' \
  | jq '.'
```

## 🧪 Tests

Le projet inclut des tests unitaires et des tests BDD (Behavior-Driven Development) avec Cucumber.

### Lancer tous les tests

```bash
make test
# ou
cargo test
```

### Lancer uniquement les tests unitaires

```bash
cargo test --lib
```

### Lancer uniquement les tests BDD

```bash
cargo test --test cucumber
```

### Couverture des tests

Le projet vise une couverture de **100%** du code métier avec :
- **19 tests unitaires** couvrant toutes les couches
- **11 scénarios Gherkin** avec 88 étapes au total

Les scénarios BDD se trouvent dans `tests/features/langton_ant.feature`.

## 🤝 Contribution

### Prérequis pour contribuer

1. Forker le projet
2. Créer une branche pour votre fonctionnalité (`git checkout -b feature/ma-fonctionnalite`)
3. Respecter l'architecture Clean Architecture existante
4. Écrire des tests pour toute nouvelle fonctionnalité

### Standards de qualité

Avant de soumettre une pull request, assurez-vous que :

#### 1. Le linter ne remonte aucune erreur

```bash
make lint
# ou
cargo clippy --all-targets -- -D warnings
```

#### 2. Tous les tests passent

```bash
make test
# ou
cargo test
```

#### 3. Le code compile sans erreur

```bash
make build
# ou
cargo build --release
```

#### 4. Docker fonctionne correctement

```bash
make docker-build
make docker-up
# Tester l'API
curl -X POST http://localhost:3000/api/step \
  -H "Content-Type: application/json" \
  -d '{"orientation":"north","position":{"x":0,"y":0},"cell_color":"white"}'
# Arrêter
docker-compose down
```

### Processus de contribution

1. **Écrire les tests d'abord** (TDD/BDD)
   - Ajouter des scénarios Gherkin si nécessaire
   - Écrire les tests unitaires

2. **Implémenter la fonctionnalité**
   - Respecter la séparation des couches
   - Suivre les principes SOLID
   - Documenter le code avec des commentaires si nécessaire

3. **Vérifier la qualité**
   ```bash
   make lint
   make test
   make build
   ```

4. **Commiter et pousser**
   ```bash
   git add .
   git commit -m "feat: description de la fonctionnalité"
   git push origin feature/ma-fonctionnalite
   ```

5. **Créer une Pull Request**
   - Décrire les changements
   - Référencer les issues liées
   - Attendre la revue de code

## ✅ Qualité du code

### Commandes Makefile disponibles

```bash
make lint          # Vérifier le code avec clippy
make test          # Lancer tous les tests
make build         # Compiler en mode release
make install       # Installer les dépendances
make deps          # Alias pour install
make docker-build  # Construire l'image Docker
make docker-up     # Démarrer avec Docker Compose
make compose-up    # Alias pour docker-up
```

### Gates de qualité

Tous les gates suivants doivent passer :
- ✅ Linter (clippy) : 0 warning, 0 erreur
- ✅ Tests : 100% de réussite
- ✅ Couverture : 100% du code métier
- ✅ Compilation : succès
- ✅ Docker Compose : démarrage sans erreur

## 📚 Technologies utilisées

- **Rust 1.75** - Langage de programmation
- **Axum 0.7** - Framework web
- **Tokio** - Runtime asynchrone
- **Tower** - Middleware
- **Tower-HTTP** - CORS
- **Serde** - Sérialisation/désérialisation JSON
- **Cucumber-rs** - Tests BDD
- **Docker** - Conteneurisation
