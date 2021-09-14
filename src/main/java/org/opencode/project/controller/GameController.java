package org.opencode.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GameController {

    @GetMapping("/gamebullcow")
    public String number(Model model) {
        return "gamebullcow";
    }
}
