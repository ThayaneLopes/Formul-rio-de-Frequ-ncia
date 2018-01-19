package com.br.propesq.frequencia.converter;

import org.springframework.core.convert.converter.Converter;

import com.br.propesq.frequencia.dao.UsuarioDao;
import com.br.propesq.frequencia.model.Usuario;

public class UsuarioConverter implements Converter<String, Usuario> {
	@Override
	public Usuario convert(String usuario) {
		if (usuario != null && !usuario.isEmpty()) {
			UsuarioDao dao = new UsuarioDao();
			return dao.buscarPorId(Integer.valueOf(usuario));
		} else  {
			return null;
		}

	}

}
