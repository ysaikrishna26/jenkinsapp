package com.docker.git.jenkinsapp.controller;

import org.springframework.web.bind.annotation.GetMapping;

@org.springframework.web.bind.annotation.RestController
public class RestController {

  @GetMapping("/")
  public String getToHome() {
    return "You are back home !!!";
  }

  @GetMapping("/health")
  public String getHealth() {
    return "I am Good, Thanks !!! :-)";
  }
}
