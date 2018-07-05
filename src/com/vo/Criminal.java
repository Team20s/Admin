package com.vo;

public class Criminal {
	private String kind;
	private int apart;
	private int pc;
	private int toilet;
	private int parking;
	private int school;
	private int subway;
	private int office;
	public Criminal(String kind, int apart, int pc, int toilet, int parking, int school, int subway, int office) {
		super();
		this.kind = kind;
		this.apart = apart;
		this.pc = pc;
		this.toilet = toilet;
		this.parking = parking;
		this.school = school;
		this.subway = subway;
		this.office = office;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public int getApart() {
		return apart;
	}
	public void setApart(int apart) {
		this.apart = apart;
	}
	public int getPc() {
		return pc;
	}
	public void setPc(int pc) {
		this.pc = pc;
	}
	public int getToilet() {
		return toilet;
	}
	public void setToilet(int toilet) {
		this.toilet = toilet;
	}
	public int getParking() {
		return parking;
	}
	public void setParking(int parking) {
		this.parking = parking;
	}
	public int getSchool() {
		return school;
	}
	public void setSchool(int school) {
		this.school = school;
	}
	public int getSubway() {
		return subway;
	}
	public void setSubway(int subway) {
		this.subway = subway;
	}
	public int getOffice() {
		return office;
	}
	public void setOffice(int office) {
		this.office = office;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + apart;
		result = prime * result + ((kind == null) ? 0 : kind.hashCode());
		result = prime * result + office;
		result = prime * result + parking;
		result = prime * result + pc;
		result = prime * result + school;
		result = prime * result + subway;
		result = prime * result + toilet;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Criminal other = (Criminal) obj;
		if (apart != other.apart)
			return false;
		if (kind == null) {
			if (other.kind != null)
				return false;
		} else if (!kind.equals(other.kind))
			return false;
		if (office != other.office)
			return false;
		if (parking != other.parking)
			return false;
		if (pc != other.pc)
			return false;
		if (school != other.school)
			return false;
		if (subway != other.subway)
			return false;
		if (toilet != other.toilet)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Climinal [kind=" + kind + ", apart=" + apart + ", pc=" + pc + ", toilet=" + toilet + ", parking="
				+ parking + ", school=" + school + ", subway=" + subway + ", office=" + office + "]";
	}
	
}
