2️⃣ Build & push image lên Artifact Registry (Singapore)
Auth docker
gcloud auth configure-docker asia-southeast1-docker.pkg.dev

Build image
docker build -t asia-southeast1-docker.pkg.dev/PROJECT_ID/ml-images/model-serving:latest .

Push image
docker push asia-southeast1-docker.pkg.dev/PROJECT_ID/ml-images/model-serving:latest

3️⃣ Deploy lên Cloud Run
gcloud run deploy model-serving-api \
  --image asia-southeast1-docker.pkg.dev/PROJECT_ID/ml-images/model-serving:latest \
  --region asia-southeast1 \
  --platform managed \
  --allow-unauthenticated