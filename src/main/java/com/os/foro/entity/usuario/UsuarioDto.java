package com.os.foro.entity.usuario;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
/**
 * 
 * @author OscarEdmit
 *
 */
@Entity
public class UsuarioDto {
	@Id
	public Long id;
	@Index
	public String nombres;
	public UsuarioDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	
	
}
