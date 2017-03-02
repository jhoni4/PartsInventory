package nissan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nissan.dao.PartDao;
import nissan.model.Part;
import nissan.service.PartService;

@Service
public class PartServiceImpl  implements PartService{
	
	@Autowired
	private PartDao partsDao;

	public List<Part> getPartsList() {
		return partsDao.getPartsList();
	}

	public Part getPartsById(int partId) {
		return partsDao.getPartsById(partId);
	}

	public void addParts(Part part) {
		partsDao.addParts(part);
		
	}

	public void editParts(Part part) {
		partsDao.editParts(part);
		
	}

	public void deleteParts(Part part) {
		partsDao.deleteParts(part);
		
	}

	

}
