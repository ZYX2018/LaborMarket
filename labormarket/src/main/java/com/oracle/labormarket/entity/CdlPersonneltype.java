package com.oracle.labormarket.entity;

import java.math.BigDecimal;

/**
 * CdlPersonneltype entity. @author MyEclipse Persistence Tools
 */

public class CdlPersonneltype implements java.io.Serializable {

	// Fields

	private String cdId;
	private String cdName;
	private String cdAvailability;
	private BigDecimal cdIndex;

	// Constructors

	/** default constructor */
	public CdlPersonneltype() {
	}

	/** full constructor */
	public CdlPersonneltype(String cdName, String cdAvailability,
			BigDecimal cdIndex) {
		this.cdName = cdName;
		this.cdAvailability = cdAvailability;
		this.cdIndex = cdIndex;
	}

	// Property accessors

	public String getCdId() {
		return this.cdId;
	}

	public void setCdId(String cdId) {
		this.cdId = cdId;
	}

	public String getCdName() {
		return this.cdName;
	}

	public void setCdName(String cdName) {
		this.cdName = cdName;
	}

	public String getCdAvailability() {
		return this.cdAvailability;
	}

	public void setCdAvailability(String cdAvailability) {
		this.cdAvailability = cdAvailability;
	}

	public BigDecimal getCdIndex() {
		return this.cdIndex;
	}

	public void setCdIndex(BigDecimal cdIndex) {
		this.cdIndex = cdIndex;
	}

}