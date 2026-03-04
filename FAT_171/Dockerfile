# Base image
FROM python:3.10-slim

# Environment variables
ENV PORT=8080
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy model + code into image
COPY app.py .
COPY model.pkl .

# start API server
CMD exec uvicorn app:app --host 0.0.0.0 --port $PORT



