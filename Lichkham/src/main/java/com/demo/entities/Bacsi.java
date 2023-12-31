package com.demo.entities;
// Generated Aug 29, 2023, 5:41:03 PM by Hibernate Tools 4.3.6.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Bacsi generated by hbm2java
 */
@Entity
@Table(name = "bacsi")
public class Bacsi implements java.io.Serializable {

	private Integer mabs;
	private Khoa khoa;
	private String tenbs;
	private Date ngaysinh;
	private Set<Lichkham> lichkhams = new HashSet<Lichkham>(0);

	public Bacsi() {
	}

	public Bacsi(Khoa khoa, String tenbs, Date ngaysinh) {
		this.khoa = khoa;
		this.tenbs = tenbs;
		this.ngaysinh = ngaysinh;
	}

	public Bacsi(Khoa khoa, String tenbs, Date ngaysinh, Set<Lichkham> lichkhams) {
		this.khoa = khoa;
		this.tenbs = tenbs;
		this.ngaysinh = ngaysinh;
		this.lichkhams = lichkhams;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "mabs", unique = true, nullable = false)
	public Integer getMabs() {
		return this.mabs;
	}

	public void setMabs(Integer mabs) {
		this.mabs = mabs;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "makhoa", nullable = false)
	public Khoa getKhoa() {
		return this.khoa;
	}

	public void setKhoa(Khoa khoa) {
		this.khoa = khoa;
	}

	@Column(name = "tenbs", nullable = false, length = 250)
	public String getTenbs() {
		return this.tenbs;
	}

	public void setTenbs(String tenbs) {
		this.tenbs = tenbs;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "ngaysinh", nullable = false, length = 10)
	public Date getNgaysinh() {
		return this.ngaysinh;
	}

	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "bacsi")
	public Set<Lichkham> getLichkhams() {
		return this.lichkhams;
	}

	public void setLichkhams(Set<Lichkham> lichkhams) {
		this.lichkhams = lichkhams;
	}

}
