package org.kiva.SimpleSpringExample;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DefaultController {

	@GetMapping("/")
	public String view() {
		return "view";
	}

	@PostMapping("/parseNum")
	public String parseNum(@RequestParam(value = "number", required = false) String number, Model model) {
		int rem = Integer.parseInt(number) % 5;
		model.addAttribute("parsedNum", rem < 2 ? "F" : "O");
		return "numResp";
	}
}
