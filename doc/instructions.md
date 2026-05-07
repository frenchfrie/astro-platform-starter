Plan de Refonte du Site Web des Gîtes - Feydoux

📋 Vue d'ensemble

Ce document présente un plan détaillé pour restructurer le site web des gîtes de Feydoux, avec présentation multilingue (FR/EN), inspiré de la structure Airbnb/Abritel.

---

📁 Fichier à créer : plan-refonte-site.md

---

name: Plan Refonte Site Gîtes  
description: Plan complet de refonte du site web des gîtes de Feydoux avec étapes détaillées  
type: project

---

name: Plan Refonte Site Gîtes  
description: Plan complet de refonte du site web des gîtes de Feydoux avec étapes détaillées  
type: project

---

# 🏠 Plan de Refonte du Site Web des Gîtes - Feydoux

**Version:** 1.0  
**Date:** {{current date}}
**Langues:** Français / Anglais

---

## 🎯 Objectifs

- Créer une page d'accueil avec vue aérienne (drone) de l'ensemble du domaine
- Développer deux pages dédiées, une par gîte
- Adopter une structure similaire à Airbnb/Abritel
- Multilingue (FR/EN)
- Présenter les informations de contact et d'activités locales

  ***

## 📐 Structure du Site

├── / (Accueil)  
│ ├── Hero Section (drone view)
│ ├── Présentation générale  
│ ├── Liens vers les gîtes  
│ └── Footer (contact, langues)  
│  
├── /gites/le-logis-de-feydoux/  
│ ├── Hero section  
│ ├── 8 couchages - Piscine - Grand espaces  
│ ├── Galerie photos (piscine, chambres, salon, cuisine, extérieurs)  
│ ├── Informations pratiques  
│ └── Section contact  
│  
├── /gites/la-garenne/  
│ ├── Hero section  
│ ├── 4 couchages - SPA - Confort  
│ ├── Galerie photos (piscine, SPA, chambres, salon, cuisine, extérieurs)  
│ ├── Informations pratiques  
│ └── Section contact  
│  
├── /contact/  
│ └── Formulaire de contact  
│  
└── /about/  
└── À propos du domaine

---

## ✅ Étapes et Tâches Détaillées ─

### Étape 1: Analyse et Préparation (1-2 heures)

- [ ] Analyser le code actuel Astro
- [ ] Vérifier l'existant: composants, styles, contenus
- [ ] Identifier les images à ajouter (drone, gîtes, extérieurs)
- [ ] Créer la structure des fichiers pour les nouvelles pages
- [ ] Préparer les traductions FR/EN (texte de base)

### Étape 2: Architecture du Projet (30-45 min)

**Créer la structure de dossiers:**

```bash
src/
├── pages/
│   ├── index.astro          # Accueil
│   ├── gites/
│   │   ├── le-logis-de-feydoux.astro
│   │   └── la-garenne.astro
│   ├── contact.astro
│   └── about.astro
├── components/
│   ├── layout/
│   │   ├── Header.astro
│   │   ├── Footer.astro
│   │   └── Hero.astro
│   ├── gite/
│   │   ├── GiteHeader.astro
│   │   ├── GitePhotos.astro
│   │   └── GiteAmenities.astro
│   └── i18n/
│       ├── FR.astro
│       └── EN.astro
├── content/
│   ├── gites/
│   │   ├── le-logis-de-feydoux/
│   │   │   ├── metadata.json
│   │   │   ├── photos/
│   │   │   └── amenities.json
│   │   └── la-garenne/
│   │       ├── metadata.json
│   │       ├── photos/
│   │       └── amenities.json
│   └── shared/
│       ├── contact-info.json
│       └── activities.json
└── styles/
    └── gite-components.css

Étape 3: Page d'Accueil - Accueil (1-2 heures)

Tâches:

- Créer composant Hero avec image drone (vue aérienne)
- Créer section présentation du domaine
- Ajouter cartes gîtes avec liens vers les pages dédiées
- Intégrer bascule langue FR/EN
- Ajouter footer avec informations contact

Contenu principal:

<!-- Sections requises: -->
- Hero Section (drone view + titre principal)
- Introduction aux gîtes
- Carte des deux gîtes (Le Logis + La Garenne)
- Section "Ce que l'on peut faire aux environs"
- Formulaire de contact / coordonnées
- Sélection des gîtes avec photos

**Traductions nécessaires:**
- Titre principal
- Description domaine
- Boutons "Voir les gîtes"
- Sections activités
- Coordonnées

Étape 4: Page Gîte 1 - Le Logis de Feydoux (1.5-2 heures)

Tâches:

- Créer Hero section avec titre: "Gîte 8 couchages piscine, grand espaces et sérénité"
- Ajouter galerie photos dans la largeur:
  - Photo 1: Piscine
  - Photo 2: Chambre double + douche
  - Photo 3: Chambre simple + douche
  - Photo 4: Séjour
  - Photo 5: Coin cuisine
  - Photo 6: Extérieurs
- Créer section "Ce que l'on peut faire aux environs"
- Ajouter section contact avec texte: "Qui contacter"
- Intégrer traduction FR/EN

Spécificités:

┌─────────────────────┬────────────────────┐
│      Éléments       │      Détails       │
├─────────────────────┼────────────────────┤
│ Nombre de couchages │ 8                  │
├─────────────────────┼────────────────────┤
│ Piscine             │ ✓ Présente         │
├─────────────────────┼────────────────────┤
│ Espaces             │ Grandes dimensions │
├─────────────────────┼────────────────────┤
│ Vibe                │ Sérénité           │
└─────────────────────┴────────────────────┘

Étape 5: Page Gîte 2 - La Garenne (1.5-2 heures)

Tâches:

- Créer Hero section avec titre: "Gîte 4 couchages avec SPA, confort, calme et authenticité"
- Ajouter galerie photos dans la largeur:
  - Photo 1: SPA
  - Photo 2: Chambre double + douche
  - Photo 3: Chambre simple + douche
  - Photo 4: Séjour
  - Photo 5: Coin cuisine
  - Photo 6: Extérieurs
- Créer section "Ce que l'on peut faire aux environs"
- Ajouter section contact avec texte: "Qui contacter"
- Intégrer traduction FR/EN

Spécificités:

┌─────────────────────┬───────────────────────┐
│      Éléments       │        Détails        │
├─────────────────────┼───────────────────────┤
│ Nombre de couchages │ 4                     │
├─────────────────────┼───────────────────────┤
│ SPA                 │ ✓ Présente            │
├─────────────────────┼───────────────────────┤
│ Confort             │ ✓                     │
├─────────────────────┼───────────────────────┤
│ Vibe                │ Calme et authenticité │
└─────────────────────┴───────────────────────┘

Étape 6: Section "Quoi faire aux environs" (30-45 min)

Tâches:

- Créer fichier activities.json avec liste des activités
- Ajouter activités typiques: randonnée, vélo, gastronomie, patrimoine
- Traduire en FR/EN
- Intégrer sur toutes les pages (accueil + pages gîtes)

Exemple de contenu:
- Randonnées dans la campagne
- Visites de vignobles
- Restaurants locaux
- Activités de plein air
- Sites touristiques

Étape 7: Section Contact (30-45 min)

Tâches:

- Créer page contact dédiée
- Ajouter texte: "Qui contacter"
- Ajouter texte: "Ce 'Qui' vous enverra un contrat et les renseignements nécessaires pour passer un agréable séjour"
- Ajouter coordonnées (téléphone, email, adresse)
- Créer formulaire de demande d'information
- Traduire en FR/EN

Étape 8: Intégration Multilingue (1 heure)

Tâches:

- Créer système de traduction simple (i18n)
- Utiliser Astro Intellisense pour les traductions
- Créer bouton bilingue FR/EN en header
- Tester chaque page dans les deux langues
- Vérifier la cohérence du ton

Approche:

<!-- Exemple de structure pour chaque page -->
--i18n:
{
  fr: {
    title: "Titre FR",
    subtitle: "Sous-titre FR"
  },
  en: {
    title: "Title EN",
    subtitle: "Subtitle EN"
  }
}
--

Étape 9: Améliorations Techniques (1-2 heures)

- Optimisation SEO (meta tags, titres, descriptions)
- Optimisation images (WebP, lazy loading)
- Responsive design (mobile first)
- Accessibilité (ARIA labels, contrastes)
- Performance (score Lighthouse)

Étape 10: Tests et Validation (30 min)

- Tester toutes les pages en FR et EN
- Vérifier l'affichage sur mobile/tablette
- Tester formulaire contact
- Vérifier liens et navigation
- Vérifier traduction cohérente
- Tester images et chargement

Étape 11: Livraison et Déploiement (30 min)

- Faire une sauvegarde complète du projet Astro
- Déployer sur l'hébergement actuel
- Vérifier le live
- Mettre à jour le DNS si nécessaire
- Annoncer la nouvelle version

---
📋 Checklist Complète

- Structure de projet créée
- Pages gîtes terminées (Le Logis + La Garenne)
- Page d'accueil terminée avec vue drone
- Page contact terminée
- Traductions FR/EN intégrées
- Section activités terminée
- Images optimisées et chargées
- Responsive design vérifié
- SEO optimisé
- Tests de navigation complétés
- Documentation mise à jour

---
💡 Notes et Recommandations

Design Inspiration

- Airbnb structure: cartes, photos, avis, disponibilité
- Abritel: filtres, localisation, services
- Couleurs: tons naturels (vert vignoble, bois, pierre)

Contenu Spécifique à Ajouter

1. Photos:
  - Le Logis: 6 photos (piscine, chambres, salon, cuisine, extérieurs)
  - La Garenne: 6 photos (SPA, chambres, salon, cuisine, extérieurs)
2. Textes à adapter:
  - "Qui contacter: Ce 'Qui' vous enverra un contrat..."
  - "Ce que l'on peut faire aux environs"
  - Descriptions des gîtes
  - Informations pratiques
3. Multilingue:
  - Utiliser Astro i18n ou simple switch de langue
  - Garder le ton chaleureux et authentique en FR
  - Traduction naturelle en EN (pas traduction mot à mot)

Technologies

- Framework: Astro (maintenant utilisé)
- Images: WebP + fallback JPG
- Icons: Font Awesome ou SVG inline
- Formulaires: Astro email + validation

Calendrier Estimé

- Total: ~10-15 heures de travail
- Jour 1: Structure + pages gîtes (6h)
- Jour 2: Accueil + contact + activités (4h)
- Jour 3: Traductions + tests + finalisation (2h)

---
📝 Exemple de Code Structurel

---
// Layout page gite.astro
interface Props {
  title: string
  subtitle: string
  photos: Photo[]
  amenities: string[]
  contact: ContactInfo
}

const props = Astro.props
---

<div class="gite-page">
  <!-- Hero Section -->
  <header class="gite-hero">
    <h1>{props.title}</h1>
    <p>{props.subtitle}</p>
  </header>

  <!-- Galerie Photos -->
  <section class="gite-photos">
    {props.photos.map(photo => (
      <img src={photo} alt={photo} />
    ))}
  </section>

  <!-- Infos pratiques -->
  <section class="gite-info">
    <ul>
      {props.amenities.map(amenity => (
        <li>{amenity}</li>
      ))}
    </ul>
  </section>

  <!-- Contact -->
  <section class="gite-contact">
    <h2>Qui contacter</h2>
    <p>{props.contact.text}</p>
    <div class="contact-details">
      {props.contact.phone}
      {props.contact.email}
    </div>
  </section>
</div>

---
🔗 Liens Utiles

- https://docs.astro.build/
- https://www.airbnb.com/design
- https://developers.google.com/search/docs

---
✨ Prochaines Étapes
                                                                                                                                                                                                                                                                                                                 ─
1. Suivre chaque étape en ordre
2. Créer les fichiers un par un
3. Tester en cours de route
4. Livrer version FR puis version EN
5. Obtenir feedback et ajuster

---
Plan terminé.

---

## 📌 Résumé

Ce plan détaillé permet de restructurer complètement le site des gîtes avec:

- ✅ Vue aérienne drone sur la page d'accueil                                                                                                                                                                                                                                                                     ─
- ✅ Deux pages dédiées (Le Logis de Feydoux + La Garenne)
- ✅ Structure inspirée Airbnb/Abritel
- ✅ Multilingue (FR/EN)
- ✅ Section activités locales
- ✅ Informations contact complètes
- ✅ Optimisation technique et UX

Le fichier markdown contient toutes les étapes, tâches et codes exemples nécessaires à la refonte complète du site.

Ce plan complet et détaillé peut être copié-collé directement dans un fichier `plan-refonte-site.md`. Il couvre tous vos besoins: structure du site, contenu spécifique pour chaque gîte, section contacts, traductions, et inspirations design Airbnb/Abritel.

Voulez-vous que je vous montre aussi comment mettre cela en place pas à pas avec Astro? 😊

---

### ⚠️ Note sur les photos
Pour les 6 photos spécifiques de chaque gîte (Le Logis et La Garenne), vous devrez:

1. **Cueillir les photos** dans un dossier `/src/content/gites/le-logis-de-feydoux/photos` pour Le Logis
2. **Cueillir les photos** dans un dossier `/src/content/gites/la-garenne/photos` pour La Garenne
3. **Nommer les fichiers** clairement (ex: `piscine.jpg`, `chambre1.jpg`, etc.)
4. **Générer les WebP** version pour l'optimisation

Les noms des fichiers exacts dépendent de votre système de fichier actuel.
```
