package com.entity;

public class Salarygs {
		private int id;
		private String empid;
		private String salary;
		private String hra;
		private String special;
		private String conveyance;
		private String overtime;
		private String leave;
		private String esi;
		private String epf;
		private String tax;
		private String tds;
		private String insurance;
		private String adv;
		
		public Salarygs() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Salarygs(String empid, String salary, String hra, String special, String conveyance, String overtime,
				String leave, String esi, String epf, String tax, String tds, String insurance, String adv) {
			super();
			this.empid = empid;
			this.salary = salary;
			this.hra = hra;
			this.special = special;
			this.conveyance = conveyance;
			this.overtime = overtime;
			this.leave = leave;
			this.esi = esi;
			this.epf = epf;
			this.tax = tax;
			this.tds = tds;
			this.insurance = insurance;
			this.adv = adv;
		}

		public Salarygs(int id, String empid, String salary, String hra, String special, String conveyance, String overtime,
				String leave, String esi, String epf, String tax, String tds, String insurance, String adv) {
			super();
			this.id = id;
			this.empid = empid;
			this.salary = salary;
			this.hra = hra;
			this.special = special;
			this.conveyance = conveyance;
			this.overtime = overtime;
			this.leave = leave;
			this.esi = esi;
			this.epf = epf;
			this.tax = tax;
			this.tds = tds;
			this.insurance = insurance;
			this.adv = adv;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getEmpid() {
			return empid;
		}

		public void setEmpid(String empid) {
			this.empid = empid;
		}

		public String getSalary() {
			return salary;
		}

		public void setSalary(String salary) {
			this.salary = salary;
		}

		public String getHra() {
			return hra;
		}

		public void setHra(String hra) {
			this.hra = hra;
		}

		public String getSpecial() {
			return special;
		}

		public void setSpecial(String special) {
			this.special = special;
		}

		public String getConveyance() {
			return conveyance;
		}

		public void setConveyance(String conveyance) {
			this.conveyance = conveyance;
		}

		public String getOvertime() {
			return overtime;
		}

		public void setOvertime(String overtime) {
			this.overtime = overtime;
		}

		public String getLeave() {
			return leave;
		}

		public void setLeave(String leave) {
			this.leave = leave;
		}

		public String getEsi() {
			return esi;
		}

		public void setEsi(String esi) {
			this.esi = esi;
		}

		public String getEpf() {
			return epf;
		}

		public void setEpf(String epf) {
			this.epf = epf;
		}

		public String getTax() {
			return tax;
		}

		public void setTax(String tax) {
			this.tax = tax;
		}

		public String getTds() {
			return tds;
		}

		public void setTds(String tds) {
			this.tds = tds;
		}

		public String getInsurance() {
			return insurance;
		}

		public void setInsurance(String insurance) {
			this.insurance = insurance;
		}

		public String getAdv() {
			return adv;
		}

		public void setAdv(String adv) {
			this.adv = adv;
		}

		@Override
		public String toString() {
			return "Salarygs [id=" + id + ", empid=" + empid + ", salary=" + salary + ", hra=" + hra + ", special="
					+ special + ", conveyance=" + conveyance + ", overtime=" + overtime + ", leave=" + leave + ", esi="
					+ esi + ", epf=" + epf + ", tax=" + tax + ", tds=" + tds + ", insurance=" + insurance + ", adv="
					+ adv + "]";
		}

		
		
		
	

	
	
}
