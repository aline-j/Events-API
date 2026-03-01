# baseimage
FROM python:3.11-slim

# working directory in the container
WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

EXPOSE 5000

# Commands to be executed
CMD ["python3", "app.py"]