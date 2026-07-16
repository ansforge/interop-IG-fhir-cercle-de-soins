# SVG Interactif - Guide d'utilisation rapide

## Pour ajouter zoom/pan/fullscreen à un SVG

### Étape 1 : Inclure les styles (une fois en haut de la page)
```markdown
{% include svg-interactive-styles.html %}
```

### Étape 2 : Wrapper le SVG avec les contrôles
```markdown
<div class="figure svg-wrap" style="width:100%; overflow-x:auto;">
  <div class="btn-group-vertical position-absolute top-0 end-0 p-2 svg-controls">
    <button class="btn btn-light btn-sm svg-zoom-in" title="Zoom avant">🔍+</button>
    <button class="btn btn-light btn-sm svg-zoom-out" title="Zoom arrière">🔍−</button>
    <button class="btn btn-light btn-sm svg-zoom-reset" title="Réinitialiser">↻</button>
    <button class="btn btn-light btn-sm svg-fullscreen" title="Plein écran">⛶</button>
  </div>
  <p style="margin: 0; padding: 0;">
    {% include VOTRE-SVG.svg %}
  </p>
</div>
```

### Étape 3 : Inclure le script (une fois en bas de la page)
```markdown
{% include svg-interactive-script.html %}
```

## Exemple complet

Voir `input/pagecontent/professionnel.md` pour un exemple d'implémentation.

## Notes

- ✅ Supporte plusieurs SVG sur la même page
- ✅ Zoom : boutons ou molette
- ✅ Pan : clic + glisser
- ✅ Fullscreen : bouton ⛶
- ✅ Mobile : pinch zoom et touch pan
- ✅ Les liens dans le SVG restent cliquables

## Fichiers créés

- `input/includes/svg-interactive-styles.html` : CSS réutilisable
- `input/includes/svg-interactive-script.html` : JavaScript réutilisable
- `input/includes/README-SVG-INTERACTIF.md` : Ce guide
- `input/includes/UTILISATION-SVG-INTERACTIF.md` : Documentation détaillée
