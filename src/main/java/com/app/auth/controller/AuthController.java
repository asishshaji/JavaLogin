package com.app.auth.controller;

import com.app.auth.entity.User;
import com.app.auth.services.AuthService;
import com.app.auth.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AuthController {
  private AuthService authService;

  @Autowired
  public AuthController(AuthService authService) {
    super();
    this.authService = authService;
  }

  @GetMapping(value = "/")
  public String getHome() {
    return "index";
  }

  @GetMapping(value = "/register")
  public String showRegisterForm(Model model) {
    User user = new User();
    model.addAttribute("user", user);
    return "registerForm";
  }

  @PostMapping(value = "/register")
  public String registerSubmit(@ModelAttribute("user") User user, Model model) {
    User rUser = authService.registerUser(user.getEmail(), user.getPassword());
    if (rUser == null) {
      model.addAttribute("message", Constants.userRegErrorMessage);
      return "failure";
    } else { // send user to repository
      model.addAttribute("message", Constants.userRegSuccessMessage);
      return "success";
    }
  }
}
