package br.com.fiap.profisearch.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.fiap.profisearch.domain.Professional;
import br.com.fiap.profisearch.repository.ProfessionalRepository;
import jakarta.persistence.EntityNotFoundException;

@Service
public class ProfessionalService {
    
    private final ProfessionalRepository professionalRepository;

    ProfessionalService(ProfessionalRepository professionalRepository) {
        this.professionalRepository = professionalRepository;
    }

    public Page<Professional> getAllProfessionals(Pageable pageable) {
        return professionalRepository.findAll(pageable);
    }

    public Professional getProfessionalById(Long id) {
        return professionalRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Professional not found"));
    }

    public List<Professional> getProfessionalsByLocationId(Long id) {
        // TODO: Implement a proper query to fetch professionals by location ID
        return professionalRepository.findAll().stream()
                .filter(professional -> professional.getLocation().getId().equals(id))
                .toList();
    }
}
