package pl.coderslab.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import pl.coderslab.entity.Reservation;

@Component
@Transactional
public class ReservationDao {
	@PersistenceContext
	EntityManager em;

	public void save(Reservation entity) {
		this.em.persist(entity);

	}

	public void update(Reservation entity) {
		this.em.merge(entity);
	}

	public Reservation findById(long id) {
		return this.em.find(Reservation.class, id);
	}

	public void delete(Reservation entity) {
		this.em.remove(this.em.contains(entity) ? entity : this.em.merge(entity));
	}

	public List<Reservation> getAll() {
		Query query = this.em.createQuery("SELECT e FROM Reservation e");
		return query.getResultList();
	}

}
