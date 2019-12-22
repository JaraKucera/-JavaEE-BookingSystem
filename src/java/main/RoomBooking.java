/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author JKTP8
 */
@Entity
@Table(name = "RoomBooking")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "RoomBooking.findAll", query = "SELECT r FROM RoomBooking r")
    , @NamedQuery(name = "RoomBooking.findByUserID", query = "SELECT r FROM RoomBooking r WHERE r.userID = :userID")
    , @NamedQuery(name = "RoomBooking.findByRoomNumber", query = "SELECT r FROM RoomBooking r WHERE r.roomNumber = :roomNumber")
    , @NamedQuery(name = "RoomBooking.findByArrivalDate", query = "SELECT r FROM RoomBooking r WHERE r.arrivalDate = :arrivalDate")
    , @NamedQuery(name = "RoomBooking.findByDepatureDate", query = "SELECT r FROM RoomBooking r WHERE r.depatureDate = :depatureDate")
    , @NamedQuery(name = "RoomBooking.findByDescription", query = "SELECT r FROM RoomBooking r WHERE r.description = :description")})
public class RoomBooking implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "UserID")
    private Integer userID;
    @Column(name = "RoomNumber")
    private Integer roomNumber;
    @Size(max = 50)
    @Column(name = "ArrivalDate")
    private String arrivalDate;
    @Size(max = 50)
    @Column(name = "DepatureDate")
    private String depatureDate;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "Description")
    private String description;

    public RoomBooking() {
    }

    public RoomBooking(Integer userID) {
        this.userID = userID;
    }

    public RoomBooking(Integer userID, String description) {
        this.userID = userID;
        this.description = description;
    }

    public Integer getUserID() {
        return userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }

    public Integer getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(Integer roomNumber) {
        this.roomNumber = roomNumber;
    }

    public String getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(String arrivalDate) {
        this.arrivalDate = arrivalDate;
    }

    public String getDepatureDate() {
        return depatureDate;
    }

    public void setDepatureDate(String depatureDate) {
        this.depatureDate = depatureDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userID != null ? userID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RoomBooking)) {
            return false;
        }
        RoomBooking other = (RoomBooking) object;
        if ((this.userID == null && other.userID != null) || (this.userID != null && !this.userID.equals(other.userID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "main.RoomBooking[ userID=" + userID + " ]";
    }
    
}
