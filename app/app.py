from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, RadhaKrishna'

if __name__ == '__main__':
    hello_world()
    app.run(debug=True, host='0.0.0.0')
