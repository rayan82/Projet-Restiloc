package restiloc.model;

public class Indisponibilite {

    private String motif;
    private boolean clientResponsable;

//Constructeur qui permet d'instancier une indisponibilité de RDV
    public Indisponibilite(String motif, boolean clientResponsable) {
        this.motif = motif;
        this.clientResponsable = clientResponsable;
    }

// indique si le client est responsable ou non de l’indisponibilité
//<returns>True : client responsable / False : client non responsable</returns>
    public boolean ClientEstResponsable() {
        return true;
    }

//Obtient le motif de l'indisponibilité
    public String GetMotif() {
        return "Motif";

    }
}
