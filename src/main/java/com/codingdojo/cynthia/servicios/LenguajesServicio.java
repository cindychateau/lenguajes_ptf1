package com.codingdojo.cynthia.servicios;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.cynthia.modelos.Lenguaje;
import com.codingdojo.cynthia.repositorios.LenguajesRepositorio;

@Service
public class LenguajesServicio {
	private final LenguajesRepositorio lenguajesRepositorio;
	public LenguajesServicio(LenguajesRepositorio repositorio) {
		lenguajesRepositorio = repositorio;
	}
	
	public List<Lenguaje> todosLenguajes(){
		return lenguajesRepositorio.findAll();
	}
}
