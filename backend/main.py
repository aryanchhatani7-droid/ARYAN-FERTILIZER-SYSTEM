from fastapi import FastAPI
from datetime import datetime

app = FastAPI(
    title="Aryan Fertilizer & Co.",
    description="Business management system for fertilizer trading",
    version="1.0.0"
)

@app.get("/health")
async def health_check():
    return {
        "success": True,
        "data": {
            "status": "healthy",
            "timestamp": datetime.utcnow().isoformat(),
            "message": "System is running!"
        }
    }

@app.get("/")
async def root():
    return {
        "message": "Welcome to Aryan Fertilizer System",
        "docs": "Visit /docs for API documentation",
        "health": "/health for status"
    }
