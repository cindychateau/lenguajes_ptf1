package com.codingdojo.cynthia.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.cynthia.modelos.Lenguaje;

public interface LenguajesRepositorio extends CrudRepository <Lenguaje, Long>{
	List<Lenguaje> findAll();
}
