package login;

import java.util.*;
import org.apache.struts.action.ActionForm;
 
@SuppressWarnings("serial")
public class ModelForm extends ActionForm {
 
    private int modelNo;
	private String modelName;
    private double price;
    private String type;
    private int mileage;
    private int seat;
    private float capacity;
    
    private ArrayList<ModelForm> modelsList = new ArrayList<ModelForm>();

	public int getModelNo() {
		return modelNo;
	}

	public void setModelNo(int modelNo) {
		this.modelNo = modelNo;
	}
    public String getModelName() {
		return modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public float getCapacity() {
		return capacity;
	}

	public void setCapacity(float capacity) {
		this.capacity = capacity;
	}

	public ArrayList<ModelForm> getModelsList() {
		return modelsList;
	}

	public void setModelsList(ArrayList<ModelForm> modelsList) {
		this.modelsList = modelsList;
	}
}
