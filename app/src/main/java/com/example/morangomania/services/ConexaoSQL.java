package com.example.morangomania.services;

import android.database.SQLException;
import android.os.StrictMode;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoSQL {

    public static Connection conectar(){

        Connection conn = null;

        try{

            //Adicionando política
            StrictMode.ThreadPolicy politica;
            politica = new  StrictMode.ThreadPolicy.Builder().permitAll().build();
            StrictMode.setThreadPolicy(politica);

            //Verificando se o driver está no projeto
            Class.forName("net.sourceforge.jtds.jdbc.Driver");

            //Itens da String de conexao
            String ip = "your machine ip here";
            String db = "create a db on the script and put the name here";
            String user = "your sql user";
            String senha = "your sql password ";

            //String de conexao
            String connString = "jdbc:jtds:sqlserver://"+ip+";databaseName="+db+";user="+user+";password="+senha+";";

            conn = DriverManager.getConnection(connString);

        }catch (SQLException e){
            e.getMessage();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (java.sql.SQLException e) {
            throw new RuntimeException(e);
        }

        return conn;
    }
}
