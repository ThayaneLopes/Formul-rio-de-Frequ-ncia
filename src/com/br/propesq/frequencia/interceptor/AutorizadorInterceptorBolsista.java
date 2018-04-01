package com.br.propesq.frequencia.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptorBolsista extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object controller)
			throws Exception {

		String uri = request.getRequestURI();
		if (uri.contains("bootstrap") || uri.contains("index") || uri.contains("jq") || uri.contains("js")
				|| uri.contains("css")|| uri.contains("img") || uri.endsWith("loginBolsista")|| uri.endsWith("loginUsuario")) {
			return true;
		}

		if (request.getSession().getAttribute("bolsistaLogado") != null) {
			return true;
		}
		response.sendRedirect("loginBolsista");
		return false;

	}

}
