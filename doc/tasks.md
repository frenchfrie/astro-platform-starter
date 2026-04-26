# Tasks — UX Feedbacks

Source: `doc/ux_feedbacks.md`

---

## Navigation

- [ ] Uniformiser la couleur des liens nav : blanc partout (actuellement variable selon la page)
- [ ] Corriger le décalage du bouton "Réserver" dans la nav (il pousse les liens gîtes)
- [ ] Unifier les deux composants BookingWidget (`.astro` et `.tsx`) en un seul
- [ ] Corriger le bouton "Réserver" nav : le scroll vers `#booking-widget` ne fonctionne pas
- [ ] Dropdown nav "Réserver" : rediriger directement sur Abritel (sans passer par la page gîte)
- [ ] Responsive nav : corriger l'affichage mobile (menu caché sans hamburger)

---

## Pages "À proximité" / Blog

- [ ] Fusionner les pages "À proximité" (`/region`) et "Pour aller plus loin" (`/blog`) en une seule section ou page
- [ ] Densifier le contenu de "À proximité" (plus d'infos pratiques, distances, horaires…)
- [ ] Retour au blog en haut de chaque article (breadcrumb ou lien retour)
- [ ] Changer le style visuel des entrées de blog déjà lues (état `:visited`)
- [ ] Unifier le vocabulaire : choisir entre "À proximité" et "La région" et l'appliquer partout

---

## Fil d'Ariane (Breadcrumb)

- [ ] Ajouter un fil d'Ariane sur toutes les pages secondaires (gîtes, blog, mentions légales…)
- [ ] Page mentions légales : ajouter un contexte de navigation (on ne sait pas où on est)

---

## Composants UI

- [ ] Réduire la diversité des styles de boutons (trop de variantes btn-primary / btn-ghost / btn-card / nav-cta…)
- [ ] Uniformiser les styles typographiques (limiter les combinaisons bold/regular/italic)
- [ ] Ajouter un bouton "Retour en haut" fixe en bas de page
- [ ] Changer le style des liens au hover : soulignement (actuellement incohérent)

---

## Galerie / Images

- [ ] Lightbox : supprimer le sous-titre des photos (caption inutile)
- [ ] Désactiver le clic droit "Enregistrer l'image" sur les photos
- [ ] Ajouter un watermark sur les images
- [ ] Responsive photos : corriger l'affichage sur mobile
- [ ] Explorer la piste visite 3D (Matterport ou équivalent) à la place ou en plus des photos

---

## Carte / Localisation

- [ ] Ajouter une carte (Google Maps ou OpenStreetMap embed) sur la page d'accueil
- [ ] Ajouter une carte dans la page "À proximité"
- [ ] Page mentions légales / contact : lien qui ouvre l'adresse dans une carte

---

## Contenu / Rédactionnel

- [ ] Section "Piscine / pool" : reformuler "Plongez dans la piscine…" — trop familier, adopter un ton plus formel
- [ ] Raccourcir les titres trop longs (ex. "Une région qui ne demande qu'à être explorée")
- [ ] Appliquer la règle texte/image : texte = la promesse, image = ce qu'il y a (revoir les associations)
- [ ] Ajouter une section "Avis / Recommandations" pour inciter à la réservation

---

## Accessibilité / Technique

- [ ] Footer : améliorer l'accessibilité du copyright (contraste, balisage)
- [ ] Limites entre les photos dans les galeries : passer en blanc (pas noir)
- [ ] Éviter les contrastes blanc/noir brutaux — rester dans la palette chaude du site