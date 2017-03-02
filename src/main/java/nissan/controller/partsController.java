package nissan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import nissan.model.Part;
import nissan.service.PartService;

@Controller
public class partsController {

	// @GetMapping("/parts")
	// public String parts(Model model) {
	// List<parts> partsList = new ArrayList<>();
	// partsList.add(new parts(22, "seats", "78232hy2", "white and black",
	// 200));
	// partsList.add(new parts(23, "wheels", "6232ghy2", "R16", 500));
	// partsList.add(new parts(24, "dashboard", "234bhy2", "leather", 400));
	// model.addAttribute("partsList", partsList);
	//
	// return "parts";
	// }
	@Autowired
	private PartService partService;

	@RequestMapping("/part")
	public String parts(Model model) {
		List<Part> partsList = partService.getPartsList();
		model.addAttribute("partsList", partsList);
		return "parts";
	}

	@RequestMapping(value="/part/addPart", method = RequestMethod.GET)
	public String addPart(Model model) {
		Part part = new Part();
		model.addAttribute("part", part);
		return "addPart";
	}

	
	@RequestMapping(value = "/part/addPart", method = RequestMethod.POST)
	public String addPart(@ModelAttribute("part") Part part, BindingResult result,
            HttpServletRequest request) {
		if (result.hasErrors()) {
			return "part";
		}
		partService.addParts(part);
		return "redirect:/part";
	}

	@GetMapping("/part/viewPart/{partId}")
	public String viewPart(@PathVariable int partId, Model model) {
		Part part = partService.getPartsById(partId);
		model.addAttribute("part", part);
		return "viewPart";
	}
	@GetMapping("/part/editPart/{partId}")
	public String editPart(@PathVariable("partId") int partId, Model model) {
		Part part = partService.getPartsById(partId);
		model.addAttribute("part", part);
		return "editPart";
	}
	@RequestMapping(value="/part/editPart", method= RequestMethod.POST)
	public String editPart(@ModelAttribute Part part, BindingResult result) {
		partService.editParts(part);
		
		return "redirect:/part";
	}
	

	@GetMapping("/part/deletePart/{partId}")
	public String deletePart(@PathVariable("partId") int partId, Model model) {
		partService.deleteParts(partService.getPartsById(partId));
		return "redirect:/part";

	}

}
