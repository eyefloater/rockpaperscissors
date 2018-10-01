package com.sg.rockpapermvc;

import java.util.Map;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RockPaperController {

    public static int totalPoints;
    public static String response;

    @PostMapping(value = "/rockPaper")
    public String rockPaper(HttpServletRequest request,
            Map<String, Object> model) {

        int point = 0;
        Random rand = new Random();
        String choice = request.getParameter("choice");
        int webChoice = rand.nextInt(3) + 1;

        int intChoice = Integer.valueOf(choice);
        switch (intChoice) {
            case 1:
                if (webChoice == 1) {
                    response = "You chose rock, I chose rock, it's a tie";
                    point = 0;
                }
                if (webChoice == 2) {
                    response = "You chose rock, I chose paper, you lose.";
                    point = -1;
                }
                if (webChoice == 3) {
                    response = "You chose rock, I chose scissors, you win";
                    point = 1;
                }
                break;
            case 2:
                if (webChoice == 1) {
                    response = "You chose paper, I chose rock, you lose";
                    point = -1;
                }
                if (webChoice == 2) {
                    response = "You chose paper, I chose paper, it's a tie";
                    point = 0;
                }
                if (webChoice == 3) {
                    response = "You chose paperI chose scissors, you win";
                    point = 1;
                }
                break;
            case 3:
                if (webChoice == 1) {
                    response = "You chose scissors, I chose rock, you lose";
                    point = -1;
                }
                if (webChoice == 2) {
                    response = "You chose scissors, I chose paper, you win";
                    point = 1;
                }
                if (webChoice == 3) {
                    response = "You chose scissors, I chose scissors, it's a tie";
                    point = 0;
                }
                break;
        }

        totalPoints += point;

        return "redirect:/";

    }

    @GetMapping("/")
    public String index(Model model) {

        model.addAttribute("response", response);
        model.addAttribute("totalPoints", totalPoints);

        return "index";
    }

}
