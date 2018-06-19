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
import pl.coderslab.entity.Reservation;
import pl.coderslab.entity.Training;
import pl.coderslab.entity.User;

import pl.coderslab.repository.UserRepository;

@Controller
public class HomeController {
	@Autowired
	private TrainingDao trainingDao;

	@Autowired
	private ReservationDao reservationDao;

	@Autowired
	private ReservationDao reservationRepo;

	@RequestMapping("/")
	public String home(Model model) {
		List<Training> trainingList = trainingDao.getAll();
		model.addAttribute("trainings", trainingList);
		return "home";
	}

	@RequestMapping("/logg")
	public String admin() {
		return "logg";

	}

	@RequestMapping("/trainingList")
	public String viewTrainings() throws IOException {
		return "trainingList";
	}

	@RequestMapping("/viewTrainings/{id}")
	public String viewTrainingsId(@PathVariable long id, Model model) throws IOException {
		Training training = trainingDao.findById(id);
		model.addAttribute(training);
		return "viewTrainings";
	}

	@RequestMapping("/viewTrainings/{id}/zapisy")
	public String reserve(@PathVariable long id, Model model) {
		Reservation reserve = new Reservation();
		model.addAttribute("reserve", reserve);
		Training training = trainingDao.findById(id);
		model.addAttribute(training);
		// model.addAttribute(Training training);
		return "zapisy";
	}

	@PostMapping("/viewTrainings/{id}/zapisy")
	public String addReservation(@Valid Reservation reserve, BindingResult br) {

		if (br.hasErrors()) {
			return "zapisy";
		}

		this.reservationRepo.save(reserve);

		// this.reservationDao.save(reserve);
		return "redirect:/";
	}

}
