package com.br.propesq.frequencia.converter;

import org.springframework.core.convert.converter.Converter;

import com.br.propesq.frequencia.dao.BolsistaDao;
import com.br.propesq.frequencia.model.Bolsista;

public class BolsistaConverter implements Converter<String, Bolsista> {
	
	@Override
	public Bolsista convert(String bolsista) {
		if (bolsista != null && !bolsista.isEmpty()) {
			BolsistaDao dao = new BolsistaDao();
			return dao.BuscarBolsistaPorId(Integer.valueOf(bolsista));
		} else  {
			return null;
		}

	}

}
