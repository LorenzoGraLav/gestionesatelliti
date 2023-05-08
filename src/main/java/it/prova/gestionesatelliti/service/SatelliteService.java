package it.prova.gestionesatelliti.service;

import java.util.HashMap;
import java.util.List;

import it.prova.gestionesatelliti.model.Satellite;


public interface SatelliteService {
	public List<Satellite> listAllElements();

	public Satellite caricaSingoloElemento(Long id);
	
	public void aggiorna(Satellite satelliteInstance);

	public void inserisciNuovo(Satellite satelliteInstance);

	public void rimuovi(Long idSatellite);
	
	public List<Satellite> findByExample(Satellite example);
	
	public void lancio(Long id);

	public void rientro(Long id);

	public List<Satellite> lanciatiDa2AnniOPiuAttivi();

	public List<Satellite> disattivatiMaNonRientrati();

	public List<Satellite> RimastiInOrbitaDieciAnniEFissi();

	public List<Satellite> satellitiChePossonoRientrare();

	public void rientraTuttiSatellitiPossibili();
	
	

	
}
