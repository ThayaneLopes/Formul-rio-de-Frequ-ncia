package com.br.propesq.frequencia.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity 
@Table(name = "formulario_frequencia")
public class FormularioFrequencia {

	@Id
	private int id;
	private String mesAno;
	@ManyToOne    
	@JoinColumn(name = "id_bolsista")
	private Bolsista bolsista;
	@ManyToOne    
	@JoinColumn(name = "id_usuario")
	private Usuario usuario;
	@Column(name="resumo_atividades")
	private String resumoAtividades;
	@Column(name="situacao_cronograma")
	private String situacaoCronograma;
	@Column
	private String justificativa;
	@Column(name="carga_horaria")
	private String cargaHoraria;
	@Column(name="interesse_atividades")
	private String interesseAtividades;
	@Column(name="progresso_alcancado")
	private String progressoAlcancado;
	@Column(name="pagamento_bolsa")
	private String pagamentoBolsa;
	@Column(name="comentarios_estudante")
	private String comentariosEstudante;
	@Column(name="comentarios_orientador")
	private String comentariosOrientador;
	@Column(name="data_entrega")
	private Date dataEntrega;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMesAno() {
		return mesAno;
	}
	public void setMesAno(String mesAno) {
		this.mesAno = mesAno;
	}
	public Bolsista getBolsista() {
		return bolsista;
	}
	public void setBolsista(Bolsista bolsista) {
		this.bolsista = bolsista;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public String getResumoAtividades() {
		return resumoAtividades;
	}
	public void setResumoAtividades(String resumoAtividades) {
		this.resumoAtividades = resumoAtividades;
	}
	public String getSituacaoCronograma() {
		return situacaoCronograma;
	}
	public void setSituacaoCronograma(String situacaoCronograma) {
		this.situacaoCronograma = situacaoCronograma;
	}
	public String getJustificativa() {
		return justificativa;
	}
	public void setJustificativa(String justificativa) {
		this.justificativa = justificativa;
	}
	public String getCargaHoraria() {
		return cargaHoraria;
	}
	public void setCargaHoraria(String cargaHoraria) {
		this.cargaHoraria = cargaHoraria;
	}
	public String getInteresseAtividades() {
		return interesseAtividades;
	}
	public void setInteresseAtividades(String interesseAtividades) {
		this.interesseAtividades = interesseAtividades;
	}
	public String getProgressoAlcancado() {
		return progressoAlcancado;
	}
	public void setProgressoAlcancado(String progressoAlcancado) {
		this.progressoAlcancado = progressoAlcancado;
	}
	public String getPagamentoBolsa() {
		return pagamentoBolsa;
	}
	public void setPagamentoBolsa(String pagamentoBolsa) {
		this.pagamentoBolsa = pagamentoBolsa;
	}
	public String getComentariosEstudante() {
		return comentariosEstudante;
	}
	public void setComentariosEstudante(String comentariosEstudante) {
		this.comentariosEstudante = comentariosEstudante;
	}
	public String getComentariosOrientador() {
		return comentariosOrientador;
	}
	public void setComentariosOrientador(String comentariosOrientador) {
		this.comentariosOrientador = comentariosOrientador;
	}
	public Date getDataEntrega() {
		return dataEntrega;
	}
	public void setDataEntrega(Date dataEntrega) {
		this.dataEntrega = dataEntrega;
	}
	
	
	
}
