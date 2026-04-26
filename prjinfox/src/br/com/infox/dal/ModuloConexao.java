/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.infox.dal;

import java.sql.*;


        
public class ModuloConexao {
    //método responsável por estabelecer a conexão com o banco.
    public static Connection conector(){
        java.sql.Connection conexao = null;
        // a linha abaixo "chama" o driver 
        String driver = "com.mysql.jdbc.Driver";
    }
}
