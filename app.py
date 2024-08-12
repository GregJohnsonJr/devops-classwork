from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/say_hello/Gregory")
def say_hello(name):
    return {"Hello from Seattle": name}