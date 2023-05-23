package restiloc.model;

import java.time.LocalDateTime;

public class RDV_Client extends Expertise {
    private String nomContact;
    private String telephone;
    private String mail;
    
    //Constructeur qui permet d'instancier une expertise de type RDV client

    public RDV_Client(String nomContact, String telephone, String mail, String codeDossier, LocalDateTime dateHeureRDV, String lieuRDV, String adresse, String immatriculation, String marque, String modele) {
        super(codeDossier, dateHeureRDV, lieuRDV, adresse, immatriculation, marque, modele);
        this.nomContact = nomContact;
        this.telephone = telephone;
        this.mail = mail;
    }
    
}
