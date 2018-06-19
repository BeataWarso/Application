package pl.coderslab.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.dao.ReservationDao;
import pl.coderslab.dao.TrainingDao;
import pl.coderslab.dao.UserDao;
import pl.coderslab.entity.Reservation;
import pl.coderslab.entity.Training;
import pl.coderslab.entity.User;

@Controller
public class AdminController {
	@Autowired
	private TrainingDao trainingDao;

	@Autowired
	private UserDao userDao;

	@Autowired
	private ReservationDao reservationDao;

	@RequestMapping("/adminPanel")
	public String admin() {
		return "adminPanel";

	}

	@RequestMapping("/adminPanel/szkolenia")
	public String trainingAdmin(Model model) {
		List<Training> training = trainingDao.getAll();
		model.addAttribute("trainings", training);
		return "szkolenia";
	}

	@RequestMapping("/adminPanel/reservation")
	public String reservationAdmin(Model model) {
		List<Reservation> reservation = reservationDao.getAll();
		model.addAttribute("reservation", reservation);
		return "reservation";
	}

	@RequestMapping("/adminPanel/uzytkownicy")
	public String usersAdmin(Model model) {
		List<User> user = userDao.getAll();
		model.addAttribute("users", user);
		return "uzytkownicy";
	}

	@RequestMapping("/adminPanel/szkolenia/dodajSzkolenie")
	public String addTraining(Model model) {
		model.addAttribute("training", new Training());
		return "dodajSzkolenie";
	}

	@RequestMapping("/adminPanel/reservation/dodajRezerwacje")
	public String addReservation(Model model) {
		model.addAttribute("reservation", new Reservation());
		return "dodajRezerwacje";
	}

	@RequestMapping("/adminPanel/uzytkownicy/dodajUzytkownika")
	public String addUser(Model model) {
		model.addAttribute("user", new User());
		return "dodajUzytkownika";
	}

	@PostMapping("/adminPanel/szkolenia/dodajSzkolenie")
	public String formPost(@Valid Training training, BindingResult result) {
		if (result.hasErrors()) {
			return "dodajSzkolenie";
		}
		this.trainingDao.save(training);
		return "redirect:/adminPanel/szkolenia";
	}

	@PostMapping("/adminPanel/uzytkownicy/dodajUzytkownika")
	public String addUserPost(@Valid User user, BindingResult result) {

		if (result.hasErrors()) {
			return "dodajUzytkownika";
		}
		this.userDao.save(user);
		return "redirect:/adminPanel/uzytkownicy";
	}

	@PostMapping("/adminPanel/reservation/dodajRezerwacje")
	public String addReservationPost(@Valid Reservation reservation, BindingResult result) {

		if (result.hasErrors()) {
			return "dodajRezerwacje";
		}
		this.reservationDao.save(reservation);
		return "redirect:/adminPanel/reservation";
	}

	@GetMapping("/adminPanel/szkolenia/{id}/edytujSzkolenie")
	public String editTraining(@PathVariable long id, Model model) {
		Training training = this.trainingDao.findById(id);
		model.addAttribute("training", training);
		return "edytujSzkolenie";
	}

	@PostMapping("/adminPanel/szkolenia/{id}/edytujSzkolenie")
	public String editTraining(@Valid Training training, BindingResult result) {
		if (result.hasErrors()) {
			return "edytujSzkolenie";
		}
		this.trainingDao.update(training);
		return "redirect:/adminPanel/szkolenia";
	}

	@GetMapping("/adminPanel/reservation/{id}/edytujRezerwacje")
	public String editReservation(@PathVariable long id, Model model) {
		Reservation reservation = this.reservationDao.findById(id);
		model.addAttribute("reservation", reservation);
		return "edytujRezerwacje";
	}

	@PostMapping("/adminPanel/reservation/{id}/edytujRezerwacje")
	public String editReservationPost(@Valid Reservation reservation, BindingResult result) {
		if (result.hasErrors()) {
			return "edytujRezerwacje";
		}
		this.reservationDao.update(reservation);
		return "redirect:/adminPanel/reservation";
	}

	@GetMapping("/adminPanel/uzytkownicy/{id}/edytujUzytkownika")
	public String editUser(@PathVariable long id, Model model) {
		User user = this.userDao.findById(id);
		model.addAttribute("user", user);
		return "edytujUzytkownika";
	}

	@PostMapping("/adminPanel/uzytkownicy/{id}/edytujUzytkownika")
	public String editUSerPost(@Valid User user, BindingResult result) {
		if (result.hasErrors()) {
			return "edytujUzytkownika";
		}
		this.userDao.update(user);
		return "redirect:/adminPanel/uzytkownicy";
	}

	@GetMapping("/adminPanel/szkolenia/{id}/usunSzkolenie")
	public String del(@PathVariable long id) {
		Training training = this.trainingDao.findById(id);
		this.trainingDao.delete(training);
		return "redirect:/adminPanel/szkolenia";
	}

	@GetMapping("/adminPanel/reservation/{id}/usunRezerwacje")
	public String delReservation(@PathVariable long id) {
		Reservation reservation = this.reservationDao.findById(id);
		this.reservationDao.delete(reservation);
		return "redirect:/adminPanel/reservation";
	}

	@GetMapping("/adminPanel/uzytkownicy/{id}/usun")
	public String delUser(@PathVariable long id) {
		User user = this.userDao.findById(id);
		this.userDao.delete(user);
		return "redirect:/adminPanel/uzytkownicy";
	}

}
