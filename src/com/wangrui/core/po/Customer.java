package com.wangrui.core.po;
import java.io.Serializable;
import java.util.Date;
/**
 * 客户持久化类
 */
public class Customer implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer cust_id;          // 客户编号
	private String cust_name;         // 客户名称
	private String cust_linkman;     // 联系人
	private String cust_phone;       // 固定电话
	private String cust_mobile;      // 移动电话
	private String cust_zipcode;     // 邮政编码
	private String cust_address;     // 联系地址	
	private Integer start;            // 起始行
	private Integer rows;             // 所取行数
	
	public String getCust_zipcode() {
		return cust_zipcode;
	}
	public void setCust_zipcode(String cust_zipcode) {
		this.cust_zipcode = cust_zipcode;
	}
	public String getCust_address() {
		return cust_address;
	}
	public void setCust_address(String cust_address) {
		this.cust_address = cust_address;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getCust_id() {
		return cust_id;
	}
	public void setCust_id(Integer cust_id) {
		this.cust_id = cust_id;
	}
	public String getCust_name() {
		return cust_name;
	}
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}
	public String getCust_linkman() {
		return cust_linkman;
	}
	public void setCust_linkman(String cust_linkman) {
		this.cust_linkman = cust_linkman;
	}
	public String getCust_phone() {
		return cust_phone;
	}
	public void setCust_phone(String cust_phone) {
		this.cust_phone = cust_phone;
	}
	public String getCust_mobile() {
		return cust_mobile;
	}
	public void setCust_mobile(String cust_mobile) {
		this.cust_mobile = cust_mobile;
	}
}
