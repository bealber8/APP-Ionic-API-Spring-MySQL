package com.beatriz.toyota.controllers;

import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.beatriz.toyota.entity.models.Accessories;
import com.beatriz.toyota.entity.models.Model;

import com.beatriz.toyota.entity.services.IModelService;

@CrossOrigin(origins = {"*", "http://localhost:8080"})
@RestController
public class ModelController {

	@Autowired
	IModelService modelService;
	
	@GetMapping("/models")
	public List<Model> getAllModels(){
		return modelService.getAllModels();
	}
	
	@GetMapping("/model/{id}")
	public ResponseEntity<Model> getOne(@PathVariable(value = "id")long id){
		try {
            Model model = modelService.getModel(id);
            if (model != null) {
                return ResponseEntity.status(HttpStatus.OK).body(model);
            } else {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }

        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
		
	}
	
	@PostMapping("/model")
	public void add(Model model) {
		modelService.post(model);
	}
	
	@PutMapping("/model/{id}")
	public void update(Model model, @PathVariable(value = "id") long id) {
		modelService.put(model, id);
	}
	
	@DeleteMapping("/model/{id}")
	public void update(@PathVariable(value = "id") long id) {
		modelService.deleteModel(id);
	}
	
	@GetMapping("/accessories")
	public List<Accessories> getAllAccessories(){
		return modelService.getAllAccessories();
	}
	
	@GetMapping("/accessories/{id}")
	public ResponseEntity<Accessories> getOneAccessory(@PathVariable(value = "id")long id){
		try {
			Accessories accessory = modelService.getAccessory(id);
            if (accessory != null) {
                return ResponseEntity.status(HttpStatus.OK).body(accessory);
            } else {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }

        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
		
	}
	
	@PostMapping("/accessory")
	public void add(Accessories accessory) {
		modelService.post(accessory);
	}
	
	@PutMapping("/accessory/{id}")
	public void update(Accessories accessory, @PathVariable(value = "id") long id) {
		modelService.put(accessory, id);
	}
	
	@DeleteMapping("/accessory/{id}")
	public void updateAccessory(@PathVariable(value = "id") long id) {
		modelService.deleteAccessory(id);
	}
}
