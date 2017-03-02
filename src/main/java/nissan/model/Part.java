package nissan.model;

import java.io.Serializable;

import javax.persistence.*;
import javax.persistence.GeneratedValue;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Part implements Serializable {

	
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1812460526072272097L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int partId;
	
	@NotEmpty (message = "The part name must not be null.")
	private String name;
	private String modelNumber;
	private String description;
	
	@Min(value = 0, message = "The part quantity must not be less than zero.")
	private int quantity;

	@OneToOne
	@JoinColumn(name = "employeeId")
	private Employee employee;
	
	public Part() {}

	public int getPartId() {
		return partId;
	}

	public void setPartId(int partId) {
		this.partId = partId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getModelNumber() {
		return modelNumber;
	}

	public void setModelNumber(String modelNumber) {
		this.modelNumber = modelNumber;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


}
