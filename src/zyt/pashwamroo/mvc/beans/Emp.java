package zyt.pashwamroo.mvc.beans;

import java.util.Objects;

public class Emp {
		
	private int id;  
	private String name;  
	private float salary;  
	private String designation;  
	  
	public int getId() {  
	    return id;  
	}  
	public void setId(int id) {  
	    this.id = id;  
	}  
	public String getName() {  
	    return name;  
	}  
	public void setName(String name) {  
	    this.name = name;  
	}  
	public float getSalary() {  
	    return salary;  
	}  
	public void setSalary(float salary) {  
	    this.salary = salary;  
	}  
	public String getDesignation() {  
	    return designation;  
	}  
	public void setDesignation(String designation) {  
	    this.designation = designation;  
	}
	@Override
	public int hashCode() {
		return Objects.hash(designation, id, name, salary);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Emp other = (Emp) obj;
		return Objects.equals(designation, other.designation) && id == other.id && Objects.equals(name, other.name)
				&& Float.floatToIntBits(salary) == Float.floatToIntBits(other.salary);
	}  
	  

	

}
