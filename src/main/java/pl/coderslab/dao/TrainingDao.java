package pl.coderslab.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import pl.coderslab.entity.Training;

@Component
@Transactional
public class TrainingDao {
	@PersistenceContext
	EntityManager em;

	public void save(Training entity) {
		this.em.persist(entity);

	}

	public void update(Training entity) {
		this.em.merge(entity);
	}

	public Training findById(long id) {
		return this.em.find(Training.class, id);
	}

	public void delete(Training entity) {
		this.em.remove(this.em.contains(entity) ? entity : this.em.merge(entity));
	}

	public List<Training> getAll() {

		Query query = this.em.createQuery("SELECT e FROM Training e");
		return query.getResultList();
	}

}
