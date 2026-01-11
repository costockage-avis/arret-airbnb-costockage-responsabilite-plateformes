# Instructions pour soumettre le site à Google

## 1. Google Search Console

### Étape 1 : Accéder à Search Console
1. Aller sur https://search.google.com/search-console
2. Se connecter avec un compte Google

### Étape 2 : Ajouter la propriété
1. Cliquer sur "Ajouter une propriété"
2. Choisir "Préfixe de l'URL" 
3. Entrer : `https://analyse-juridique.fr`

### Étape 3 : Vérifier la propriété (plusieurs méthodes)

**Méthode 1 : Fichier HTML (recommandé)**
- Télécharger le fichier de vérification Google
- Le placer à la racine du site
- Exemple : `https://costockage-avis.github.io/google1234567890abcdef.html`

**Méthode 2 : Balise HTML**
Ajouter dans le <head> de toutes les pages :
```html
<meta name="google-site-verification" content="VOTRE_CODE_ICI">
```

**Méthode 3 : Enregistrement DNS TXT**
Ajouter un enregistrement TXT à votre DNS :
```
google-site-verification=VOTRE_CODE_ICI
```

### Étape 4 : Soumettre le sitemap
1. Dans Search Console, aller dans "Sitemaps"
2. Ajouter : `https://costockage-avis.github.io/sitemap.xml`
3. Cliquer sur "Envoyer"

### Étape 5 : Demander l'indexation de la page principale
1. Aller dans "Inspection de l'URL"
2. Entrer : `https://costockage-avis.github.io/arret-airbnb-costockage-responsabilite-plateformes`
3. Cliquer sur "Demander une indexation"

---

## 2. Bing Webmaster Tools

### Accès
https://www.bing.com/webmasters

### Soumettre le sitemap
URL du sitemap : `https://costockage-avis.github.io/sitemap.xml`

### IndexNow (indexation instantanée Bing/Yandex)
Voir le fichier `indexnow-key.txt` ci-joint

---

## 3. Google News (optionnel)

Pour apparaître dans Google News :
1. Aller sur https://publishercenter.google.com/
2. Ajouter la publication
3. Soumettre les sections d'actualités

Le sitemap inclut déjà les balises `<news:news>` pour l'article principal.

---

## 4. Actions post-indexation

### Surveiller dans Search Console :
- Couverture de l'index
- Core Web Vitals
- Expérience sur la page
- Liens

### Demander l'indexation des nouvelles pages
Utiliser l'API d'indexation Google pour les mises à jour urgentes :
https://developers.google.com/search/apis/indexing-api/v3/quickstart

---

## 5. Checklist de vérification

- [ ] robots.txt accessible : https://costockage-avis.github.io/robots.txt
- [ ] sitemap.xml accessible : https://costockage-avis.github.io/sitemap.xml
- [ ] Page 404 personnalisée fonctionnelle
- [ ] HTTPS actif sur tout le site
- [ ] Redirections www → non-www en place
- [ ] Fichier .htaccess configuré
- [ ] Manifest.json accessible
- [ ] Favicons en place
- [ ] Open Graph images uploadées
