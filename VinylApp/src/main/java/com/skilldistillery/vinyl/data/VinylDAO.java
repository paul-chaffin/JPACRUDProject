package com.skilldistillery.vinyl.data;

import java.util.List;

import com.skilldistillery.vinyl.entities.Album;

public interface VinylDAO {
	
	Album findById(int albumId);
	List<Album> findAll();
	Album createNewAlbum(Album album);
	Album runUpdate(int id, Album updatedAlbum);
	boolean runRemove(int id);
	List<Album> searchTitle(String keyword);
	List<Album> searchArtist(String keyword);
	List<String> retrieveAllArtists();
	List<String> retrieveAllGenres();
	List<String> retrieveAllStyles();
	List<Album> retrieveArtistCatalog(String artist);
	List<Album> retrieveGenreCatalog(String genre);
	List<Album> retrieveStyleCatalog(String style);

}
