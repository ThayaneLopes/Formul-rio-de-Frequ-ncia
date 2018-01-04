package com.br.propesq.frequencia.converter;

import org.springframework.core.convert.converter.Converter;

import com.br.propesq.frequencia.dao.TipoUsuarioDao;
import com.br.propesq.frequencia.model.TipoUsuario;



public class TipoUsuarioConverter implements Converter<String, TipoUsuario>{
	@Override
	public TipoUsuario convert(String tipoUsuario) {
		if (tipoUsuario != null && !tipoUsuario.isEmpty()) {
			TipoUsuarioDao dao = new TipoUsuarioDao();
			return dao.buscarPorId(Integer.valueOf(tipoUsuario));
		} else  {
			return null;
		}

	}
	
}
