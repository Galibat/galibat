# Utilisation de Python 3.12 slim
FROM python:3.12-slim

# Définition du répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le projet
COPY src /app

# Exposer le port de Django
EXPOSE 8000

# Commande de démarrage
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
