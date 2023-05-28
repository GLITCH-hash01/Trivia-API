from flask import Flask,request,jsonify

app=Flask(__name__)

@app.route('/get-user/<user_id>')
def index(user_id):
    return f'Hello World {user_id}'

@app.route('/create-user',methods=['POST'])
def create():


if __name__ == '__main__':
    app.run(debug=True)
