from fastapi import FastAPI
import joblib
import numpy as np
import os

app = FastAPI()

# load model at startup
model = joblib.load("model.pkl")

@app.get("/")
def health():
    return {"status": "ok"}

@app.post("/predict")
def predict(data: dict):
    x = np.array(data["instances"])
    preds = model.predict(x).tolist()
    return {"predictions": preds}


# curl -X POST https://YOUR_URL.run.app/predict \
#     -H "Content-Type: application/json" \
#     -d '{"instances": [[1],[2],[3]]}'