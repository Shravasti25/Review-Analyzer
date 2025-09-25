package com.springaiapi.ReviewAnalyzer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.springaiapi.ReviewAnalyzer")
public class ReviewAnalyzerApplication {
    public static void main(String[] args) {
        SpringApplication.run(ReviewAnalyzerApplication.class, args);
    }
}