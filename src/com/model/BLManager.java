package com.model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.criterion.Restrictions;

import com.pojo.Student;

public class BLManager {
	
	SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();

	public void saveStudent(Student s) {
		// TODO Auto-generated method stub
		
		Session se=sf.openSession();
		Transaction t=se.beginTransaction();
		se.save(s);
		t.commit();
		se.close();
	}
	
	public List<Student> getAllStud()
	{
		Session se=sf.openSession();
		Criteria cr=se.createCriteria(Student.class);
		@SuppressWarnings("unchecked")
		List<Student> s= cr.list();
		return s;
		
	}

	public Student serchById(int id) {
		Session se=sf.openSession();
		Criteria cr=se.createCriteria(Student.class);
		cr.add(Restrictions.eq("id", id));
		Student s=(Student)cr.uniqueResult();
		return s;
	}

	public void deleteRecords(Student s) {
		// TODO Auto-generated method stub
		Session se=sf.openSession();
		Transaction t=se.beginTransaction();
		se.delete(s);
		t.commit();
		se.close();
	}

	public void updateStud(Student s) {
		// TODO Auto-generated method stub
		Session se=sf.openSession();
		Transaction t=se.beginTransaction();
		se.update(s);
		t.commit();
		se.close();
	}

}
