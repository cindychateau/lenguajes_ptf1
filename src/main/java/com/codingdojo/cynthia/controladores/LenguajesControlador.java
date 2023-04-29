package com.codingdojo.cynthia.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.codingdojo.cynthia.servicios.LenguajesServicio;

@Controller
public class LenguajesControlador {
	private final LenguajesServicio lenguajesServicio;
	public LenguajesControlador(LenguajesServicio service) {
		lenguajesServicio = service;
	}
	
	@GetMapping("/")
	public String Index(Model model) {
		model.addAttribute("lenguajes", lenguajesServicio.todosLenguajes());
		return "index.jsp";
	}
}
