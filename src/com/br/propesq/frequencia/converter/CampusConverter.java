package com.br.propesq.frequencia.converter;

import org.springframework.core.convert.converter.Converter;

import com.br.propesq.frequencia.dao.CampusDao;
import com.br.propesq.frequencia.model.Campus;

public class CampusConverter implements Converter<String, Campus> {

	public Campus convert(String id) {
		if (!id.equals("")) {
			CampusDao dao = new CampusDao();
			return dao.buscarPorId(Integer.valueOf(id));
		} else {
			return null;
		}

	}
}
