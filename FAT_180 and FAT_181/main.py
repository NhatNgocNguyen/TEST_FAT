from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI(title="Demo Model Serving API")

class Customer(BaseModel):
    age: int
    tenure_months: int
    avg_monthly_spend: float
    num_support_tickets: int

@app.get("/")
def health():
    return {"status": "ok"}

@app.post("/predict")
def predict(customer: Customer):
    # dummy logic (replace bằng model thật sau)
    score = (
        customer.avg_monthly_spend * 0.3
        - customer.tenure_months * 0.2
        + customer.num_support_tickets * 0.5
    )
    churn = 1 if score > 10 else 0

    return {
        "churn_prediction": churn,
        "score": score
    }
