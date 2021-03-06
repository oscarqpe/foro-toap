package com.os.foro.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.os.foro.tema.TemaComentarioDto;
import com.os.foro.tema.TemaDto;
import com.os.foro.tema.TemaManager;

public class ForoInicio extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final TemaManager temaManager = new TemaManager();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idTema = request.getParameter("_key");
		System.out.println("Key: " + idTema);
		Long id = Long.parseLong(idTema);
		TemaDto tema = temaManager.getTema(id);
	
		List<TemaComentarioDto> comentarios = temaManager.getComentarios(id);
		
		System.out.println("Size: " + comentarios.size());
		request.setAttribute("tema", tema);
		request.setAttribute("comentarios", comentarios);
		System.out.println(tema);
		request.getRequestDispatcher("views/temas/foro.jsp").forward(request, response);
	}
}
