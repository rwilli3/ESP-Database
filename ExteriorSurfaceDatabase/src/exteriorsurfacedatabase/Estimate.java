/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exteriorsurfacedatabase;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
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
@Table(name = "ESTIMATE", catalog = "amarti54db", schema = "")
@NamedQueries({
    @NamedQuery(name = "Estimate.findAll", query = "SELECT e FROM Estimate e")
    , @NamedQuery(name = "Estimate.findByEstimateId", query = "SELECT e FROM Estimate e WHERE e.estimateId = :estimateId")
    , @NamedQuery(name = "Estimate.findBySquareFootage", query = "SELECT e FROM Estimate e WHERE e.squareFootage = :squareFootage")
    , @NamedQuery(name = "Estimate.findBySurfaceType", query = "SELECT e FROM Estimate e WHERE e.surfaceType = :surfaceType")
    , @NamedQuery(name = "Estimate.findByDiscounts", query = "SELECT e FROM Estimate e WHERE e.discounts = :discounts")
    , @NamedQuery(name = "Estimate.findByCustId", query = "SELECT e FROM Estimate e WHERE e.custId = :custId")
    , @NamedQuery(name = "Estimate.findByJId", query = "SELECT e FROM Estimate e WHERE e.jId = :jId")
    , @NamedQuery(name = "Estimate.findByServId", query = "SELECT e FROM Estimate e WHERE e.servId = :servId")})
public class Estimate implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ESTIMATE_ID")
    private String estimateId;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "SQUARE_FOOTAGE")
    private Float squareFootage;
    @Column(name = "SURFACE_TYPE")
    private String surfaceType;
    @Column(name = "DISCOUNTS")
    private String discounts;
    @Column(name = "CUST_ID")
    private String custId;
    @Column(name = "J_ID")
    private String jId;
    @Column(name = "SERV_ID")
    private String servId;

    public Estimate() {
    }

    public Estimate(String estimateId) {
        this.estimateId = estimateId;
    }

    public String getEstimateId() {
        return estimateId;
    }

    public void setEstimateId(String estimateId) {
        String oldEstimateId = this.estimateId;
        this.estimateId = estimateId;
        changeSupport.firePropertyChange("estimateId", oldEstimateId, estimateId);
    }

    public Float getSquareFootage() {
        return squareFootage;
    }

    public void setSquareFootage(Float squareFootage) {
        Float oldSquareFootage = this.squareFootage;
        this.squareFootage = squareFootage;
        changeSupport.firePropertyChange("squareFootage", oldSquareFootage, squareFootage);
    }

    public String getSurfaceType() {
        return surfaceType;
    }

    public void setSurfaceType(String surfaceType) {
        String oldSurfaceType = this.surfaceType;
        this.surfaceType = surfaceType;
        changeSupport.firePropertyChange("surfaceType", oldSurfaceType, surfaceType);
    }

    public String getDiscounts() {
        return discounts;
    }

    public void setDiscounts(String discounts) {
        String oldDiscounts = this.discounts;
        this.discounts = discounts;
        changeSupport.firePropertyChange("discounts", oldDiscounts, discounts);
    }

    public String getCustId() {
        return custId;
    }

    public void setCustId(String custId) {
        String oldCustId = this.custId;
        this.custId = custId;
        changeSupport.firePropertyChange("custId", oldCustId, custId);
    }

    public String getJId() {
        return jId;
    }

    public void setJId(String jId) {
        String oldJId = this.jId;
        this.jId = jId;
        changeSupport.firePropertyChange("JId", oldJId, jId);
    }

    public String getServId() {
        return servId;
    }

    public void setServId(String servId) {
        String oldServId = this.servId;
        this.servId = servId;
        changeSupport.firePropertyChange("servId", oldServId, servId);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (estimateId != null ? estimateId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Estimate)) {
            return false;
        }
        Estimate other = (Estimate) object;
        if ((this.estimateId == null && other.estimateId != null) || (this.estimateId != null && !this.estimateId.equals(other.estimateId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "exteriorsurfacedatabase.Estimate[ estimateId=" + estimateId + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
