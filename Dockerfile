# 1. Utiliser une image de base officielle Python
FROM python:3.10-slim

# 2. Définir le dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier les fichiers de dépendances et les installer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copier tout le reste du code source du projet
COPY . .

# 5. Définir la commande pour lancer votre script principal
# (Remplacez "main.py" par le nom de votre fichier script Python)
CMD ["python", "main.py"]
