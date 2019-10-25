package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.sql.DataSource;

import org.mindrot.jbcrypt.BCrypt;

import domain.Admin;

public class AdminDaoImpl implements AdminDao {


	private DataSource ds;

	public AdminDaoImpl(DataSource ds) {
		this.ds = ds;
	}







	@Override
	public List<Admin> findAll() throws Exception {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}

	@Override
	public Admin findById(Integer id) throws Exception {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}

	@Override
	public void insert(Admin admin) throws Exception {

		try(Connection con = ds.getConnection()) {
			String sql = "INSERT INTO admins (login_id,login_pass) VALUE(?,?)";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1,admin.getLoginId());
			stmt.setString(2,admin.getLoginPass());
			stmt.executeUpdate();
		} catch (Exception e) {
			throw e;

		}





	}

	@Override
	public void update(Admin admin) throws Exception {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public void delete(Admin admin) throws Exception {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public Admin findByLoginIdAndLoginPass(String loginId, String loginPass) throws Exception {
		Admin admin = null;
		try (Connection con = ds.getConnection()){
//			loginidが入力した値のものをSELECTするのでこの形でIDは？に設定する。
			String sql ="SELECT * FROM admins WHERE login_id=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, loginId);
			ResultSet rs = stmt.executeQuery();
//			rsにはｓｑｌ実行した結果（一致するものがあれば）rs.next１件ずつ下の処理を実行する
			if(rs.next()) {
//				パスワードのチェック↓ findByLoginIdAndLoginPass(String loginId, String loginPass)このメソッドの２個目の引数の処理
			if(BCrypt.checkpw(loginPass, rs.getString("login_pass"))) {
//				admin=null にmapToAdminを代入する/データーベース一件分のデータカラムをadminオブジェクトにセットしていくというメソッド
				admin = mapToAdmin(rs);
			}
		}
	} catch (Exception e) {
		 throw e;
		 }
		 return admin;
		 }

	private Admin mapToAdmin(ResultSet rs) throws Exception {
		Admin admin = new Admin();
		admin.setId((Integer) rs.getObject("id"));
		admin.setLoginId(rs.getString("login_id"));
		admin.setLoginPass(rs.getString("login_pass"));
		return admin;
	}


}
