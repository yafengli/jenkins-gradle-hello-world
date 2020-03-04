package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Home {  
  @RequestMapping("/home")
  @ResponseBody
  public JsonIndex home() {
    JsonIndex r =  new JsonIndex();
    r.setName("Hello");
    r.setTime(String.valueOf(System.currentTimeMillis()));
    return r;
  }
}

class JsonIndex {
  private String name;
  private String time;

  public void setName(String name){ 
    this.name = name;
  }
  public String getName() {
    return this.name;
  }

  public void setTime(String time) {
    this.time = time;
  }
  public String getTime() {
    return this.time;
  }
}