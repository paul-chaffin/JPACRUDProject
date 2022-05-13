package com.skilldistillery.vinyl.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.vinyl.data.VinylDAO;

@Controller
public class VinylController {

	@Autowired
	private VinylDAO vinylDao;

	@RequestMapping(path = { "/", "index.do" })
	public String index(Model model) {
		model.addAttribute("DEBUG", vinylDao.findById(1));
		return "index";
	}

}
