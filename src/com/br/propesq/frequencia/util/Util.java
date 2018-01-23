package com.br.propesq.frequencia.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Calendar;

import org.springframework.web.multipart.MultipartFile;


public class Util {
	
	public static boolean fazerUploadArquivo(MultipartFile historicoEscolar) {

		boolean sucessoUpload = false;

		if (!historicoEscolar.isEmpty()) {

		    String nomeArquivo = historicoEscolar.getOriginalFilename();

		    try {
			
			String workspaceProjeto = "C:/Users/Sandra Lopes/git/FormularioFrequencia";
			File dir = new File(workspaceProjeto + "/WebContent/view/historicos");
			if (!dir.exists()) {
			    dir.mkdirs();
			}

			
			File serverFile = new File(dir.getAbsolutePath() + File.separator + Calendar.getInstance().getTime() + " - " + nomeArquivo);
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
			stream.write(historicoEscolar.getBytes());
			stream.close();

			System.out.println("Arquivo armazenado em:" + serverFile.getAbsolutePath());
			System.out.println("Você fez o upload do arquivo " + nomeArquivo + " com sucesso");
			sucessoUpload = true;

		    } catch (Exception e) {
			System.out.println("Você falhou em carregar o arquivo " + nomeArquivo + " => " + e.getMessage());
		    }

		} else {
		    System.out.println("Você falhou em carregar o arquivo porque ele está vazio ");
		}

		return sucessoUpload;
	    }



}
