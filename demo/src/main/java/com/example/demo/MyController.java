package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class MyController implements BaseController{
    @GetMapping("/hi")
    public String HelloWorld(){
        return "hello world";
    }
}
