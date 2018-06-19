package pl.coderslab.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "training")
public class Training {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@NotBlank
	private String title;

	@NotBlank
	private String presenter;

	@NotBlank
	private String presenterDetails;

	private String program;

	private String date;

	private String reservation;

	@NotBlank
	private String place;

	private double price;
	private String details;

	public Training() {

	}

	public String getReservation() {
		return reservation;
	}

	public void setReservation(String reservation) {
		this.reservation = reservation;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPresenter() {
		return presenter;
	}

	public void setPresenter(String presenter) {
		this.presenter = presenter;
	}

	public String getPresenterDetails() {
		return presenterDetails;
	}

	public void setPresenterDetails(String presenterDetails) {
		this.presenterDetails = presenterDetails;
	}

	public String getProgram() {
		return program;
	}

	public void setProgram(String program) {
		this.program = program;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public Training(String title, String presenter, String presenterDetails, String program, String date, String place,
			double price, String details) {
		super();
		this.title = title;
		this.presenter = presenter;
		this.presenterDetails = presenterDetails;
		this.program = program;
		this.date = date;
		this.place = place;
		this.price = price;
		this.details = details;
	}

	public Training(long id, String title, String presenter, String presenterDetails, String program, String date,
			String place, double price, String details) {
		super();
		this.id = id;
		this.title = title;
		this.presenter = presenter;
		this.presenterDetails = presenterDetails;
		this.program = program;
		this.date = date;
		this.place = place;
		this.price = price;
		this.details = details;
	}

}
