# Tasks — UX Feedbacks

Source: `doc/ux_feedbacks.md`

Each task below is sized for a single small commit. Format:

- **Source** : ligne du feedback d'origine
- **Fichiers** : où intervenir
- **Faire** : ce qu'il faut faire concrètement
- **Fait quand** : critère d'acceptation

---

## ✅ Déjà fait — Navigation

- [x] **nav-1** — Uniformiser la couleur des liens nav : blanc partout
- [x] **nav-2** — Corriger le décalage du bouton "Réserver" dans la nav
- [x] **nav-3** — Unifier les deux composants `BookingWidget` (`.astro` et `.tsx`)
- [x] **nav-4** — Corriger le scroll vers `#booking-widget` du bouton "Réserver" nav
- [x] **nav-5** — Dropdown nav "Réserver" : redirection directe vers Abritel
- [x] **nav-6** — Responsive nav : affichage mobile

---

## Quick wins (commits indépendants, faibles risques)

### [x] qw-1 — Soulignement des liens au hover

- **Source** : `ux_feedbacks.md:21`
- **Fichiers** : `src/styles/global.css` (utilitaire `.link` + règles globales `a:hover`)
- **Faire** : appliquer un `text-decoration: underline` au hover sur tous les liens textuels (hors boutons et nav). Vérifier la cohérence avec `:focus-visible`.
- **Fait quand** : tous les liens inline montrent un soulignement au hover, sans régression sur `.btn-*` ni sur la nav.

### qw-2 — Bouton "Retour en haut"

- **Source** : `ux_feedbacks.md:23`
- **Fichiers** : `src/layouts/BaseLayout.astro` (composant inline ou nouveau `src/components/BackToTop.astro`)
- **Faire** : bouton fixe bas-droite, visible après ~600px de scroll, scroll smooth vers `#top`. Utiliser tokens (`--radius-md`, `--shadow-card`, `--warm`).
- **Fait quand** : présent sur toutes les pages, accessible clavier (`aria-label`), masqué en haut de page.

### qw-3 — Désactiver enregistrement des images

- **Source** : `ux_feedbacks.md:41`
- **Fichiers** : `src/components/HeroGallery.astro` (et toute autre `<Image>` dans des galeries)
- **Faire** : ajouter `oncontextmenu="return false"` + `draggable="false"` + CSS `user-select: none; -webkit-user-drag: none;` sur les images de galerie/lightbox.
- **Fait quand** : clic droit → "Enregistrer l'image" indisponible sur les photos de gîte. Note : protection cosmétique, non sécuritaire.

### qw-4 — Supprimer la caption de la lightbox

- **Source** : `ux_feedbacks.md:39`
- **Fichiers** : `src/components/HeroGallery.astro`
- **Faire** : retirer l'élément qui affiche le sous-titre/légende dans l'overlay lightbox (garder l'`alt` côté `<img>` pour l'accessibilité).
- **Fait quand** : la lightbox n'affiche plus de texte sous l'image.

### qw-5 — Style des entrées de blog déjà lues

- **Source** : `ux_feedbacks.md:20`
- **Fichiers** : `src/pages/pour-aller-plus-loin.astro` (ou `_blog/` si réactivé)
- **Faire** : appliquer `a:visited` sur les cartes d'articles : opacité réduite (~0.6) et/ou couleur secondaire. Pas de changement de layout.
- **Fait quand** : un article visité est visuellement distinct dans la liste.

### qw-6 — Limites entre photos en blanc (pas en noir)

- **Source** : `ux_feedbacks.md:15`
- **Fichiers** : `src/components/HeroGallery.astro` (gap/border)
- **Faire** : remplacer toute bordure/gap noir entre images par `var(--cream)` ou `white`. Vérifier aussi grilles d'images dans `index.astro` et `gites/[slug].astro`.
- **Fait quand** : aucune ligne noire visible entre les photos des galeries.

### qw-7 — Accessibilité du copyright (footer)

- **Source** : `ux_feedbacks.md:31`
- **Fichiers** : `src/components/Footer.astro`
- **Faire** : vérifier le contraste du texte copyright (ratio ≥ 4.5:1), passer dans une balise sémantique correcte (`<small>` ou `<p>`), s'assurer qu'il n'est pas masqué visuellement.
- **Fait quand** : le copyright est lisible et passe un check de contraste (Lighthouse ou outil équivalent).

---

## Vocabulaire & rédactionnel

### copy-1 — Unifier le vocabulaire "À proximité" / "La région"

- **Source** : `ux_feedbacks.md:32`
- **Fichiers** : grep dans `src/pages/`, `src/components/`, `src/content/`
- **Faire** : choisir **"À proximité"** (terme déjà dominant) et remplacer toutes les occurrences de "la région" / "notre région" / "région" utilisées comme libellé navigationnel. Conserver "région" dans la prose descriptive si naturel.
- **Fait quand** : les libellés de section, titres, et liens utilisent uniquement "À proximité".

### copy-2 — Reformuler "Plongez dans la piscine"

- **Source** : `ux_feedbacks.md:37`
- **Fichiers** : `src/pages/index.astro` ou contenu gîte concerné
- **Faire** : remplacer la phrase familière par une version plus posée. Suggestion : "Une piscine privative pour profiter pleinement de l'été en Périgord." À adapter selon l'angle texte/promesse (cf. copy-4).
- **Fait quand** : plus de tournure familière à l'impératif sur le bloc piscine.

### copy-3 — Raccourcir les titres trop longs

- **Source** : `ux_feedbacks.md:33`
- **Fichiers** : `src/pages/region.astro`, `src/pages/index.astro`, autres pages avec H2/H3
- **Faire** : identifier les titres > ~50 caractères et les raccourcir. Exemple cité : "Une région qui ne demande qu'à être explorée" → "Une région à explorer" ou similaire.
- **Fait quand** : aucun titre principal n'excède une ligne sur desktop large.

### copy-4 — Règle texte = promesse / image = réalité

- **Source** : `ux_feedbacks.md:34-35`
- **Fichiers** : `src/pages/index.astro`, `src/pages/gites/[slug].astro`
- **Faire** : auditer les blocs texte+image. Le texte doit vendre une expérience (promesse), l'image doit montrer le lieu (réalité). Reformuler les blocs où le texte décrit ce que l'image montre déjà.
- **Fait quand** : pas de redondance descriptive entre légende et image dans les sections principales.

---

## Fil d'Ariane (Breadcrumb)

### bc-1 — Créer un composant Breadcrumb

- **Source** : `ux_feedbacks.md:18,43`
- **Fichiers** : nouveau `src/components/Breadcrumb.astro`
- **Faire** : composant qui prend une prop `items: { label: string, href?: string }[]`. Markup `<nav aria-label="Fil d'Ariane">` + `<ol>` avec séparateur "/". Styles tokens uniquement.
- **Fait quand** : composant utilisable, accessible (aria-current="page" sur le dernier).

### bc-2 — Appliquer le breadcrumb aux pages secondaires

- **Source** : `ux_feedbacks.md:18`
- **Fichiers** : `src/pages/gites/[slug].astro`, `src/pages/pour-aller-plus-loin.astro` (et articles), `src/pages/region.astro`, `src/pages/contact.astro`, `src/pages/a-propos.astro`
- **Dépend de** : bc-1
- **Faire** : ajouter `<Breadcrumb>` en haut de chaque page secondaire avec les niveaux corrects (Accueil > Section > Page).
- **Fait quand** : toutes les pages hors `/` portent un fil d'Ariane.

### bc-3 — Breadcrumb sur mentions légales

- **Source** : `ux_feedbacks.md:43`
- **Fichiers** : `src/pages/mentions-legales.astro`
- **Dépend de** : bc-1
- **Faire** : ajouter `<Breadcrumb items={[{label:"Accueil",href:"/"},{label:"Mentions légales"}]} />`.
- **Fait quand** : on sait où on est en arrivant directement sur la page.

### bc-4 — Lien "Retour" en haut des articles de blog

- **Source** : `ux_feedbacks.md:19`
- **Fichiers** : page article (probablement à recréer dans `pour-aller-plus-loin/[slug].astro` ou réactivation `_blog/`)
- **Faire** : lien "← Retour" pointant vers l'index, au-dessus du titre. Peut être absorbé par bc-2 si breadcrumb suffit.
- **Fait quand** : navigation vers l'index possible sans utiliser le bouton retour du navigateur.

---

## Composants UI (consolidation)

### ui-1 — Réduire les variantes de boutons

- **Source** : `ux_feedbacks.md:30`
- **Fichiers** : `src/styles/global.css`, audit dans `src/components/` et `src/pages/`
- **Faire** : recenser les classes `btn-*` utilisées, ne conserver que `btn-primary` et `btn-ghost`. Migrer les usages restants (`btn-card`, `nav-cta`, etc.) vers ces deux classes ou les supprimer.
- **Fait quand** : `grep -r "class=.*btn-" src/` ne montre que `btn-primary` ou `btn-ghost`.

### ui-2 — Réduire les variantes typographiques

- **Source** : `ux_feedbacks.md:16`
- **Fichiers** : `src/styles/global.css`, scoped styles
- **Faire** : auditer les `font-weight`, `font-style`, `font-family` utilisés. Définir un set restreint (ex. : 400 / 600 uniquement, italique réservé aux citations) et migrer.
- **Fait quand** : pas plus de 3 combinaisons (poids × style) en usage sur le site.

### ui-3 — Limites blanc/noir et palette

- **Source** : `ux_feedbacks.md:15`
- **Fichiers** : `src/styles/global.css`, scoped styles
- **Faire** : remplacer les `#000` / `#fff` durs par des tokens chauds (`--dark`, `--cream`, `--stone`). Cibler bordures, séparateurs, fonds de section.
- **Fait quand** : recherche `#000`, `#fff`, `black`, `white` ne ressort que sur des cas justifiés (ombres rgba, etc.).

---

## Galerie / Images

### img-1 — Responsive photos

- **Source** : `ux_feedbacks.md:13`
- **Fichiers** : `src/components/HeroGallery.astro`, grilles dans `index.astro`, `gites/[slug].astro`
- **Faire** : tester sur viewport ≤ 480px. Ajuster grilles (passer en 1 colonne ou 2 selon contexte), tailles d'images, lightbox tactile.
- **Fait quand** : aucun débordement horizontal, photos lisibles sur mobile.

### img-2 — Watermark sur les images

- **Source** : `ux_feedbacks.md:42`
- **Fichiers** : `sanitize-assets.sh` (étendre) ou nouveau script `watermark-assets.sh` ; ou option Astro `<Image>` + overlay CSS
- **Faire** : choisir l'approche (preférer pré-traitement build-time via ImageMagick pour ne pas dégrader les perfs front). Watermark discret coin bas-droite : "feydoux.fr" ou logo, opacité ~30%.
- **Fait quand** : nouvelles images générées portent le watermark ; documentation à jour dans CLAUDE.md.

### img-3 — Explorer la visite 3D (recherche, pas un commit code)

- **Source** : `ux_feedbacks.md:25`
- **Faire** : produire une note dans `doc/` comparant Matterport / Kuula / iGUIDE (coût, intégration iframe, hébergement).
- **Fait quand** : décision documentée. À ne pas implémenter sans validation.

---

## Carte / Localisation

### map-1 — Ouvrir l'adresse dans une carte (mentions légales / contact)

- **Source** : `ux_feedbacks.md:44`
- **Fichiers** : `src/pages/mentions-legales.astro`, `src/pages/contact.astro`
- **Faire** : transformer l'adresse en lien `https://www.openstreetmap.org/?mlat=...&mlon=...` (ou `https://maps.app.goo.gl/...`) ouvrant dans un nouvel onglet.
- **Fait quand** : clic sur l'adresse → carte externe centrée sur Lempzours.

### map-2 — Carte sur la page "À proximité"

- **Source** : `ux_feedbacks.md:27`
- **Fichiers** : `src/pages/region.astro`, nouveau `src/components/RegionMap.astro`
- **Faire** : intégrer une carte (iframe OSM ou Leaflet via React island) avec les marqueurs de la liste de lieux (cf. content-1).
- **Fait quand** : carte interactive visible sur la page, marqueurs cliquables.

### map-3 — Carte sur la page d'accueil

- **Source** : `ux_feedbacks.md:28`
- **Dépend de** : map-2 (réutiliser le composant)
- **Fichiers** : `src/pages/index.astro`
- **Faire** : ajouter une section "Où sommes-nous" avec une carte simple centrée sur le domaine.
- **Fait quand** : carte présente sur l'accueil, sans dégrader le LCP (lazy-load iframe).

---

## Contenu — densification & fusion

### content-1 — Densifier "À proximité" avec lieux concrets

- **Source** : `ux_feedbacks.md:11`
- **Fichiers** : `src/pages/region.astro` (et/ou `src/content/` si modélisation en collection)
- **Faire** : intégrer la liste ci-dessous avec, pour chaque lieu : nom, distance, 1 phrase descriptive, type (village / monument / nature / marché), lien externe officiel si pertinent.

  Lieux à inclure :
  - Lempzours (le village du domaine)
  - Saint-Jean-de-Côle (6 km) — un des plus beaux villages de France
  - Brantôme (15 km) — "Venise du Périgord"
  - Bourdeilles (22 km) — château et village médiéval
  - Grottes de Villars (10 km)
  - Abbaye de Boschaud (12 km)
  - Château de Puyguilhem (11 km)
  - Sorges (9 km) — capitale de la truffe
  - Château des Bories (22 km)
  - Marché de Thiviers (15 km)

- **Fait quand** : section enrichie, infos pratiques visibles, prête pour map-2.

### content-2 — Section "Avis / Recommandations"

- **Source** : `ux_feedbacks.md:8`
- **Fichiers** : `src/pages/index.astro` (et/ou `gites/[slug].astro`), nouveau `src/components/Reviews.astro`
- **Faire** : composant avec 3-5 témoignages (citation + prénom + période). Données en dur dans une collection `src/content/reviews/` ou JSON. Style sobre, pas d'étoiles tape-à-l'œil.
- **Fait quand** : section visible sur l'accueil au-dessus du booking widget.

### content-3 — Fusionner "À proximité" et "Pour aller plus loin"

- **Source** : `ux_feedbacks.md:10`
- **État actuel** : `_blog` est désactivé (préfixe `_`), `pour-aller-plus-loin.astro` et `region.astro` coexistent.
- **Fichiers** : `src/pages/region.astro`, `src/pages/pour-aller-plus-loin.astro`, redirections Netlify si besoin
- **Faire** : décider de la structure cible. Option recommandée : une page `/region` avec deux sous-sections (lieux à proximité + articles longs), `pour-aller-plus-loin` redirige vers `/region#articles`. Garder les articles markdown comme contenu enrichi.
- **Dépend de** : content-1 (lieux densifiés d'abord)
- **Fait quand** : un seul point d'entrée navigationnel, redirections en place, pas de lien mort.

---

## Ordre suggéré pour Sonnet

Commits indépendants, du plus simple au plus structurant :

1. `qw-1` → `qw-7` (7 commits, aucun couplage)
2. `copy-1` → `copy-4` (4 commits, contenu)
3. `ui-3` (palette) puis `ui-1`, `ui-2` (consolidation)
4. `bc-1` → `bc-2` → `bc-3` → `bc-4` (chaîne breadcrumb)
5. `img-1`, `img-2` (img-3 = recherche, à part)
6. `map-1` → `content-1` → `map-2` → `map-3`
7. `content-2`, puis `content-3` en dernier (le plus invasif)
