#!/bin/bash
# Script de soumission IndexNow pour indexation instantanée
# Compatible : Bing, Yandex, Seznam.cz, Naver

# Configuration
INDEXNOW_KEY="a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6"
HOST="analyse-juridique.fr"
KEY_LOCATION="https://${HOST}/${INDEXNOW_KEY}.txt"

# URLs à soumettre
URLS=(
    "https://costockage-avis.github.io/arret-airbnb-costockage-responsabilite-plateformes"
    "https://costockage-avis.github.io/"
    "https://costockage-avis.github.io/droit-numerique"
    "https://costockage-avis.github.io/clauses-abusives"
)

echo "=== Soumission IndexNow ==="
echo "Host: $HOST"
echo "Key: $INDEXNOW_KEY"
echo ""

# Soumettre à Bing
echo "Soumission à Bing..."
curl -X POST "https://www.bing.com/indexnow" \
    -H "Content-Type: application/json; charset=utf-8" \
    -d "{
        \"host\": \"${HOST}\",
        \"key\": \"${INDEXNOW_KEY}\",
        \"keyLocation\": \"${KEY_LOCATION}\",
        \"urlList\": [
            \"${URLS[0]}\",
            \"${URLS[1]}\",
            \"${URLS[2]}\",
            \"${URLS[3]}\"
        ]
    }"

echo ""
echo ""

# Soumettre à Yandex
echo "Soumission à Yandex..."
curl -X POST "https://yandex.com/indexnow" \
    -H "Content-Type: application/json; charset=utf-8" \
    -d "{
        \"host\": \"${HOST}\",
        \"key\": \"${INDEXNOW_KEY}\",
        \"keyLocation\": \"${KEY_LOCATION}\",
        \"urlList\": [
            \"${URLS[0]}\",
            \"${URLS[1]}\",
            \"${URLS[2]}\",
            \"${URLS[3]}\"
        ]
    }"

echo ""
echo ""
echo "=== Soumission terminée ==="
echo "Vérifiez les réponses HTTP (200 = OK, 202 = Accepté)"
