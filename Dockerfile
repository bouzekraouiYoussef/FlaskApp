FROM python:3.12-slim

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier les dépendances
COPY requirements.txt .

# Installer les dépendances
RUN pip install -r requirements.txt

# Copier le code de l'application
COPY . .

# Exposer le port 5000
EXPOSE 5000

# Lancer l'application Flask
CMD ["python", "app.py"]