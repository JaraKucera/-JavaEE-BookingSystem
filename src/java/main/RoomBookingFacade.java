/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author JKTP8
 */
@Stateless
public class RoomBookingFacade extends AbstractFacade<RoomBooking> {

    @PersistenceContext(unitName = "SoftwareEngLab3PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public RoomBookingFacade() {
        super(RoomBooking.class);
    }
    
}
