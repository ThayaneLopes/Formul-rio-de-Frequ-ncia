package com.br.propesq.frequencia.converter;

import org.springframework.core.convert.converter.Converter;

import com.br.propesq.frequencia.dao.CampusDao;
import com.br.propesq.frequencia.model.Campus;

public class CampusConverter implements Converter<String, Campus> {
	@Override
	public Campus convert(String campus) {
		if (campus != null && !campus.isEmpty()) {
			CampusDao dao = new CampusDao();
			return dao.buscarPorId(Integer.valueOf(campus));
		} else  {
			return null;
		}

	}
}


