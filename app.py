import os, socket
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return f"Greetings from container {socket.gethostname()}, version {os.getenv('APP_VERSION', 'dev')}\n"

@app.route("/health")
def health():
    return {"status": "ok"}
