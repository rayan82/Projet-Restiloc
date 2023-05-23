package restiloc.model;

import java.time.LocalDateTime;

/**
 *
 * @author patrick
 */
public class Pool_Garage extends Expertise {

    public Pool_Garage(String codeDossier, LocalDateTime dateHeureRDV, String lieuRDV, String adresse, String immatriculation, String marque, String modele) {
        super(codeDossier, dateHeureRDV, lieuRDV, adresse, immatriculation, marque, modele);
    }
    
}
