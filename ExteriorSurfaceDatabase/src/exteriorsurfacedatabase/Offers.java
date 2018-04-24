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
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

/**
 *
 * @author EVGA
 */
@Entity
@Table(name = "OFFERS", catalog = "amarti54db", schema = "")
@NamedQueries({
    @NamedQuery(name = "Offers.findAll", query = "SELECT o FROM Offers o")
    , @NamedQuery(name = "Offers.findByOfferJobId", query = "SELECT o FROM Offers o WHERE o.offersPK.offerJobId = :offerJobId")
    , @NamedQuery(name = "Offers.findByOfferServiceId", query = "SELECT o FROM Offers o WHERE o.offersPK.offerServiceId = :offerServiceId")
    , @NamedQuery(name = "Offers.findByDate", query = "SELECT o FROM Offers o WHERE o.date = :date")})
public class Offers implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected OffersPK offersPK;
    @Column(name = "DATE")
    @Temporal(TemporalType.DATE)
    private Date date;

    public Offers() {
    }

    public Offers(OffersPK offersPK) {
        this.offersPK = offersPK;
    }

    public Offers(String offerJobId, String offerServiceId) {
        this.offersPK = new OffersPK(offerJobId, offerServiceId);
    }

    public OffersPK getOffersPK() {
        return offersPK;
    }

    public void setOffersPK(OffersPK offersPK) {
        this.offersPK = offersPK;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        Date oldDate = this.date;
        this.date = date;
        changeSupport.firePropertyChange("date", oldDate, date);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (offersPK != null ? offersPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Offers)) {
            return false;
        }
        Offers other = (Offers) object;
        if ((this.offersPK == null && other.offersPK != null) || (this.offersPK != null && !this.offersPK.equals(other.offersPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "exteriorsurfacedatabase.Offers[ offersPK=" + offersPK + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
