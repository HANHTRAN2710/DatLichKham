package com.demo.models;

import java.util.List;

import org.apache.catalina.ssi.SSIFlastmod;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.demo.entities.Khoa;






public class KhoaModel {
	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
	
	public List<Khoa> findAll() {
		List<Khoa> khoas = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			khoas = session.createQuery("from Khoa").getResultList();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			khoas = null;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return khoas;
	}
	
	public boolean create(Khoa khoa) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			session.save(khoa);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return result;
	}
	
	public boolean delete(Khoa khoa) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			session.delete(khoa);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return result;
	}
	
	public Khoa find(int makhoa) {
		Khoa khoa = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			khoa = (Khoa) session.createQuery("from Khoa where makhoa = :makhoa")
					.setParameter("makhoa", makhoa)
					.getSingleResult();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			khoa = null;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return khoa;
	}
	
	public boolean update(Khoa khoa) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			session.update(khoa);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return result;
	}
	
	
	
	
}
