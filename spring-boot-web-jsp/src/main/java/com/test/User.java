/**
 * 
 */
package com.test;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

/**
 * @author Fatih Totrakanlı
 *
 */

@Entity							//Proje oluşturulurken Üyeler için JPA ile standart entity modeli oluşturulmuştur.
public class User {				//Projede H2 DB kullanılmıştır. H2 db bir memory db olduğu için sunucu durdurulduğunda veriler gidecektir.

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String deviceType;
	private String fqnld;
	private String featurename;
	private String featurestatus;
	private String fiber;
	private String portstatus;
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	
	public String getDeviceType() {
		return deviceType;
	}
	public void setDeviceType(String deviceType) {
		this.deviceType = deviceType;
	}
	public String getFqnld() {
		return fqnld;
	}
	public void setFqnld(String fqnld) {
		this.fqnld = fqnld;
	}
	public String getFeaturename() {
		return featurename;
	}
	public void setFeaturename(String featurename) {
		this.featurename = featurename;
	}
	public String getFeaturestatus() {
		return featurestatus;
	}
	public void setFeaturestatus(String featurestatus) {
		this.featurestatus = featurestatus;
	}
	public String getFiber() {
		return fiber;
	}
	public void setFiber(String fiber) {
		this.fiber = fiber;
	}
	public String getPortstatus() {
		return portstatus;
	}
	public void setPortstatus(String portstatus) {
		this.portstatus = portstatus;
	}
	public User() {
		super();
	}
	public User(long id, String deviceType, String fqnld, String featurename, String featurestatus, String fiber,
			String portstatus) {
		super();
		this.id = id;
		this.deviceType = deviceType;
		this.fqnld = fqnld;
		this.featurename = featurename;
		this.featurestatus = featurestatus;
		this.fiber = fiber;
		this.portstatus = portstatus;
	}
	
	
	
}
