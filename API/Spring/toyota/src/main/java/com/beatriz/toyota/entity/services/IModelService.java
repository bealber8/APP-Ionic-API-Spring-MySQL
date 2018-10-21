package com.beatriz.toyota.entity.services;

import java.util.List;

import com.beatriz.toyota.entity.models.Accessories;
import com.beatriz.toyota.entity.models.Model;

public interface IModelService {
	public Model getModel(long id);
	public List<Model> getAllModels();
	public void post(Model model);
	public void put(Model model, long id);
	public void deleteModel(long id);
	public Accessories getAccessory(long id);
	public List<Accessories> getAllAccessories();
	public void post(Accessories accessory);
	public void put(Accessories accessory, long id);
	public void deleteAccessory(long id);
}
