package com.br.propesq.frequencia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity 
@Table(name = "tipo_usuario")
public class TipoUsuario {

	@Id
	private int id;
	@Column
	private boolean gestor;
	@Column
	private boolean orientador;
	@Column
	private boolean propesq;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public boolean isGestor() {
		return gestor;
	}
	public void setGestor(boolean gestor) {
		this.gestor = gestor;
	}
	public boolean isOrientador() {
		return orientador;
	}
	public void setOrientador(boolean orientador) {
		this.orientador = orientador;
	}
	public boolean isPropesq() {
		return propesq;
	}
	public void setPropesq(boolean propesq) {
		this.propesq = propesq;
	}
	
}
