package com.br.propesq.frequencia.model;

public enum Perfil {
	ADMINISTRADOR(1);

	private int val;

	private Perfil(int valor) {
		this.val = valor;
	}

	public int getvalor() {
		return this.val;
	}
	
}
