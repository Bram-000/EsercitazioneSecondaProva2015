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
@Table(name="Utenti")  


public class Utenti implements Serializable {
     @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="Nickname") 
    private String nickname;
     
    @Column(name="Nome",length=20)
    private String nome;
    
    @Column(name="Cognome",length=25)
    private String cognome;
    
    @Column(name="E-mail",length=30)
    private String email;

    @OneToMany(mappedBy="utente")
    private Set<Eventi> eventi;
    
    @OneToMany(mappedBy="utente")
    private Set<Commenti> commenti;
    
    @ManyToMany
    @JoinTable(
        name="Ut_Cat",
        joinColumns={@JoinColumn(name="nickname")},
        inverseJoinColumns={@JoinColumn(name="idCat")}
    )

    private Set<Categorie> categorie;


    public Utenti() {
    }

    public Utenti(String nome, String cognome, String email) {
        this.nome = nome;
        this.cognome = cognome;
        this.email = email;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

   
   
    
}
