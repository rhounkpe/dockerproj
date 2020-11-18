from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

# Make fail lint. Comment the line bello after test.
# var =

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080, debug=True)