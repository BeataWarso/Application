package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.entity.UserRole;

public interface UserRolerRepository extends JpaRepository<UserRole, Long> {
}
