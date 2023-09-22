package com.demo.models;

import java.util.Date;
import java.util.List;

import javax.persistence.TemporalType;

import org.apache.catalina.ssi.SSIFlastmod;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.demo.entities.Bacsi;
import com.demo.entities.Lichkham;






public class BacSiModel {
	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
	
	public List<Bacsi> findAll() {
		List<Bacsi> bacsis = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			bacsis = session.createQuery("from Bacsi").getResultList();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			bacsis = null;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return bacsis;
	}
	
	public boolean create(Bacsi bacsi) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			session.save(bacsi);
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
	
	public boolean delete(Bacsi bacsi) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			session.delete(bacsi);
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
	
	public Bacsi find(int mabs) {
		Bacsi bacsi = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			bacsi = (Bacsi) session.createQuery("from Bacsi where mabs = :mabs")
					.setParameter("mabs", mabs)
					.getSingleResult();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			bacsi = null;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return bacsi;
	}
	
	public boolean update(Bacsi bacsi) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			session.update(bacsi);
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
	
	public List<Lichkham> findlichkham(int mabs) {
		List<Lichkham> lichkhams = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			lichkhams = session.createQuery("from Lichkham where mabs = :mabs").setParameter("mabs", mabs).getResultList();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			lichkhams = null;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return lichkhams;
	}
	
	public List<Lichkham> findbydaterange(Date date1, Date date2, int mabs) {
		List<Lichkham> lichkhams = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			// transaction bảo đảm xử lý toàn vẹn
			lichkhams = session.createQuery("from Lichkham where ngaykham >= :date1 and ngaykham <= :date2 and bacsi.mabs = :mabs")
					.setParameter("date1", date1, TemporalType.DATE).setParameter("date2", date2, TemporalType.DATE)
					.setParameter("mabs", mabs)
					.getResultList();
			// truy van theo tên class qua mapping
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			lichkhams = null;
			if (transaction != null) {
				transaction.rollback();

			}
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return lichkhams;
	}
	
	
}
