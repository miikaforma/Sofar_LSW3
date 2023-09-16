# === Build stage ===
FROM alexberkovich/alpine-python3
COPY requirements.txt etc/requirements.txt
RUN pip install -r etc/requirements.txt

WORKDIR /app
COPY . /app/.

# === Run stage ===
CMD ["/bin/bash", "-c", "while true; do python3 /app/InverterData.py; sleep 60; done"]
