/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TOBA.business;

import java.io.Serializable;


public class User2 implements Serializable {

    
    private String password;
    
    public User2() {
       
        password="";
        
    }

    public User2(String password ) {
       
        this.password=password;
    }

    
    public String getPassword() {
        return password;
    }

    public void setPsword(String password) {
        this.password = password;
    }
}

    

