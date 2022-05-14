package com.skilldistillery.vinyl.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		model.addAttribute("album", album);
		return "album/show";
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
	
	@RequestMapping(path = "createNewAlbum.do")
	public String createNewAlbum(Model model, String title, String artist, int year, String genre, String style, String label, String catNo, String releaseId, String format) {
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

}
