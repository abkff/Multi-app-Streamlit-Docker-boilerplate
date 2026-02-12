# 1. Image de base
FROM python:3.11-slim

# 2. Dossier de travail
WORKDIR /app

# 3. Installation des dépendances système épurées
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# 4. Installation des bibliothèques Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copie du code
COPY . .

# 6. Port et Lancement
EXPOSE 8501
CMD ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]