package br.com.fiap.profisearch.controller;

import java.util.List;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PagedResourcesAssembler;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.PagedModel;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.fiap.profisearch.domain.Professional;
import br.com.fiap.profisearch.service.ProfessionalService;

@RestController
@RequestMapping("/professionals")
public class ProfessionalController {
    
    private final ProfessionalService professionalService;

    ProfessionalController(ProfessionalService professionalService) {
        this.professionalService = professionalService;
    }

    @GetMapping
    public PagedModel<EntityModel<Professional>> getAllProfessionals(Pageable pageable, PagedResourcesAssembler<Professional> assembler) {
        var page = professionalService.getAllProfessionals(pageable);
        return assembler.toModel(page);
    }

    @GetMapping("{id}")
    public EntityModel<Professional> getProfessionalById(@PathVariable Long id) {
        var professional = professionalService.getProfessionalById(id);

        return EntityModel.of(professional,
                linkTo(methodOn(ProfessionalController.class).getProfessionalById(id)).withSelfRel().withTitle("Get this professional"),
                linkTo(methodOn(ProfessionalController.class).getAllProfessionals(null, null)).withRel("list").withTitle("List all professionals"),
                linkTo(methodOn(ProfessionalController.class).getNearbyProfessionals(professional.getLocation().getId())).withRel("nearby").withTitle("List other professionals in " + professional.getLocation().getNeighborhood())
        );
    }

    @GetMapping("/location/{id}")
    public List<Professional> getNearbyProfessionals(@PathVariable Long id) {
        return professionalService.getProfessionalsByLocationId(id);
    }
}
