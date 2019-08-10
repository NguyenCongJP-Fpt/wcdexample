package com.examwcd.service;

import com.examwcd.entity.Phone;
import com.examwcd.util.HibernateUtil;
import org.hibernate.Session;

import java.util.logging.Level;
import java.util.logging.Logger;

public class PhoneService {

    private static Logger LOGGER = Logger.getLogger(PhoneService.class.getSimpleName());

    public boolean saveOrUpdate(Phone phone) {
        LOGGER.log(Level.INFO, String.format("Try to save phone with id %s", phone.getId()));
        try (Session session = HibernateUtil.getSession()) {
            session.beginTransaction();
            session.saveOrUpdate(phone);
            session.getTransaction().commit();
            LOGGER.log(Level.INFO, String.format("Save success!"));
            return true;
        } catch (Exception ex) {
            LOGGER.log(Level.SEVERE, String.format("Error when save phone with id %s", phone.getId()), ex);
        }
        return false;
    }
}
