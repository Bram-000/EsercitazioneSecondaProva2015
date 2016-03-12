package main;
import java.io.Serializable;
import java.util.Set;
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
@Table(name="Artisti")  

public class Artisti implements Serializable {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id_Art")
    private long id;
    
    @Column(name="nomeArte",length=25)
    private String nomeArte;
    
    
    @ManyToMany
    @JoinTable(
        name="Art_Eventi",
        joinColumns={@JoinColumn(name="id_Art")},
        inverseJoinColumns={@JoinColumn(name="id_Evento")}
    )

     private Set<Eventi> eventi;

    public Artisti() {
    }

    public Artisti(String nomeArte) {
        this.nomeArte = nomeArte;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNomeArte() {
        return nomeArte;
    }

    public void setNomeArte(String nomeArte) {
        this.nomeArte = nomeArte;
    }

}

  