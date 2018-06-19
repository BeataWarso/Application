package pl.coderslab.controller;

import java.io.IOException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.dao.ReservationDao;
import pl.coderslab.dao.TrainingDao;
import pl.coderslab.dao.UserDao;
import pl.coderslab.entity.Reservation;
import pl.coderslab.entity.Training;
import pl.coderslab.entity.User;

import pl.coderslab.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	private TrainingDao trainingDao;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private UserDao userDao;

	@Autowired
	private ReservationDao reservationDao;

	@RequestMapping("/userPanel")
	public String admin() {
		return "userPanel";

	}

	@RequestMapping("/userPanel/listaSzkolen")
	public String trainingUser(Model model) {
		List<Training> training = trainingDao.getAll();
		model.addAttribute("trainings", training);
		return "listaSzkolen";
	}

	@RequestMapping("/userPanel/detaleSzkolenia/{id}")
	public String viewTrainings(@PathVariable long id, Model model) throws IOException {
		Training training = trainingDao.findById(id);
		model.addAttribute(training);
		return "detaleSzkolenia";
	}

	@RequestMapping("/userPanel/detaleSzkolenia/{id}/zapisz")
	public String reserveUser(@PathVariable long id, Model model) {
		Reservation reserve = new Reservation();
		model.addAttribute("reserve", reserve);
		Training training = trainingDao.findById(id);
		model.addAttribute(training);
		// model.addAttribute(Training training);
		return "zapisz";
	}

	@PostMapping("/userPanel/detaleSzkolenia/{id}/zapisz")
	public String addReservation(@Valid Reservation reserve, BindingResult br) {

		if (br.hasErrors()) {
			return "zapisz";
		}
		this.reservationDao.save(reserve);
		// this.reservationDao.save(reserve);
		return "redirect:/userPanel";
	}

	@RequestMapping("/userPanel/historia")
	public String userHistory(Model model) {
		return "historia";
	}

	@RequestMapping("/userPanel/usun")
	public String deleteThisUser() {
		return "usun";
	}

}
