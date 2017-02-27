package nissan.dao;

import java.util.List;

import nissan.model.Part;

public interface PartDao {

	List<Part> getPartsList();

	Part getPartsById(int partId);

	void addParts(Part part);

	void editParts(Part part);

	void deleteParts(Part part);

}
