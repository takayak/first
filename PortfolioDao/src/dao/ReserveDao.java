package dao;

import java.util.List;

import domain.Reserve;

public interface ReserveDao {

	List<Reserve> findAll() throws Exception;
	 Reserve findById(Integer id) throws Exception;
//	 List<Reserve> findById(Integer id) throws Exception;
	 void insert(Reserve reserve) throws Exception;
	 void update(Reserve reserve) throws Exception;
	 void delete(String id) throws Exception;
	List<Reserve> findByName(String name) throws Exception;
	List<Reserve> findByName2(String name) throws Exception;
	List<Reserve> findInfomation(String mail)throws Exception;
	public List<Reserve>findByDate(String date) throws Exception;
}
