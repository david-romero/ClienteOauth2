package com.konecta.cliente.acciones;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping(value="/")
	public String index(){
		return "index";
	}
	
	@RequestMapping(value="/inicio")
	public String index2(){
		return "index";
	}
	

	@RequestMapping(value="/login")
	public String login(){
		return "login";
	}
	
	@RequestMapping(value="/oauthTemplate")
	public String oauthTemplate(){
		return "oauthTemplate";
	}
	
}
