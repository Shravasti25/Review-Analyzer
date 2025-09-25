package com.springaiapi.ReviewAnalyzer.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springaiapi.ReviewAnalyzer.services.AIAnalysisService;

@Controller
public class PostAnalyzercontroller {

    @Autowired
    private AIAnalysisService aiService;

    @GetMapping("/")
    public String index() {
        return "index.jsp"; // Renders index.html
    }

    @PostMapping("/analyze")
    public String analyzePost(@RequestParam("post") String post, Model model) {
        String result = aiService.analyzePost(post);
          model.addAttribute("post", post);
        model.addAttribute("analysis", result);
        return "index.jsp";
    }
}