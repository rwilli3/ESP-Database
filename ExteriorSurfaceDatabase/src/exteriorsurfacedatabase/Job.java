/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exteriorsurfacedatabase;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author EVGA
 */
@Entity
@Table(name = "JOB", catalog = "amarti54db", schema = "")
@NamedQueries({
    @NamedQuery(name = "Job.findAll", query = "SELECT j FROM Job j")
    , @NamedQuery(name = "Job.findByJobId", query = "SELECT j FROM Job j WHERE j.jobId = :jobId")
    , @NamedQuery(name = "Job.findByTotalBill", query = "SELECT j FROM Job j WHERE j.totalBill = :totalBill")
    , @NamedQuery(name = "Job.findBySupplyCost", query = "SELECT j FROM Job j WHERE j.supplyCost = :supplyCost")
    , @NamedQuery(name = "Job.findByMilesTraveled", query = "SELECT j FROM Job j WHERE j.milesTraveled = :milesTraveled")})
public class Job implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "JOB_ID")
    private String jobId;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "TOTAL_BILL")
    private BigDecimal totalBill;
    @Column(name = "SUPPLY_COST")
    private BigDecimal supplyCost;
    @Column(name = "MILES_TRAVELED")
    private Integer milesTraveled;

    public Job() {
    }

    public Job(String jobId) {
        this.jobId = jobId;
    }

    public String getJobId() {
        return jobId;
    }

    public void setJobId(String jobId) {
        String oldJobId = this.jobId;
        this.jobId = jobId;
        changeSupport.firePropertyChange("jobId", oldJobId, jobId);
    }

    public BigDecimal getTotalBill() {
        return totalBill;
    }

    public void setTotalBill(BigDecimal totalBill) {
        BigDecimal oldTotalBill = this.totalBill;
        this.totalBill = totalBill;
        changeSupport.firePropertyChange("totalBill", oldTotalBill, totalBill);
    }

    public BigDecimal getSupplyCost() {
        return supplyCost;
    }

    public void setSupplyCost(BigDecimal supplyCost) {
        BigDecimal oldSupplyCost = this.supplyCost;
        this.supplyCost = supplyCost;
        changeSupport.firePropertyChange("supplyCost", oldSupplyCost, supplyCost);
    }

    public Integer getMilesTraveled() {
        return milesTraveled;
    }

    public void setMilesTraveled(Integer milesTraveled) {
        Integer oldMilesTraveled = this.milesTraveled;
        this.milesTraveled = milesTraveled;
        changeSupport.firePropertyChange("milesTraveled", oldMilesTraveled, milesTraveled);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (jobId != null ? jobId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Job)) {
            return false;
        }
        Job other = (Job) object;
        if ((this.jobId == null && other.jobId != null) || (this.jobId != null && !this.jobId.equals(other.jobId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "exteriorsurfacedatabase.Job[ jobId=" + jobId + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
