package com.codingdojo.cynthia.controladores;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.cynthia.modelos.Lenguaje;
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
	
	@GetMapping("/nuevo")
	public String nuevoLenguaje(@ModelAttribute("lenguaje") Lenguaje leng) {
		return "nuevoLenguaje.jsp";
	}
	
	
	@PostMapping("/guardar")
	public String guardarLenguaje( @Valid @ModelAttribute("lenguaje") Lenguaje leng, BindingResult result, @RequestParam Map<String, String> body ) {
		if(result.hasErrors())
			return "nuevoLenguaje.jsp";
		lenguajesServicio.crearLenguaje(leng);
		return "redirect:/";
	}
	
	@GetMapping("/{id}")
	public String informacionLenguaje(@PathVariable("id") Long id, Model model){
		model.addAttribute("lenguaje", lenguajesServicio.buscarLenguaje(id));
		return "infoLenguaje.jsp";
	}
}
