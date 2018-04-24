/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exteriorsurfacedatabase;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author EVGA
 */
@Entity
@Table(name = "WORKS", catalog = "amarti54db", schema = "")
@NamedQueries({
    @NamedQuery(name = "Works.findAll", query = "SELECT w FROM Works w")
    , @NamedQuery(name = "Works.findByEmpId", query = "SELECT w FROM Works w WHERE w.worksPK.empId = :empId")
    , @NamedQuery(name = "Works.findByJobId", query = "SELECT w FROM Works w WHERE w.worksPK.jobId = :jobId")
    , @NamedQuery(name = "Works.findByHoursWorked", query = "SELECT w FROM Works w WHERE w.hoursWorked = :hoursWorked")})
public class Works implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected WorksPK worksPK;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "HOURS_WORKED")
    private Float hoursWorked;

    public Works() {
    }

    public Works(WorksPK worksPK) {
        this.worksPK = worksPK;
    }

    public Works(String empId, String jobId) {
        this.worksPK = new WorksPK(empId, jobId);
    }

    public WorksPK getWorksPK() {
        return worksPK;
    }

    public void setWorksPK(WorksPK worksPK) {
        this.worksPK = worksPK;
    }

    public Float getHoursWorked() {
        return hoursWorked;
    }

    public void setHoursWorked(Float hoursWorked) {
        Float oldHoursWorked = this.hoursWorked;
        this.hoursWorked = hoursWorked;
        changeSupport.firePropertyChange("hoursWorked", oldHoursWorked, hoursWorked);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (worksPK != null ? worksPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Works)) {
            return false;
        }
        Works other = (Works) object;
        if ((this.worksPK == null && other.worksPK != null) || (this.worksPK != null && !this.worksPK.equals(other.worksPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "exteriorsurfacedatabase.Works[ worksPK=" + worksPK + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
