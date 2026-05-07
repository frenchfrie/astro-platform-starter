#!/usr/bin/env bash
# Migrate "Photos Feydoux 2026-05-07" into the three asset directories.
# Run from the repo root. After this, run: npm run watermark
set -euo pipefail

SRC='src/assets/Photos Feydoux 2026-05-07'
GA='src/assets/gites/la-garenne'
LO='src/assets/gites/le-logis-de-feydoux'
FX='src/assets/feydoux'

# ── Delete old assets ────────────────────────────────────────────────────────
rm -f "$GA"/*.jpg "$GA"/*.png "$GA"/*.webp
rm -f "$LO"/*.jpg "$LO"/*.png "$LO"/*.webp
rm -f "$FX"/*.jpg "$FX"/*.png "$FX"/*.webp

# ── La Garenne ───────────────────────────────────────────────────────────────
# Chambres Céladon
mv "$SRC/Garenne chambre Céladon.jpg"                    "$GA/chambre-celadon.jpg"
mv "$SRC/Garenne chambre Céladon (2).jpg"                "$GA/chambre-celadon-2.jpg"
mv "$SRC/Garenne chambre Céladon (3).jpg"                "$GA/chambre-celadon-3.jpg"
mv "$SRC/Garenne chambre Céladon (5).jpg"                "$GA/chambre-celadon-5.jpg"
mv "$SRC/Garenne chambre Céladon (6).jpg"                "$GA/chambre-celadon-6.jpg"
mv "$SRC/Garenne chambre Céladon (7).jpg"                "$GA/chambre-celadon-7.jpg"
mv "$SRC/Garenne chambre Celadon double vasque.jpg"      "$GA/chambre-celadon-double-vasque.jpg"
mv "$SRC/Garenne chambre Céladon douche en coin.jpg"     "$GA/chambre-celadon-douche-en-coin.jpg"
mv "$SRC/Garenne chambre Celadon Sdd douche bis.jpg"     "$GA/chambre-celadon-sdd-douche.jpg"

# Chambre Eucalyptus
mv "$SRC/Garenne chambre Eucaluptus.jpg"                 "$GA/chambre-eucalyptus.jpg"
mv "$SRC/Garenne chambre Eucalyptus (2).jpg"             "$GA/chambre-eucalyptus-2.jpg"
mv "$SRC/Garenne chambre Eucalyptus 5.jpg"               "$GA/chambre-eucalyptus-5.jpg"
mv "$SRC/Garenne chambre Eucalyptus  6.jpg"              "$GA/chambre-eucalyptus-6.jpg"
mv "$SRC/Garenne chambre Eucalyptus 7 (2).jpg"           "$GA/chambre-eucalyptus-7.jpg"
mv "$SRC/Garenne chambre Eucalyptus glace.jpg"           "$GA/chambre-eucalyptus-glace.jpg"
mv "$SRC/Garenne chambre Eucalyptus niche.jpg"           "$GA/chambre-eucalyptus-niche.jpg"
mv "$SRC/Garenne chambre Eucalyptus sdd (2).jpg"         "$GA/chambre-eucalyptus-sdd.jpg"
mv "$SRC/Garenne chambre eucalyptus sdd (3).jpg"         "$GA/chambre-eucalyptus-sdd-2.jpg"

# Cuisine
mv "$SRC/Garenne cuisine.jpg"                            "$GA/cuisine.jpg"
mv "$SRC/Garenne cuisine 0.jpg"                          "$GA/cuisine-2.jpg"
mv "$SRC/Garenne cuisine (2).jpg"                        "$GA/cuisine-3.jpg"
mv "$SRC/Garenne cuisine (3).jpg"                        "$GA/cuisine-4.jpg"
mv "$SRC/Garenne four.jpg"                               "$GA/cuisine-four.jpg"
mv "$SRC/Garenne LV.jpg"                                 "$GA/cuisine-lave-vaisselle.jpg"
mv "$SRC/Garenne plaques induction.jpg"                  "$GA/cuisine-plaques-induction.jpg"

# Séjour & salon
mv "$SRC/Garenne salon.jpg"                              "$GA/salon.jpg"
mv "$SRC/Garenne salon 3.jpg"                            "$GA/salon-2.jpg"
mv "$SRC/Garenne salle à manger.jpg"                     "$GA/salle-a-manger.jpg"
mv "$SRC/Garenne séjour 3.jpg"                           "$GA/sejour.jpg"
mv "$SRC/Garenne séjour coin frigo.jpg"                  "$GA/sejour-coin-frigo.jpg"
mv "$SRC/Garenne séjour ensemble.jpg"                    "$GA/sejour-ensemble.jpg"
mv "$SRC/Garenne séjour salon.jpg"                       "$GA/sejour-salon.jpg"

# Extérieur & communs
mv "$SRC/Garenne SPA.jpg"                                "$GA/spa.jpg"
mv "$SRC/Garenne cour privée.jpg"                        "$GA/cour-privee.jpg"
mv "$SRC/Garenne cours privée sdj.jpg"                   "$GA/cour-privee-sejour.jpg"
mv "$SRC/Garenne vue sur cour.jpg"                       "$GA/vue-sur-cour.jpg"
mv "$SRC/Garenne chemin facilité PMR.jpg"                "$GA/chemin-facilite-pmr.jpg"
mv "$SRC/Garenne entrée 2.jpg"                           "$GA/entree.jpg"
mv "$SRC/Garenne volet intérieur chambre.jpg"            "$GA/volet-interieur-chambre.jpg"

# ── Le Logis de Feydoux ──────────────────────────────────────────────────────
# Extérieur & piscine
mv "$SRC/Le Logis accés et piscine.jpg"                  "$LO/exterieur-acces-piscine.jpg"
mv "$SRC/Le Logis piscine.jpg"                           "$LO/exterieur-piscine.jpg"
mv "$SRC/Le Logis piscine 3.jpg"                         "$LO/exterieur-piscine-2.jpg"
mv "$SRC/Logis terrasse 1.jpg"                           "$LO/exterieur-terrasse.jpg"
mv "$SRC/Logis terrasse table.jpg"                       "$LO/exterieur-terrasse-table.jpg"
mv "$SRC/Logis cour ouest.jpg"                           "$LO/exterieur-cour-ouest.jpg"
mv "$SRC/Logis cours Est.jpg"                            "$LO/exterieur-cour-est.jpg"

# Séjour
mv "$SRC/Logis salon.jpg"                                "$LO/sejour.jpg"
mv "$SRC/Logis salon (2).jpg"                            "$LO/sejour-2.jpg"
mv "$SRC/Logis séjour 3.jpg"                             "$LO/sejour-3.jpg"
mv "$SRC/Logis sam table.jpg"                            "$LO/sejour-table-salle-a-manger.jpg"
mv "$SRC/Logis sam.jpg"                                  "$LO/sejour-salle-a-manger.jpg"

# Cuisine
mv "$SRC/Logis cuisine.jpg"                              "$LO/cuisine.jpg"
mv "$SRC/Logis cuisine (2).jpg"                          "$LO/cuisine-2.jpg"
mv "$SRC/Le Logis cafetière.jpg"                         "$LO/cuisine-cafetiere.jpg"
mv "$SRC/Le Logis LV.jpg"                                "$LO/cuisine-lave-vaisselle.jpg"
mv "$SRC/Logis robot et bouilloire.jpg"                  "$LO/cuisine-robot-bouilloire.jpg"
mv "$SRC/Logis réfrigétrarteur congélateur.jpg"          "$LO/cuisine-refrigerateur-congelateur.jpg"

# Entrée & salle de jeux
mv "$SRC/Logis entrée salle de jeux.jpg"                 "$LO/entree-salle-de-jeux.jpg"
mv "$SRC/Logis salle de jeux.jpg"                        "$LO/salle-de-jeux.jpg"
mv "$SRC/Logis salle de jeux évier.jpg"                  "$LO/salle-de-jeux-evier.jpg"

# Escalier
mv "$SRC/Logis escalier  3.jpg"                          "$LO/escalier.jpg"
mv "$SRC/Logis escalier 4.jpg"                           "$LO/escalier-2.jpg"

# Couloir & bibliothèque étage
mv "$SRC/Logis couloir étage.jpg"                        "$LO/etage-couloir.jpg"
mv "$SRC/Logis  rayonnages livres étage.jpg"             "$LO/etage-rayonnages-livres.jpg"

# Chambre à la Colonne (RDC)
mv "$SRC/Logis chambre colonne.jpg"                      "$LO/chambre-a-la-colonne.jpg"
mv "$SRC/Logis chambre colonne 2.jpg"                    "$LO/chambre-a-la-colonne-2.jpg"
mv "$SRC/Logis chambre colonne 3.jpg"                    "$LO/chambre-a-la-colonne-3.jpg"
mv "$SRC/Logis chambre à la colonne 4.jpg"               "$LO/chambre-a-la-colonne-4.jpg"
mv "$SRC/Logis chambre à la colonne placard penderie.jpg" "$LO/chambre-a-la-colonne-penderie.jpg"
mv "$SRC/Logis chambre à la colonne sdd douche.jpg"      "$LO/chambre-a-la-colonne-sdd-douche.jpg"
mv "$SRC/Logis chambre à la colonne sss volet.jpg"       "$LO/chambre-a-la-colonne-volet.jpg"
mv "$SRC/Logis chambre colonne sdd.jpg"                  "$LO/chambre-a-la-colonne-sdd.jpg"
mv "$SRC/Logis chambre colonne sdd (2).jpg"              "$LO/chambre-a-la-colonne-sdd-2.jpg"
mv "$SRC/Logis chambre colonne sdd 2.jpg"                "$LO/chambre-a-la-colonne-sdd-3.jpg"

# Chambre à la Marche (RDC)
mv "$SRC/Logis chambre à la marche.jpg"                  "$LO/chambre-a-la-marche.jpg"
mv "$SRC/Logis chambre à la marche 3.jpg"                "$LO/chambre-a-la-marche-3.jpg"
mv "$SRC/Logis chambre à la marche 4.jpg"                "$LO/chambre-a-la-marche-4.jpg"
mv "$SRC/Logis chambre à la marche 3 (2).jpg"            "$LO/chambre-a-la-marche-3b.jpg"
mv "$SRC/Logis sdd rdc.jpg"                              "$LO/rdc-sdd.jpg"

# Chambre Jaune (étage)
mv "$SRC/Logis chambre jaune.jpg"                        "$LO/etage-chambre-jaune.jpg"
mv "$SRC/Logis chambre  jaune 2.jpg"                     "$LO/etage-chambre-jaune-2.jpg"
mv "$SRC/Logis chambre jaune étage 2.jpg"                "$LO/etage-chambre-jaune-3.jpg"
mv "$SRC/Logis chambre jaune penderie.jpg"               "$LO/etage-chambre-jaune-penderie.jpg"

# Chambre Terracotta (étage)
mv "$SRC/Logis chambre étage terracota.jpg"              "$LO/etage-chambre-terracotta.jpg"
mv "$SRC/Logis  chambre terracota 1.jpg"                 "$LO/etage-chambre-terracotta-1.jpg"
mv "$SRC/Logis chambre terracota 2.jpg"                  "$LO/etage-chambre-terracotta-2.jpg"
mv "$SRC/Logis chambre terracota 4.jpg"                  "$LO/etage-chambre-terracotta-4.jpg"
mv "$SRC/Logis chambre terracota 5.jpg"                  "$LO/etage-chambre-terracotta-5.jpg"
mv "$SRC/Logis chambre terracota 6.jpg"                  "$LO/etage-chambre-terracotta-6.jpg"
mv "$SRC/Logis chambre terracota 7.jpg"                  "$LO/etage-chambre-terracotta-7.jpg"
mv "$SRC/Logis chambre terracota 8.jpg"                  "$LO/etage-chambre-terracotta-8.jpg"

# Salles d'eau étage
mv "$SRC/Logis sdd étage..jpg"                           "$LO/etage-sdd.jpg"
mv "$SRC/Logis sdd étage.jpg"                            "$LO/etage-sdd-2.jpg"
mv "$SRC/Logis sdd étagze douche.jpg"                    "$LO/etage-sdd-douche.jpg"
mv "$SRC/Logis sdd étgae vasques.jpg"                    "$LO/etage-sdd-vasques.jpg"
mv "$SRC/Logis sdd étage sèche serviette.jpg"            "$LO/etage-sdd-seche-serviette.jpg"

# ── Feydoux — domaine commun ─────────────────────────────────────────────────
mv "$SRC/Allée des gardes.jpg"                           "$FX/allee-des-gardes.jpg"
mv "$SRC/Allée foresrtière Rivarie.jpg"                  "$FX/allee-forestiere-rivarie.jpg"
mv "$SRC/Arbre en fleur Fedyoux.jpg"                     "$FX/arbre-en-fleur.jpg"
mv "$SRC/Chemin de Feydoux et des gîtes 2.jpg"           "$FX/chemin-feydoux-gites.jpg"
mv "$SRC/noyerai chevaux.jpg"                            "$FX/noyer-chevaux.jpg"
mv "$SRC/Panneau gites 2.jpg"                            "$FX/panneau-gites.jpg"
mv "$SRC/Panneau gites 3.jpg"                            "$FX/panneau-gites-2.jpg"
mv "$SRC/Terrain de pétanque (2).jpg"                    "$FX/terrain-petanque.jpg"
mv "$SRC/ferrures 1.jpg"                                 "$FX/ferrures.jpg"
mv "$SRC/Gites verrou.jpg"                               "$FX/verrou.jpg"

echo "Migration done. Run: npm run watermark"