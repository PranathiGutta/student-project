package jspdemo;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;

public class User {
	public static int insert(Structure o) {
		int status = 0;
		InputStream fin = null;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/student?characterEncoding=latin1&useConfigs=maxPerformance", "root",
					"manaKUak@7");
			PreparedStatement pre = con.prepareStatement(
					"insert into studentTable(studentName,studentEmail,studentPassword,studentImage) values(?,?,?,?)");
			Part filepart = request.getPart("image");
			pre.setString(1, o.getName());
			pre.setString(2, o.getEmail());
			pre.setString(3, o.getPassword());
			pre.setBlob(4, fin);
			status = pre.executeUpdate();
			fin.close();
		} catch (Exception e) {

		}

		return status;
	}

	public static int delete(int id) {
		int status = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/student?characterEncoding=latin1&useConfigs=maxPerformance", "root",
					"manaKUak@7");
			PreparedStatement pre = con.prepareStatement("delete from studentTable where studentId=?");
			pre.setInt(1, id);
			status = pre.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static Structure edit(int id) {
		Structure so = null;

		try {
			so = new Structure();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/student?characterEncoding=latin1&useConfigs=maxPerformance", "root",
					"manaKUak@7");
			PreparedStatement pre = con.prepareStatement("select * from studentTable where studentId=? ");
			pre.setInt(1, id);
			ResultSet rs = pre.executeQuery();

			while (rs.next()) {
				so.setId(rs.getInt(1));
				so.setName(rs.getString(2));
				so.setEmail(rs.getString(3));
				so.setPassword(rs.getString(4));

			}

		} catch (Exception e) {

			System.out.println(e);
		}

		return so;
	}

	public static int update(Structure obj) {
		int status = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/student?characterEncoding=latin1&useConfigs=maxPerformance", "root",
					"manaKUak@7");
			PreparedStatement pre = con.prepareStatement(
					"update studentTable set studentName=?,studentEmail=?,studentPassword=? where studentId=?");
			pre.setString(1, obj.getName());
			pre.setString(2, obj.getEmail());
			pre.setString(3, obj.getPassword());
			pre.setInt(4, obj.getId());
			status = pre.executeUpdate();
			System.out.print(status);
		} catch (Exception e) {
			System.out.print(e);
		}

		return status;

	}

	public static List<Structure> fetch() {

		ArrayList<Structure> al = new ArrayList<Structure>();
		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/student?characterEncoding=latin1&useConfigs=maxPerformance", "root",
					"manaKUak@7");

			PreparedStatement pre = con.prepareStatement("select * from studentTable");
			ResultSet rs = pre.executeQuery();
			while (rs.next()) {
				Structure so = new Structure();
				so.setId(rs.getInt(1));
				so.setName(rs.getString(2));
				so.setEmail(rs.getString(3));
				so.setPassword(rs.getString(4));
				al.add(so);
			}
		} catch (Exception e) {
		}
		return al;
	}
}
