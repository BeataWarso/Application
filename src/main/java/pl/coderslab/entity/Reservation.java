package pl.coderslab.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.pl.NIP;

@Entity
@Table(name = "reservation")
public class Reservation {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private String training_id;

	private String trainingTitle;;

	@NotBlank
	private String name;
	@NotBlank
	private String surname;
	@NotBlank
	private String nameOfFirm;
	private String address;
	@NIP
	private String nip;

	@NotNull
	private long howMany;
	@NotBlank
	private String participants;

	private double price;

	private String place;

	public Reservation() {

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

	public String getTrainingTitle() {
		return trainingTitle;
	}

	public void setTrainingTitle(String trainingTitle) {
		this.trainingTitle = trainingTitle;
	}

	public String getParticipants() {
		return participants;
	}

	public void setParticipants(String participants) {
		this.participants = participants;
	}

	public String getNameOfFirm() {
		return nameOfFirm;
	}

	public void setNameOfFirm(String nameOfFirm) {
		this.nameOfFirm = nameOfFirm;
	}

	public String getNip() {
		return nip;
	}

	public void setNip(String nip) {
		this.nip = nip;
	}

	public long getHowMany() {
		return howMany;
	}

	public void setHowMany(long howMany) {
		this.howMany = howMany;
	}

	public String getTraining_id() {
		return training_id;
	}

	public void setTraining_id(String training_id) {
		this.training_id = training_id;
	}

	public long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Reservation(long id, String training_id, String name, String surname, String nameOfFirm, String address,
			String nip, long howMany, String participants) {
		super();
		this.id = id;
		this.training_id = training_id;
		this.name = name;
		this.surname = surname;
		this.nameOfFirm = nameOfFirm;
		this.address = address;
		this.nip = nip;
		this.howMany = howMany;
		this.participants = participants;
	}

	public Reservation(String training_id, String name, String surname, String nameOfFirm, String address, String nip,
			long howMany, String participants) {
		super();
		this.training_id = training_id;
		this.name = name;
		this.surname = surname;
		this.nameOfFirm = nameOfFirm;
		this.address = address;
		this.nip = nip;
		this.howMany = howMany;
		this.participants = participants;
	}

}
