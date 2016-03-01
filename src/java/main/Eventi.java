package main;


import java.io.Serializable;
import javax.persistence.*;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author FSEVERI\sturza2870
 */
@Entity 
@Table(name="Eventi")  

public class Eventi implements Serializable {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id_Evento")  
    private int id;
    
    @Column(name="Luogo",length=35)
    private String luogo;
   
    @Column(name="Data")
    private String data;

    public Eventi() {
    }

    public Eventi(String luogo, String data) {
        this.luogo = luogo;
        this.data = data;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLuogo() {
        return luogo;
    }

    public void setLuogo(String luogo) {
        this.luogo = luogo;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
    
    
   

 
}
