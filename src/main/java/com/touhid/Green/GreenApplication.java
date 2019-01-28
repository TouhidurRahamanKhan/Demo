package com.touhid.Green;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class GreenApplication {

	public static void main(String[] args) {
		SpringApplication.run(GreenApplication.class, args);
	}

@RequestMapping("/Hello")
	public String hello()
	{
		return "Hello";
	}
	
	@RequestMapping("/Hello2")
	public String hello3()
	{
		return "Hello2!!!!!!!!!!!!!!!!!";
	}

}

