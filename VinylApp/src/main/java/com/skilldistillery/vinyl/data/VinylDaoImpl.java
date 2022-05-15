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
		String jpql = "SELECT a FROM Album a ORDER BY a.title ASC";
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

	@Override
	public boolean runRemove(int id) {
		boolean result = false;
		Album album = em.find(Album.class, id);

		if (album != null) {
			em.remove(album);
			result = !em.contains(album);
		}
		return result;
	}

	@Override
	public List<Album> searchTitle(String keyword) {
		String jpql = "SELECT a FROM Album a WHERE a.title LIKE :keyword ORDER BY a.title ASC";
		List<Album> albums = em.createQuery(jpql, Album.class).setParameter("keyword", "%"+keyword+"%").getResultList();

		return albums;
	}
	
	@Override
	public List<Album> searchArtist(String keyword) {
		String jpql = "SELECT a FROM Album a WHERE a.artist LIKE :keyword ORDER BY a.artist ASC";
		List<Album> albums = em.createQuery(jpql, Album.class).setParameter("keyword", "%"+keyword+"%").getResultList();
		
		return albums;
	}
	
	@Override
	public List<String> retrieveAllArtists(){
		String jpql = "SELECT DISTINCT a.artist FROM Album a ORDER BY a.artist ASC";
		List<String> artists = em.createQuery(jpql, String.class).getResultList();
		return artists;
	}
	@Override
	public List<Album> retrieveArtistCatalog(String artist){
		String jpql = "SELECT a FROM Album a WHERE a.artist = :artist ORDER BY a.title ASC";
		List<Album> catalog = em.createQuery(jpql, Album.class).setParameter("artist", artist).getResultList();
		return catalog;
	}
	
	@Override
	public List<String> retrieveAllGenres(){
		String jpql = "SELECT DISTINCT a.genre FROM Album a ORDER BY a.genre ASC";
		List<String> genres = em.createQuery(jpql, String.class).getResultList();
		return genres;
	}
	
	@Override
	public List<Album> retrieveGenreCatalog(String genre){
		String jpql = "SELECT a FROM Album a WHERE a.genre = :genre ORDER BY a.title ASC";
		List<Album> catalog = em.createQuery(jpql, Album.class).setParameter("genre", genre).getResultList();
		return catalog;
	}
}
