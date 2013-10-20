package com.nvh.giangvien.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;

import com.nvh.applicationscope.BangDanhGiaChoose;
import com.nvh.giangvien.model.ThoiKhoaBieu;
import com.nvh.giangvien.service.ThoiKhoaBieuService;

@Controller
@RequestMapping("/sinhvien")
public class SinhVienCotroller {

	private Logger log = LoggerFactory.getLogger(SinhVienCotroller.class);
	
	@Autowired
	private ThoiKhoaBieuService tkbService;
	
	@Autowired
	private BangDanhGiaChoose choose;
	
	@RequestMapping(method = RequestMethod.GET)
	public String logined(Model model){
		//load tkb len UI
		List<ThoiKhoaBieu> tkbs = tkbService.findAll();
		model.addAttribute("tkblist",tkbs);
		choose.setId(19);
		return "sinhvien";
	}
	
	@RequestMapping(value ="/danhgia/{id}", method = RequestMethod.GET)
	public String danhgia(@PathVariable("id") int id, Model model){
		log.info("Start Danh Gia" + id);
		model.addAttribute("chooseBang", choose.getId());
		return "sinhviendgia";
	}
}
