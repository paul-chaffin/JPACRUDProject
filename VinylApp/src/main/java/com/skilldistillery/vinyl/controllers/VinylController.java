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
	public String index(Model model) {
		List<Album> albums = vinylDao.findAll();
		model.addAttribute("albums", albums);
		return "index";
	}
	
	@RequestMapping(path = "getAlbum.do")
	public String findById(@RequestParam("aid") int aid, Model model) {
		Album album = vinylDao.findById(aid);
		model.addAttribute("album", album);
		return "show";
	}

}
