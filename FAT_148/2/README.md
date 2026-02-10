E️⃣ Build & push image lên Artifact Registry (Singapore)
1. Tạo Artifact Registry (nếu chưa có)
gcloud artifacts repositories create ml-images \
  --repository-format=docker \
  --location=asia-southeast1 \
  --description="Docker images for Vertex AI custom training"

2. Authenticate Docker cho Artifact Registry
gcloud auth configure-docker asia-southeast1-docker.pkg.dev

3. Build Docker image

Ở thư mục có Dockerfile:

docker build -t asia-southeast1-docker.pkg.dev/ext-bidv-eda-internal/ml-images/custom-trainer:latest .


4. Push image
docker push asia-southeast1-docker.pkg.dev/ext-bidv-eda-internal/ml-images/custom-trainer:latest


Nếu push thành công → Artifact Registry UI sẽ thấy image.

F️⃣ Tạo Custom Training Job (UI – no code)
1. Mở Vertex AI

Google Cloud Console → Vertex AI

2. Vào Custom Jobs

Training → Custom jobs → Create

3. Cấu hình job

Training method

✔️ Custom training (advanced)

Container image

asia-southeast1-docker.pkg.dev/PROJECT_ID/ml-images/custom-trainer:latest


Model output

(Optional) bỏ trống nếu chỉ test training