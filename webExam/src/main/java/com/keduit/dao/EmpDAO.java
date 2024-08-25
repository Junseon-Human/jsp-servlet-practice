package com.keduit.dao;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.keduit.dto.EmpVO;

public class EmpDAO {
	private EmpDAO() {

	}

	private static EmpDAO instance = new EmpDAO();

	public static EmpDAO getInstance() {
		return instance;
	}

	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initText = new InitialContext();
		Context envContext = (Context) initText.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();

		return conn;
	}

	public int userCheck(String id, String pwd, String lev) {
		int result = -1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select pass, lev from employees where id = ?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("pass") != null && rs.getString("pass").equals(pwd) && rs.getString("lev").equals(lev)) {
					result = 1;
				} else {
					result = 0;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	public String getName(String id) {
		String name = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select name from employees where id = ?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				name = rs.getString("name");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		return name;

	}
	
	public EmpVO getEmpVO(String id) {
		EmpVO empVO = null;
		String sql = "select * from employees where id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				empVO = new EmpVO();
				empVO.setId(rs.getString("id"));
				empVO.setPass(rs.getString("pass"));
				empVO.setName(rs.getString("name"));
				empVO.setLev(rs.getString("lev"));
				empVO.setPhone(rs.getString("phone"));
				empVO.setGender(rs.getString("gender"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}  finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		
		
		return empVO;
	}
	
	public int updateUser(EmpVO empVO) {
		 int result = -1;
	        String sql = "update employees set pass = ?, name = ?, phone = ? where id = ?";
	        Connection conn = null;
	        PreparedStatement pstmt = null;

	        try {
	            conn = getConnection();
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, empVO.getPass());
	            pstmt.setString(2, empVO.getName());
	            pstmt.setString(3, empVO.getPhone());
	            pstmt.setString(4, empVO.getId());
	            result = pstmt.executeUpdate();

	        }catch(Exception e) {
	            e.printStackTrace();
	        }finally {
	            try {
	                pstmt.close();
	                conn.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }

	        return result;
	}
	
	public int insertUser(EmpVO empVO) {
		int result = -1;
		
		String sql = "insert into employees values (? ,?,?,?,sysdate,?,? )";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, empVO.getId());
			pstmt.setString(2, empVO.getPass());
			pstmt.setString(3, empVO.getName());
			pstmt.setString(4, empVO.getLev());
			pstmt.setString(5, empVO.getGender());
			pstmt.setString(6, empVO.getPhone());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		return result;
	}
}
