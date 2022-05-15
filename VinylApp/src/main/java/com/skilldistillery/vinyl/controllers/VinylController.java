package com.skilldistillery.vinyl.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.vinyl.data.VinylDAO;
import com.skilldistillery.vinyl.entities.Album;

@Controller
public class VinylController {

	@Autowired
	private VinylDAO vinylDao;

	@RequestMapping(path = { "/", "index.do" })
	public String index() {

		return "index";
	}

	@RequestMapping(path = "getAlbum.do")
	public String findById(@RequestParam("aid") int aid, Model model) {
		Album album = vinylDao.findById(aid);
		if (album != null) {
			model.addAttribute("album", album);
			return "album/show";
		} else {
			return "album/notFound";
		}
	}

	@RequestMapping(path = "searchTitle.do")
	public String searchTitle(String keyword, Model model) {
		List<Album> albums = vinylDao.searchTitle(keyword);

		if (albums != null) {
			model.addAttribute("albums", albums);
			return "album/searchResults";
		} else {
			return "album/notFound";
		}
	}
	
	@RequestMapping(path = "searchArtist.do")
	public String searchArtist(String keyword, Model model) {
		List<Album> albums = vinylDao.searchArtist(keyword);
		
		if (albums != null) {
			model.addAttribute("albums", albums);
			return "album/searchResults";
		} else {
			return "album/notFound";
		}
	}

	@RequestMapping(path = "browseAllArtists.do")
	public String browseAllArtists(Model model) {
		List<String> artists = vinylDao.retrieveAllArtists();
		model.addAttribute("artists", artists);
		return "browse/allArtists";
	}
	
	@RequestMapping(path = "getArtist.do")
	public String browseSingleArtist(String artist, Model model) {
		List<Album> catalog = vinylDao.retrieveArtistCatalog(artist);
		model.addAttribute("catalog", catalog);
		model.addAttribute("artist", artist);
		return "browse/artistCatalog";
	}
	
	@RequestMapping(path = "browseAllGenres.do")
	public String browseAllGenres(Model model) {
		List<String> genres = vinylDao.retrieveAllGenres();
		model.addAttribute("catalog", genres);
		return "browse/allGenres";
	}
	
	@RequestMapping(path = "getGenre.do")
	public String browseSingleGenre(String genre, Model model) {
		List<Album> catalog = vinylDao.retrieveGenreCatalog(genre);
		model.addAttribute("catalog", catalog);
		model.addAttribute("genre", genre.toLowerCase());
		return "browse/genreCatalog";
	}
	
	
	
	@RequestMapping(path = "showAll.do")
	public String findAll(Model model) {
		List<Album> albums = vinylDao.findAll();
		model.addAttribute("albums", albums);
		return "album/showAll";
	}

	@RequestMapping(path = "addAlbum.do")
	public String addAlbum() {

		return "album/addAlbum";
	}

	@RequestMapping(path = "removeAlbum.do")
	public String removeAlbum() {

		return "album/removeAlbum";
	}

	@RequestMapping(path = "createNewAlbum.do")
	public String createNewAlbum(Model model, String title, String artist, int year, String genre, String style,
			String label, String catNo, String releaseId, String format) {
		Album album = new Album();
		album.setTitle(title);
		album.setArtist(artist);
		album.setYear(year);
		album.setGenre(genre);
		album.setStyle(style);
		album.setLabel(label);
		album.setCatNo(catNo);
		album.setReleaseId(releaseId);
		album.setFormat(format);
		Album newAlbum = vinylDao.createNewAlbum(album);

		model.addAttribute("album", newAlbum);
		return "album/show";
	}

	@RequestMapping(path = "updateAlbum.do")
	public String updateAlbum(@RequestParam("aid") int aid, Model model) {
		Album album = vinylDao.findById(aid);

		model.addAttribute("album", album);
		return "album/updateAlbum";
	}

	@RequestMapping(path = "runUpdate.do")
	public String runUpdate(Model model, int id, String title, String artist, int year, String genre, String style,
			String label, String catNo, String releaseId, String format) {
		Album album = new Album();
		album.setTitle(title);
		album.setArtist(artist);
		album.setYear(year);
		album.setGenre(genre);
		album.setStyle(style);
		album.setLabel(label);
		album.setCatNo(catNo);
		album.setReleaseId(releaseId);
		album.setFormat(format);
		Album updatedAlbum = vinylDao.runUpdate(id, album);

		model.addAttribute("album", updatedAlbum);
		return "album/show";
	}

	@RequestMapping(path = "runRemove.do")
	public String runRemove(@RequestParam("aid") int aid, Model model) {
		Album removingAlbum = vinylDao.findById(aid);
		model.addAttribute("aid", aid);
		model.addAttribute("title", removingAlbum.getTitle());
		model.addAttribute("artist", removingAlbum.getArtist());
		if (vinylDao.runRemove(aid)) {
			return "album/removed";
		} else {
			return "album/removeFailed";
		}

	}

}
