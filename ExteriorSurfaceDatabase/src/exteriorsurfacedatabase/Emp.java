/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exteriorsurfacedatabase;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

/**
 *
 * @author EVGA
 */
@Entity
@Table(name = "EMP", catalog = "amarti54db", schema = "")
@NamedQueries({
    @NamedQuery(name = "Emp.findAll", query = "SELECT e FROM Emp e")
    , @NamedQuery(name = "Emp.findByEmpId", query = "SELECT e FROM Emp e WHERE e.empId = :empId")
    , @NamedQuery(name = "Emp.findBySchedule", query = "SELECT e FROM Emp e WHERE e.schedule = :schedule")
    , @NamedQuery(name = "Emp.findBySsn", query = "SELECT e FROM Emp e WHERE e.ssn = :ssn")
    , @NamedQuery(name = "Emp.findByAddress", query = "SELECT e FROM Emp e WHERE e.address = :address")
    , @NamedQuery(name = "Emp.findByFname", query = "SELECT e FROM Emp e WHERE e.fname = :fname")
    , @NamedQuery(name = "Emp.findByLname", query = "SELECT e FROM Emp e WHERE e.lname = :lname")
    , @NamedQuery(name = "Emp.findByAttribute", query = "SELECT e FROM Emp e WHERE e.attribute = :attribute")
    , @NamedQuery(name = "Emp.findByDob", query = "SELECT e FROM Emp e WHERE e.dob = :dob")
    , @NamedQuery(name = "Emp.findBySex", query = "SELECT e FROM Emp e WHERE e.sex = :sex")
    , @NamedQuery(name = "Emp.findByPhoneNum", query = "SELECT e FROM Emp e WHERE e.phoneNum = :phoneNum")})
public class Emp implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "EMP_ID")
    private String empId;
    @Column(name = "SCHEDULE")
    private String schedule;
    @Column(name = "SSN")
    private String ssn;
    @Column(name = "ADDRESS")
    private String address;
    @Column(name = "FNAME")
    private String fname;
    @Column(name = "LNAME")
    private String lname;
    @Column(name = "ATTRIBUTE")
    private String attribute;
    @Column(name = "DOB")
    @Temporal(TemporalType.DATE)
    private Date dob;
    @Column(name = "SEX")
    private String sex;
    @Column(name = "PHONE_NUM")
    private String phoneNum;
    @OneToMany(mappedBy = "superempId")
    private List<Emp> empList;
    @JoinColumn(name = "SUPEREMP_ID", referencedColumnName = "EMP_ID")
    @ManyToOne
    private Emp superempId;

    public Emp() {
    }

    public Emp(String empId) {
        this.empId = empId;
    }

    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        String oldEmpId = this.empId;
        this.empId = empId;
        changeSupport.firePropertyChange("empId", oldEmpId, empId);
    }

    public String getSchedule() {
        return schedule;
    }

    public void setSchedule(String schedule) {
        String oldSchedule = this.schedule;
        this.schedule = schedule;
        changeSupport.firePropertyChange("schedule", oldSchedule, schedule);
    }

    public String getSsn() {
        return ssn;
    }

    public void setSsn(String ssn) {
        String oldSsn = this.ssn;
        this.ssn = ssn;
        changeSupport.firePropertyChange("ssn", oldSsn, ssn);
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        String oldAddress = this.address;
        this.address = address;
        changeSupport.firePropertyChange("address", oldAddress, address);
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        String oldFname = this.fname;
        this.fname = fname;
        changeSupport.firePropertyChange("fname", oldFname, fname);
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        String oldLname = this.lname;
        this.lname = lname;
        changeSupport.firePropertyChange("lname", oldLname, lname);
    }

    public String getAttribute() {
        return attribute;
    }

    public void setAttribute(String attribute) {
        String oldAttribute = this.attribute;
        this.attribute = attribute;
        changeSupport.firePropertyChange("attribute", oldAttribute, attribute);
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        Date oldDob = this.dob;
        this.dob = dob;
        changeSupport.firePropertyChange("dob", oldDob, dob);
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        String oldSex = this.sex;
        this.sex = sex;
        changeSupport.firePropertyChange("sex", oldSex, sex);
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        String oldPhoneNum = this.phoneNum;
        this.phoneNum = phoneNum;
        changeSupport.firePropertyChange("phoneNum", oldPhoneNum, phoneNum);
    }

    public List<Emp> getEmpList() {
        return empList;
    }

    public void setEmpList(List<Emp> empList) {
        this.empList = empList;
    }

    public Emp getSuperempId() {
        return superempId;
    }

    public void setSuperempId(Emp superempId) {
        Emp oldSuperempId = this.superempId;
        this.superempId = superempId;
        changeSupport.firePropertyChange("superempId", oldSuperempId, superempId);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (empId != null ? empId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Emp)) {
            return false;
        }
        Emp other = (Emp) object;
        if ((this.empId == null && other.empId != null) || (this.empId != null && !this.empId.equals(other.empId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "exteriorsurfacedatabase.Emp[ empId=" + empId + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
