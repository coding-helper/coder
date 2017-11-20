package org.pplm.gadgets.coder.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Where;

@Entity
@Table(name = "func")
public class Func extends Base {

	@Column(columnDefinition = "BIGINT(20)")
	private String pid;
	@Column(length = 128)
	private String label;
	@Column(length = 128)
	private String name;
	@Column(length = 128)
	private String relaAttr;
	
	@Column(length = 255)
	private String remark;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="fid")
	@Where(clause="delete_flag = 0")
	private List<Attr> attrs;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="fid")
	@Where(clause="delete_flag = 0")
	private List<Opt> opts;

	public Func() {
		super();
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRelaAttr() {
		return relaAttr;
	}

	public void setRelaAttr(String relaAttr) {
		this.relaAttr = relaAttr;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public List<Attr> getAttrs() {
		return attrs;
	}

	public void setAttrs(List<Attr> attrs) {
		this.attrs = attrs;
	}

	public List<Opt> getOpts() {
		return opts;
	}

	public void setOpts(List<Opt> opts) {
		this.opts = opts;
	}

}
