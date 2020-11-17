from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

# Make fail lint. Comment the line bello after test.
# var =