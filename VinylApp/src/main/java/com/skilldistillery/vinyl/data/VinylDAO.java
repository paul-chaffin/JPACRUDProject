package com.skilldistillery.vinyl.data;

import java.util.List;

import com.skilldistillery.vinyl.entities.Album;

public interface VinylDAO {
	
	Album findById(int albumId);
	List<Album> findAll();

}
