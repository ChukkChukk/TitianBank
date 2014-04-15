/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.spcollege.TitianBank.domain;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Chukk
 */
public class TransferService {
    
    ArrayList<TransferRequest> transactions;
    
    public TransferService(){
        transactions = new ArrayList<>();
    }
    
    public void transfer(TransferRequest request) {
        if(request.getWhenTo() == TransferRequest.ScheduleType.FUTURE)
            transactions.add(request);
        else{
            try {
                request.getSource().withdraw(request.getAmount());
                request.getDestination().deposit(request.getAmount());
                request.completeTransaction();
                transactions.add(request);
            }
            catch (InsufficientFundsException ex) {
                Logger.getLogger(TransferService.class.getName()).log(Level.SEVERE, null, ex);
            
            } 
            
           
        }
    }
    
    public List getTransactions(TransferRequest.TransferStatus status){
        ArrayList<TransferRequest> results = new ArrayList<>();
        transactions.stream().filter((request) -> (request.getStatus() == status)).forEach((request) -> {
            results.add(request);
        });
        return Collections.unmodifiableList(results);
    }
    
    
}
