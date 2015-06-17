package com.os.foro.entity.usuario;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.util.List;
import java.util.logging.Logger;

import com.googlecode.objectify.cmd.Query;
/**
 * 
 * @author OscarEdmit
 *
 */
public class UsuarioManager {

	private static final Logger LOGGER = Logger.getLogger(UsuarioManager.class.getName());
	
	Query<UsuarioDto> query = ofy().load().type(UsuarioDto.class);
	
	public UsuarioDto registrarUsuario(UsuarioDto usuario) {
		ofy().save().entity(usuario).now();
		return usuario;
	}
	public List<UsuarioDto> listaUsuarios() {
		return query.list();
	}
	public UsuarioDto getUsuario(Long idUsuario) {
		return ofy().load().type(UsuarioDto.class).id(idUsuario).get();
	}
}
