package com.keduit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.keduit.dto.EmpVo;
import com.keduit.util.DBManager;

public class EmpDAO {

	// 싱글톤
	private EmpDAO() {
	}

	private static EmpDAO instance = new EmpDAO();

	public static EmpDAO getInstance() {
		return instance;
	}
	
	
	// 로그인시 관리자 인지 확인
	public int userCheck(String id, String pass, String lev) {
		int result = -1;
		String sql = "select pass, lev from employees where id = ?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (lev.equals("A") && rs.getString("lev").equals(lev) && rs.getString("pass").equals(pass)) {
					result = 1;
				}
			} else {
				result = 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}

		return result;
	}
	
	public List<EmpVo> selectAllEmp() {
		String sql = "select * from employees order by name desc";
		List<EmpVo> list = new ArrayList<EmpVo>();
		
		Connection conn = null;
		java.sql.Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				EmpVo empVo = new EmpVo();
				empVo.setEnter(rs.getString("enter"));
				empVo.setGender(rs.getString("gender"));
				empVo.setId(rs.getString("id"));
				empVo.setLev(rs.getString("lev"));
				empVo.setName(rs.getString("name"));
				empVo.setPass(rs.getString("pass"));
				empVo.setPhone(rs.getString("phone"));
				
				list.add(empVo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
				
	}
	
	public EmpVo selectOne(String id) {
		String sql = "select * from employees where id = ?";
		EmpVo empVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				empVo = new EmpVo();
				empVo.setEnter(rs.getString("enter"));
				empVo.setGender(rs.getString("gender"));
				empVo.setId(rs.getString("id"));
				empVo.setLev(rs.getString("lev"));
				empVo.setName(rs.getString("name"));
				empVo.setPass(rs.getString("pass"));
				empVo.setPhone(rs.getString("phone"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return empVo;
	}
	
	//사원등록
	public int insertEmp(EmpVo eVo) {
		int result = -1;
		String sql = "insert into employees values(?,?,?,?,sysdate,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eVo.getId());
			pstmt.setString(2, eVo.getPass());
			pstmt.setString(3, eVo.getName());
			pstmt.setString(4, eVo.getLev());
			pstmt.setString(5, eVo.getGender());
			pstmt.setString(6, eVo.getPhone());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
	
	//회원정보 삭제하기
	public int deleteEmp(String id) {
		int result = -1;
		String sql = "delete from employees where id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		 
		
		return result;
	}
	
	public int updateEmp(EmpVo eVO) {
		int result = -1;
		String sql = "update employees set pass = ?, name =?, phone = ? where id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eVO.getPass());
			pstmt.setString(2, eVO.getName());
			pstmt.setString(3, eVO.getPhone());
			pstmt.setString(4, eVO.getId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return result;
	}

}
