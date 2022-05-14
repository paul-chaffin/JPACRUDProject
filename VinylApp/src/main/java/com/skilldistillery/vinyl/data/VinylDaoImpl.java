package com.skilldistillery.vinyl.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.vinyl.entities.Album;


@Transactional
@Service
public class VinylDaoImpl implements VinylDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public Album findById(int albumId) {
		return em.find(Album.class, albumId);
	}

	@Override
	public List<Album> findAll() {
		String jpql = "SELECT a FROM Album a";
		List<Album> albums = em.createQuery(jpql, Album.class).getResultList();
		return albums;
	}
	
	
	@Override
	public Album createNewAlbum(Album album) {
		em.persist(album);
		em.flush();
		album = em.find(Album.class, album.getId());
		
		return album;
	}

}
