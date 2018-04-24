/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exteriorsurfacedatabase;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author EVGA
 */
@Embeddable
public class OffersPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "OFFER_JOB_ID")
    private String offerJobId;
    @Basic(optional = false)
    @Column(name = "OFFER_SERVICE_ID")
    private String offerServiceId;

    public OffersPK() {
    }

    public OffersPK(String offerJobId, String offerServiceId) {
        this.offerJobId = offerJobId;
        this.offerServiceId = offerServiceId;
    }

    public String getOfferJobId() {
        return offerJobId;
    }

    public void setOfferJobId(String offerJobId) {
        this.offerJobId = offerJobId;
    }

    public String getOfferServiceId() {
        return offerServiceId;
    }

    public void setOfferServiceId(String offerServiceId) {
        this.offerServiceId = offerServiceId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (offerJobId != null ? offerJobId.hashCode() : 0);
        hash += (offerServiceId != null ? offerServiceId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OffersPK)) {
            return false;
        }
        OffersPK other = (OffersPK) object;
        if ((this.offerJobId == null && other.offerJobId != null) || (this.offerJobId != null && !this.offerJobId.equals(other.offerJobId))) {
            return false;
        }
        if ((this.offerServiceId == null && other.offerServiceId != null) || (this.offerServiceId != null && !this.offerServiceId.equals(other.offerServiceId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "exteriorsurfacedatabase.OffersPK[ offerJobId=" + offerJobId + ", offerServiceId=" + offerServiceId + " ]";
    }
    
}
