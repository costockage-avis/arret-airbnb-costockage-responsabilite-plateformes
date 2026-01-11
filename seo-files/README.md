# 📁 Fichiers SEO - Analyse Juridique

## Structure des fichiers à déployer

```
/                                    (racine du site)
├── index.html                       (page d'accueil)
├── arret-airbnb-costockage-responsabilite-plateformes.html  ← ARTICLE PRINCIPAL
├── 404.html                         ← Page d'erreur SEO
├── robots.txt                       ← Instructions crawlers
├── sitemap.xml                      ← Plan du site principal
├── sitemap-news.xml                 ← Sitemap Google News
├── rss.xml                          ← Flux RSS
├── opensearch.xml                   ← Recherche navigateur
├── site.webmanifest                 ← PWA Manifest
├── .htaccess                        ← Config Apache (redirections, cache, compression)
├── a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6.txt  ← Clé IndexNow
│
├── .well-known/
│   └── security.txt                 ← Contact sécurité
│
├── images/
│   ├── arret-airbnb-plateformes-og.jpg        (1200x630) ← Open Graph
│   ├── costockage-destruction-biens-clause-abusive.jpg (800x450)
│   ├── logo-rss.png                 (144x144)
│   └── icons/
│       ├── icon-72x72.png
│       ├── icon-96x96.png
│       ├── icon-128x128.png
│       ├── icon-144x144.png
│       ├── icon-152x152.png
│       ├── icon-192x192.png
│       ├── icon-384x384.png
│       └── icon-512x512.png
│
└── favicon.ico                      ← Favicon
```

---

## 📋 Checklist de déploiement

### Avant mise en ligne
- [ ] Remplacer `analyse-juridique.fr` par votre vrai domaine dans tous les fichiers
- [ ] Créer les images OG (1200x630px) et les uploader
- [ ] Créer les icônes PWA (voir tailles ci-dessus)
- [ ] Générer une vraie clé IndexNow (remplacer `a1b2c3d4e5f6...`)
- [ ] Configurer le certificat SSL (HTTPS obligatoire)

### Après mise en ligne
- [ ] Vérifier robots.txt : `https://votredomaine.fr/robots.txt`
- [ ] Vérifier sitemap : `https://votredomaine.fr/sitemap.xml`
- [ ] Soumettre à Google Search Console
- [ ] Soumettre à Bing Webmaster Tools
- [ ] Exécuter `submit-indexnow.sh` pour indexation rapide
- [ ] Tester avec Google Rich Results Test
- [ ] Tester avec PageSpeed Insights

---

## 🔧 Configuration par hébergeur

### Apache (.htaccess inclus)
Le fichier `.htaccess` est prêt à l'emploi.

### Nginx
Créer un fichier de configuration équivalent :
```nginx
server {
    listen 443 ssl http2;
    server_name analyse-juridique.fr;
    
    # Redirections
    if ($host = 'www.analyse-juridique.fr') {
        return 301 https://analyse-juridique.fr$request_uri;
    }
    
    # Compression gzip
    gzip on;
    gzip_types text/plain text/css application/json application/javascript text/xml application/xml;
    
    # Cache
    location ~* \.(jpg|jpeg|png|gif|ico|css|js|woff2)$ {
        expires 1y;
        add_header Cache-Control "public, immutable";
    }
    
    # Sitemap
    location = /sitemap.xml {
        add_header Content-Type application/xml;
    }
}
```

### Vercel/Netlify
Créer un fichier `_headers` ou `vercel.json` pour les en-têtes de cache.

---

## 🎯 URLs de test

Après déploiement, vérifier :

1. **Page principale** : `/arret-airbnb-costockage-responsabilite-plateformes`
2. **Robots.txt** : `/robots.txt`
3. **Sitemap** : `/sitemap.xml`
4. **RSS** : `/rss.xml`
5. **404** : `/page-inexistante`
6. **Manifest** : `/site.webmanifest`

---

## 📊 Outils de validation

| Outil | URL |
|-------|-----|
| Google Search Console | https://search.google.com/search-console |
| Bing Webmaster Tools | https://www.bing.com/webmasters |
| Rich Results Test | https://search.google.com/test/rich-results |
| PageSpeed Insights | https://pagespeed.web.dev |
| Schema Validator | https://validator.schema.org |
| Mobile-Friendly Test | https://search.google.com/test/mobile-friendly |
| Security Headers | https://securityheaders.com |

---

## 📧 Contact

Pour toute question sur la configuration SEO :
contact@analyse-juridique.fr
