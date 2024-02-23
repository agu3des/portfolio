package Atividades;

import java.awt.Desktop;
import java.net.URI;
import java.net.URL;

import String;

public class Browser {
	public static void main(String[] args) {
		try {
	           URI uri = new URL("https://www.ifpb.edu.br/joaopessoa").toURI();

	           Desktop.getDesktop().browse(uri);
	       }
	       catch (Exception e) {
	           System.out.println("problema na url");
	       }
	}
}
