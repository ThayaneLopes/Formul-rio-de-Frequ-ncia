package com.br.propesq.frequencia.model;


public class Bolsista {

	
	private int id;
	private String nome;
	private String matricula;
	private String login;
	private String cpf;
	private String rg;
	private String historicoEscolar;
	private String curriculo;
	private String tituloPlano;
	private String email;
	private String telefone;
	private String agencia;
	private String conta;
	private String senha;
	private Campus campus;
	private String banco;
	private String tipoProjeto;
	private Usuario orientador;

	
	
	
	public Usuario getOrientador() {
		return orientador;
	}
	public void setOrientador(Usuario orientador) {
		this.orientador = orientador;
	}
	public String getBanco() {
		return banco;
	}
	public void setBanco(String banco) {
		this.banco = banco;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Campus getCampus() {
		return campus;
	}
	public void setCampus(Campus campus) {
		this.campus = campus;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getMatricula() {
		return matricula;
	}
	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}
	public String getRg() {
		return rg;
	}
	public void setRg(String rg) {
		this.rg = rg;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getAgencia() {
		return agencia;
	}
	public void setAgencia(String agencia) {
		this.agencia = agencia;
	}
	public String getConta() {
		return conta;
	}
	public void setConta(String conta) {
		this.conta = conta;
	}
	public String getHistoricoEscolar() {
		return historicoEscolar;
	}
	public void setHistoricoEscolar(String historicoEscolar) {
		this.historicoEscolar = historicoEscolar;
	}
	public String getCurriculo() {
		return curriculo;
	}
	public void setCurriculo(String curriculo) {
		this.curriculo = curriculo;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getTituloPlano() {
		return tituloPlano;
	}
	public void setTituloPlano(String tituloPlano) {
		this.tituloPlano = tituloPlano;
	}
	public String getTipoProjeto() {
		return tipoProjeto;
	}
	public void setTipoProjeto(String tipoProjeto) {
		this.tipoProjeto = tipoProjeto;
	}
	
	
	
	
}
