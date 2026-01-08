# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, Docker! This app is running via Gunicorn.'

if __name__ == '__main__':
    # This block is useful for local testing without Gunicorn
    app.run()

