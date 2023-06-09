from flask import Flask,request,jsonify
import mysql.connector as ms

app=Flask(__name__)
db=ms.connect(host='localhost',user='root',password='H2A0R0I4',database='TRIVIA')

'''

To do
+ category system

'''

@app.route('/get-question',methods=['GET'])
def get_question():
    category=request.args.get("category")
    cur=db.cursor()
    if category:
        cur.execute(f"SELECT Q_ID,QUESTION,CATEGORY FROM TRIVIAS WHERE CATEGORY={category} ORDER BY RAND() LIMIT 1")
        data=cur.fetchone()
        question_info={
            'id':data[0],
            'question':data[1],
            'category':data[2]
        }
        cur.close()
        return jsonify(question_info),200
    else:
        cur=db.cursor()
        cur.execute("SELECT Q_ID,QUESTION,CATEGORY FROM TRIVIAS ORDER BY RAND() LIMIT 1")
        data=cur.fetchone()
        print(data)
        question_info={
            'id':data[0],
            'question':data[1],
            'category':data[2]
        }
        cur.close()
        return jsonify(question_info) ,200


@app.route('/get-answer/<ans_id>',methods=['GET'])
def get_answer(ans_id):
    cur=db.cursor()
    cur.execute(f"SELECT ANSWER FROM TRIVIAS WHERE Q_ID={ans_id}")
    data=cur.fetchone()
    answer_info={
        'answer':data[0]
    }
    cur.close()
    return jsonify(answer_info),200


@app.route('/add-question',methods=['POST'])
def add_question():
    data=request.get_json()
    if 'question' in list(data.keys()) and 'answer' in list(data.keys()):
        cur=db.cursor()
        cur.execute("SELECT MAX(Q_ID)+1 FROM TRIVIAS")
        nxtid=cur.fetchone()[0]
        cur.execute(f'INSERT INTO TRIVIAS (q_id,question,answer) VALUES ({nxtid},"'+data['question']+'","'+data['answer']+'")')
        db.commit()
        cur.close()
        return jsonify(data) ,201
    else:
        errormessage={
            'error':'Not enough parameters available adding question'
        }
        return jsonify(errormessage),400



if __name__ == '__main__':
    app.run(debug=True)
