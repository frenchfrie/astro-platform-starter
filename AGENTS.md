# Agents

## Overview

Ce projet utilise des agents IA pour aider dans les tâches de développement. Ce fichier documente les agents disponibles, leurs capacités et les modèles d'utilisation.

## Capabilités des Agents

### LSP (Language Server Protocol)
Les LSPs de génération de code s'activeront lorsque les fichiers seront lus.

- Écrire du code dans n'importe quel langage
- Implémenter des fonctionnalités en fonction des exigences
- Refactoriser et optimiser le code existant
- Écrire des tests unitaires

### Débogage
- Analyser les journaux d'erreurs et les traces de pile
- Identifier les bugs et suggérer des corrections
- Optimiser les problèmes de performance

### Documentation
- Générer la documentation API
- Ajouter des commentaires au code
- Créer des fichiers README
- Mettre à jour les changelogs

### Tests
- Générer des cas de test
- Écrire des tests d'intégration
- Créer des scénarios de test E2E
- Simuler les dépendances externes

### Revue de Code
- Identifier les problèmes potentiels
- Suggérer des améliorations
- Vérifier les meilleures pratiques
- Assurer la cohérence du code

## Utilisation

### Questions Directes
Poser des tâches spécifiques à l'agent :
- "Implémenter l'authentification utilisateur"
- "Ajouter une validation pour le champ email"
- "Créer un point de terminaison API pour /users"
- "Écrire des tests pour le module d'auth"

### Requêtes avec Contexte
Fournir un contexte pour obtenir de meilleurs résultats :
- "Quel est le flux d'authentification actuel ?"
- "Comment ajouter du cache ici ?"
- "Refactoriser ce module"

## Meilleures Pratiques
- Être spécifique sur les exigences
- Fournir un contexte de code pertinent
- Inclure des cas de test lorsque possible
