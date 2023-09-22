package com.demo.models;

import java.util.Date;
import java.util.List;

import javax.persistence.TemporalType;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.mindrot.jbcrypt.BCrypt;

import com.demo.entities.Bacsi;
import com.demo.entities.Benhnhan;
import com.demo.entities.Lichkham;






public class BenhNhanModel {
	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
	
	public boolean createlichkham(Lichkham lichkham) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			session.save(lichkham);
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

	
	public Benhnhan login(String tenbn, String password) {
		Benhnhan benhnhan = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			

			//xu ly code HQL
			benhnhan = (Benhnhan) session.createQuery("from Benhnhan where tenbn = :tenbn")
					.setParameter("tenbn", tenbn)
					.getSingleResult();
			if(benhnhan!=null && password.equalsIgnoreCase(benhnhan.getPassword()))
			{
			transaction.commit();
			return benhnhan;
			}
			else
				{
				benhnhan=null;
				transaction.commit();
				}

		} catch (Exception e) {
			e.printStackTrace();
			benhnhan = null;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return benhnhan;
	}
	
	public List<Bacsi> findbs(int makhoa) {
		List<Bacsi> doctors = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			doctors = session.createQuery("from Bacsi where makhoa = :makhoa").setParameter("makhoa", makhoa).getResultList();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			doctors = null;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return doctors;
	}
	
	public List<Benhnhan> findAll() {
		List<Benhnhan> benhnhans = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			benhnhans = session.createQuery("from Benhnhan").getResultList();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			benhnhans = null;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return benhnhans;
	}
	
	public List<Lichkham> findbydaterange(Date date1, Date date2, int mabs) {
		List<Lichkham> lichkhams = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			// transaction bảo đảm xử lý toàn vẹn
			lichkhams = session.createQuery("from Lichkham where ngaykham >= :date1 and ngaykham<= :date2 and bacsi.mabs = :mabs")
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
	
	public boolean create(Benhnhan benhnhan) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			session.save(benhnhan);
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
	
	public boolean dangkykham(Lichkham lichkham) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			session.save(lichkham);
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
	
	
	public Benhnhan find(int mabn) {
		Benhnhan benhnhan = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			benhnhan = (Benhnhan) session.createQuery("from Benhnhan where mabn = :mabn")
					.setParameter("mabn", mabn)
					.getSingleResult();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			benhnhan = null;
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return benhnhan;
	}
	
	public boolean update(Benhnhan benhnhan) {
		boolean result = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			session.update(benhnhan);
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
	
	public List<Lichkham> findlichkhamcuabenhnhan(int mabn) {
		List<Lichkham> lichkhams = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			//xu ly code HQL
			lichkhams = session.createQuery("from Lichkham where mabn = :mabn").setParameter("mabn", mabn).getResultList();
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
	
	
	
	
	
	
}
