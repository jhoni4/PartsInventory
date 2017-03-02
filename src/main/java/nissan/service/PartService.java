package nissan.service;

import java.util.List;


import nissan.model.Part;

public interface PartService {

	List<Part> getPartsList();
	
	Part getPartsById(int partId);

	void addParts(Part part);

	void editParts(Part part);

	void deleteParts(Part part);


}
