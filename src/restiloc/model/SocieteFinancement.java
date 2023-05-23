package restiloc.model;

import java.util.ArrayList;
import java.time.LocalDateTime;

public class SocieteFinancement {

    private String code;
    private String nom;
    private ArrayList<Expertise> lesExpertises;

// Constructeur qui initialise les attributs privés et instancie la collection lesExpertises
    public SocieteFinancement(String codeSL, String nomSL) {

    }

    public void AjouterExpertiseClient(String dossier, LocalDateTime dateHeure, String lieu, String adresse, String immat, String marque, String modele, String unContact, String unTel, String unMail) {

    }

// Méthode qui permet d'ajouter une nouvelle expertise de type pool garage
    public void AjouterExpertisePool(String dossier, LocalDateTime dateHeure, String lieu,
            String adresse, String immat, String marque, String modele) {

    }

// Méthode qui retourne la liste des expertises indisponibles
    public ArrayList<Expertise> LesExpertisesIndispos() {
        return new ArrayList();
    }

// Méthode qui retourne le nombre d’expertises indisponibles correspondant au motif leMotif
    public int NbIndisponibilites(String leMotif) {
        
        return 999;
    }
}
