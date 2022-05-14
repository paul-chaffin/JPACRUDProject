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
	
	@Override
	public Album runUpdate(int id, Album album) {
		Album managed = em.find(Album.class, id);
		managed.setTitle(album.getTitle());
		managed.setArtist(album.getArtist());
		managed.setYear(album.getYear());
		managed.setGenre(album.getGenre());
		managed.setStyle(album.getStyle());
		managed.setLabel(album.getLabel());
		managed.setCatNo(album.getCatNo());
		managed.setReleaseId(album.getReleaseId());
		managed.setFormat(album.getFormat());
		
		return managed;
	}
	
	public boolean runRemove(int id) {
		boolean result = false;
		Album album = em.find(Album.class, id);
		
		if (album != null) {
			em.remove(album);
			result = !em.contains(album);
		}
		return result;
	}

}
