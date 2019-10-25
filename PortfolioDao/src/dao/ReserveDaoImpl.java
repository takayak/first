package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import domain.Reserve;

public class ReserveDaoImpl implements ReserveDao {

	private DataSource ds;

	public ReserveDaoImpl(DataSource ds) {
		this.ds = ds;
	}

	@Override
	public List<Reserve> findAll() throws Exception {
		List<Reserve> reserveList = new ArrayList<>();
		try (Connection con = ds.getConnection()) {
			String sql = "SELECT * FROM reserve";
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				reserveList.add(mapToReserve(rs));
			}
		} catch (Exception e) {
			throw e;
		}
		return reserveList;
	}

	@Override
	public Reserve findById(Integer id) throws Exception {
		Reserve reserve = null;
		try (Connection con = ds.getConnection()) {
			String sql = "SELECT * FROM reserve WHERE id=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				reserve = mapToReserve(rs);
			}
		} catch (Exception e) {
			throw e;
		}
		return reserve;
	}

//	@Override
//	public List<Reserve> findById(Integer id) throws Exception {
//		List<Reserve> reserveList = new ArrayList<>();
//		try (Connection con = ds.getConnection()) {
//			String sql = "SELECT * FROM reserve WHERE id=?";
//			PreparedStatement stmt = con.prepareStatement(sql);
//			stmt.setInt(1, id);
//			ResultSet rs = stmt.executeQuery();
//			while (rs.next()) {
//				reserveList.add(mapToReserve(rs));
//			}
//		} catch (Exception e) {
//			throw e;
//		}
//		return reserveList;
//	}

	@Override
	public void insert(Reserve reserve) throws Exception {
		System.out.println(reserve);
		try (Connection con = ds.getConnection()) {
			String sql = "INSERT INTO reserve (name,address,tel,mail,date)VALUE (?,?,?,?,?)";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, reserve.getName());
			stmt.setString(2, reserve.getAddress());
			stmt.setString(3, reserve.getTel());
			stmt.setString(4, reserve.getMail());
			stmt.setTimestamp(5, new Timestamp(reserve.getDate().getTime()));
			stmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		}
	}

	@Override
	public void update(Reserve reserve) throws Exception {
		try (Connection con = ds.getConnection()) {
			String sql = "UPDATE reserve SET name=?, address=?, tel=?, mail=?, date=? WHERE id=? ";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, reserve.getName());
			stmt.setString(2, reserve.getAddress());
			stmt.setString(3, reserve.getTel());
			stmt.setString(4, reserve.getMail());
			stmt.setTimestamp(5, new Timestamp(reserve.getDate().getTime()));
			stmt.setInt(6, reserve.getId());
			stmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		}


	}

	@Override
	public void delete(String id) throws Exception {

		try (Connection con = ds.getConnection()) {
			String sql = "DELETE from reserve where id=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.executeUpdate();
		} catch (Exception e) {
			throw e;
		}

	}

	private Reserve mapToReserve(ResultSet rs) throws Exception {
		Reserve reserve = new Reserve();
		reserve.setId((Integer) rs.getObject("id"));
		reserve.setName(rs.getString("name"));
		reserve.setAddress(rs.getString("address"));
		reserve.setTel(rs.getString("tel"));
		reserve.setMail(rs.getString("mail"));
		reserve.setDate(rs.getTimestamp("date"));
		return reserve;

	}

	@Override
	public List<Reserve> findByName(String name) throws Exception {
		List<Reserve> reserveList = new ArrayList<>();
		try (Connection con = ds.getConnection()) {
			String sql = "SELECT * FROM reserve WHERE name=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, name);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				reserveList.add(mapToReserve(rs));
			}
		} catch (Exception e) {
			throw e;
		}
		return reserveList;
	}

	@Override
	public List<Reserve> findInfomation(String mail)throws Exception {
		List<Reserve> reserveList = new ArrayList<>();
		try(Connection con = ds.getConnection()) {
			String sql = "SELECT *FROM reserve WHERE mail=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1,mail);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				reserveList.add(mapToReserve(rs));
			}
		} catch (Exception e) {
			throw e;
		}
		return reserveList;
	}

	@Override
	public List<Reserve> findByName2(String name) throws Exception {
		List<Reserve> reserveList = new ArrayList<>();
		try (Connection con = ds.getConnection()) {
			String sql = "SELECT * FROM reserve WHERE name LIKE ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, "%" + name +"%");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				reserveList.add(mapToReserve(rs));
			}
		} catch (Exception e) {
			throw e;
		}
		return reserveList;
	}

	@Override
	public List<Reserve>findByDate(String date) throws Exception {
		List<Reserve> reserveList = new ArrayList<>();
		try(Connection con = ds.getConnection()) {
//			String sql = "SELECT * FROM reserve WHERE date = ?";
			String sql = "SELECT * FROM reserve  WHERE date LIKE ? ORDER BY date";
			PreparedStatement stmt = con.prepareStatement(sql);
//			stmt.setString(1, date);
			stmt.setString(1, date + "%");
			ResultSet rs =stmt.executeQuery();
			while(rs.next()) {
				reserveList.add(mapToReserve(rs));
			}
		} catch (Exception e) {
			throw e;
		}
		return reserveList;
	}
}
