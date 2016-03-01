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
@Table(name="Commenti")  

public class Commenti implements Serializable {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id_Comm")    
    private int id;

    @Column(name="Commento",length=150)
    private String commento;
   
    @Column(name="Voto",length=1)
    private int Voto;

    public Commenti() {
    }

    public Commenti(String commento, int Voto) {
        this.commento = commento;
        this.Voto = Voto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCommento() {
        return commento;
    }

    public void setCommento(String commento) {
        this.commento = commento;
    }

    public int getVoto() {
        return Voto;
    }

    public void setVoto(int Voto) {
        this.Voto = Voto;
    }
   
 
}
