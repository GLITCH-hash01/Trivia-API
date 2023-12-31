# Trivia-API

The Trivia-API is an API that provides trivia questions and allows users to add more questions to the database. It is built using Flask and MySQL databases.

## API Documentation

### Get Question

To retrieve trivia questions, send a GET request to the `/get-questions` endpoint. The response will be a JSON object containing the question, question ID, and category of the question. You can also filter questions based on a specific category by using the `category` query parameter, like this: `/get-questions?category='category'`.

### Get Answer

To obtain the answer to a specific question, send a GET request to the `/get-answer/{question-id}` endpoint, where `{question-id}` is the ID of the question you want the answer for. The response will be a JSON object containing the answer.

### Add Question

To add a new question to the database, send a POST request to the `/add-question` endpoint. The request body should be a JSON object that includes the following properties: `question`, `answer`, and `category`. Provide the question as a string, the answer as a string, and the category as a string. The API will add the question to the database.

Example request body:

```json
{
  "question": "What is the capital of France?",
  "answer": "Paris",
  "category": "Geography"
}
```
Make sure to set the appropriate headers and content type when making the request.

### Conclusion

The Trivia-API provides an interface for retrieving trivia questions and adding new questions to the database. It can be integrated into various applications and platforms to enhance user engagement and knowledge.