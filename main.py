from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "FastAPI server is running!"}

@app.get("/items/{item_id}")
def read_item(item_id: int):
    return {"item_id": item_id, "message": "Requested item"}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)

