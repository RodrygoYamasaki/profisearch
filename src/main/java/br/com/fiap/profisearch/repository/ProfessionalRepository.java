package br.com.fiap.profisearch.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.fiap.profisearch.domain.Professional;

public interface ProfessionalRepository extends JpaRepository<Professional, Long>{
    
}
