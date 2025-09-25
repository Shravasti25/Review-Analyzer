package com.springaiapi.ReviewAnalyzer.services;


import com.theokanning.openai.completion.CompletionRequest;
import com.theokanning.openai.OpenAiService;
import com.theokanning.openai.completion.CompletionChoice;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class AIAnalysisService {

    private final OpenAiService openAiService;

    public AIAnalysisService(@Value("${openai.api.key}") String apiKey) {
        if (apiKey == null || apiKey.isBlank()) {
            throw new IllegalArgumentException("OpenAI API key is missing in application.properties!");
        }
        this.openAiService = new OpenAiService(apiKey);
    }

    public String analyzePost(String post) {
        String prompt = "Analyze this social media post and return JSON with fields: sentiment, engagement, suggestion.\nPost: " + post;

        CompletionRequest request = CompletionRequest.builder()
                .model("text-davinci-003")
                .prompt(prompt)
                .maxTokens(200)
                .temperature(0.7)
                .build();

        var result = openAiService.createCompletion(request);

        if (result.getChoices() != null && !result.getChoices().isEmpty()) {
            CompletionChoice choice = result.getChoices().get(0);
            return choice.getText().trim();
        }

        return "No response from AI.";
    }

}