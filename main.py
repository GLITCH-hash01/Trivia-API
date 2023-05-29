from flask import Flask,request,jsonify
import mysql.connector as ms

app=Flask(__name__)
db=ms.connect(host='localhost',user='root',password='H2A0R0I4',database='TRIVIA')


@app.route('/get-question',methods=['GET'])
def get_question():
    cur=db.cursor()
    cur.execute("SELECT Q_ID,QUESTION FROM TRIVIAS ORDER BY RAND() LIMIT 1")
    data=cur.fetchone()
    question_info={
        'id':data[0],
        'question':data[1]
    }
    cur.close()
    return jsonify(question_info) ,200


@app.route('/get-answer/<ans_id>',methods=['POST'])
def get_answer(ans_id):
    cur=db.cursor()
    cur.execute(f"SELECT ANSWER FROM TRIVIAS WHERE Q_ID={ans_id}")
    data=cur.fetchone()
    answer_info={
        'answer':data[0]
    }
    return jsonify(answer_info),200


@app.route('/add-question')
def add_question():
    return 'question'




if __name__ == '__main__':
    app.run(debug=True)
