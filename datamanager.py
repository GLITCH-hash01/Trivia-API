import mysql.connector as ms

db=ms.connect(host='localhost',user='root',password='H2A0R0I4',database='TRIVIA')

cur=db.cursor()
cur.execute("SELECT Q_ID,QUESTION FROM TRIVIAS ORDER BY RAND() LIMIT 1")
data=cur.fetchone()
print(data)