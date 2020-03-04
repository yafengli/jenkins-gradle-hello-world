package com.example.demo.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Index { 
  @RequestMapping("/") 
  public JsonIndex index() {
    JsonIndex r =  new JsonIndex();
    r.setName("Hello");
    r.setTime(String.valueOf(System.currentTimeMillis()));
    return r;
  }
}
