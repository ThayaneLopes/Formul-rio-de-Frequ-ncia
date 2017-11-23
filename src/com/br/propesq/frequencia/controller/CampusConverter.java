package com.br.propesq.frequencia.controller;
import org.springframework.core.convert.converter.Converter;

import com.br.propesq.frequencia.Dao.CampusHibernateDao;
import com.br.propesq.frequencia.model.Campus;

public class CampusConverter implements Converter<String, Campus> {
	
	public Campus convert(String id) {

		if (id != null && !id.equals("")) {
		    CampusHibernateDao dao = new CampusHibernateDao();
		    return dao.buscarPorId(Integer.valueOf(id));
		} else {
		    return null;
		}
	    }
	
	


}
