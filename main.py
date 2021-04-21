from flask import Flask

app = Flask(__name__)


@app.route('/')
def holamundo():
    return 'Hola Mundo v3' 

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0',port=8080)

