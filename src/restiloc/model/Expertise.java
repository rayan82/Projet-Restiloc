package restiloc.model;

import java.time.LocalDateTime;

public abstract class Expertise {

    private String codeDossier ;
    private LocalDateTime dateHeureRDV;
    private String lieuRDV;
    private String adresse;
    private String immatriculation;
    private String marque;
    private String modele;
    private Indisponibilite uneIndispo;

    //Constructeur permettant de valoriser les attributs d’un objet
    //public Expertise(String codeDossier, LocalDateTime uneDateHeure, String unLieu, String uneAdresse, String uneImmat, String uneMarque, String unModele) {
    public Expertise(String codeDossier, LocalDateTime dateHeureRDV, String lieuRDV, String adresse, String immatriculation, String marque, String modele) {
        this.codeDossier = codeDossier;
        this.dateHeureRDV = dateHeureRDV;
        this.lieuRDV = lieuRDV;
        this.adresse = adresse;
        this.immatriculation = immatriculation;
        this.marque = marque;
        this.modele = modele;
    }
    

//Méthode qui détermine l'état de l’expertise sous la forme d'un entier
//<returns>1 – à réaliser ; 2 – réalisée ; 3 - indisponible</returns>
    public int EtatExpertise() {
        return 9;
    }

//Méthode qui permet de créer l'indisponibilité de l’expertise qui n'a pas pu avoir lieu
    public void CreerIndisponibilite(String unMotif, boolean clientResponsable) {

    }

//Obtient l'objet de type Indisponibilite si l’expertise n’a pas pu avoir lieu
//<returns>objet de type Indisponibilite ou valeur null si expertise à réaliser ou réalisée</returns>
    //public Indisponibilite GetIndisponibilite() {

    //}

    public void setUneIndispo(Indisponibilite uneIndispo) {
        this.uneIndispo = uneIndispo;
    }
    
}
