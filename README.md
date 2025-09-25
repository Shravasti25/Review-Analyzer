# *📝 Review Analyzer* – Spring Boot + OpenAI

A backend project built with Spring Boot that uses OpenAI to analyze customer reviews.
It can classify reviews as positive, negative, or neutral, summarize feedback, or extract key insights automatically.

# *⭐ Features*

POST /api/analyze – Send a review in JSON and get back AI-generated analysis.

Sentiment classification: Positive, Negative, Neutral.

Key points extraction & summarization of reviews.

Spring Boot REST API – Clean structure with Controller, Service, and DTOs.

Configurable OpenAI API key via application.properties.

JSON-based communication – Easy to integrate with frontends or dashboards.

# *🛠 Tech Stack*

Java + Spring Boot – Backend REST API

OpenAI Java Client (theokanning/openai) – AI integration

Maven/Gradle – Build tool

Tomcat (embedded) – Server

Postman / Frontend – To test the API


# *📌 Example API Usage*

Request:

POST /api/analyze
Content-Type: application/json

{
  "review": "The product is amazing, but delivery was delayed."
}

Response:

{
  "sentiment": "Mixed",
  "summary": "Product quality is great, but delivery took longer than expected.",
  "keyPoints": [
    "Product is amazing",
    "Delivery was delayed"
  ]
}


that?
