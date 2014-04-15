/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.spcollege.TitianBank.domain;

/**
 *
 * @author Chukk
 */
public class User {
    
    private final String userName;
    private final String passWord;
    private final Customer customer;
    
    public User(String userName, String password, Customer customer){
        this.userName = userName;
        this.passWord = password;
        this.customer = customer;
    }
    
    public String getUserName(){
        return this.userName;
    }
    
    public boolean isValidPassword(String password){
        return this.passWord.equals(password);
    }

    Customer getCustomer() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
