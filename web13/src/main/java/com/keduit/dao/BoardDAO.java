package com.keduit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.keduit.dto.BoardVO;
import com.keduit.util.DBManager;

//DB 접속 후 CRUD(Create Read Update Delete) 작업을 실행해주는 클래스
public class BoardDAO {
	
	//외부에서 동일한 객체만 사용할 떄 싱클톤을 이용한다
	private BoardDAO() {}
	private static BoardDAO instance = new BoardDAO(); //내부에서 자기자신 객체 생성
	public static BoardDAO getInstance() { //외부에서 내부객체를 사용할 수 잇는 메서드
		return instance;
	}
	
	
	//게시글 전체 읽어오기
	//board 테이블에서 읽은 데이터들을 Board 타입의 리스트로 리턴
	public List<BoardVO> selectAllBoards(){
		String sql = "select * from board order by num desc";
		List<BoardVO> list = new ArrayList<BoardVO>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection(); //DBManager 클래스를 통해 DB 연동
			stmt = conn.createStatement(); //DB 에 쿼리문을 보내기 위한 준비
			rs = stmt.executeQuery(sql); //쿼리문 결과값
			
			while(rs.next()) {
				BoardVO bVO = new BoardVO();
				bVO.setContent(rs.getString("content"));
				bVO.setEmail(rs.getString("email"));
				bVO.setName(rs.getString("name"));
				bVO.setNum(rs.getInt("num"));
				bVO.setPass(rs.getString("pass"));
				bVO.setReadcount(rs.getInt("readcount"));
				bVO.setTitle(rs.getString("title"));
				bVO.setWritedate(rs.getTimestamp("writedate"));
				
				list.add(bVO); //쿼리문 결과값들을 Board 타입 원소로 리스트에 추가
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		System.out.println("list : " + list); //테스트용
		return list;
	}
	
	
	//게시글 하나 읽어오기
	public BoardVO selectOne(String num) { //편의성을 위해 num 을 String 타입으로 비교한다
		String sql = "select * from board where num = ?";
		BoardVO bVO = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num); //받아올 때에도 String 으로 받아와야 한다
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				bVO = new BoardVO();
				bVO.setContent(rs.getString("content"));
				bVO.setEmail(rs.getString("email"));
				bVO.setName(rs.getString("name"));
				bVO.setNum(rs.getInt("num"));
				bVO.setPass(rs.getString("pass"));
				bVO.setReadcount(rs.getInt("readcount"));
				bVO.setTitle(rs.getString("title"));
				bVO.setWritedate(rs.getTimestamp("writedate"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		System.out.println(bVO);
		return bVO;
	}
	
	
	//게시글 등록하기
	public void insertBoard(BoardVO bVO) {
		String sql = "insert into board values(board_seq.nextval, ?, ?, ?, ?, ?, 0, default)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVO.getPass());
			pstmt.setString(2, bVO.getName());
			pstmt.setString(3, bVO.getEmail());
			pstmt.setString(4, bVO.getTitle());
			pstmt.setString(5, bVO.getContent());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		 
	}
	
	
	//조회수 수정하기
	public void updateReadCount(String num) {
		String sql = "update board set readcount=readcount+1 where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	
	//게시글 삭제하기
	public void deleteBoard(String num) {
		String sql = "delete from board where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	
	//게시글 수정하기
	public void updateBoard(BoardVO bVO) {
		String sql = "update board set name=?, email=?, pass=?, title=?, content=? where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVO.getName());
			pstmt.setString(2, bVO.getEmail());
			pstmt.setString(3, bVO.getPass());
			pstmt.setString(4, bVO.getTitle());
			pstmt.setString(5, bVO.getContent());
			pstmt.setInt(6, bVO.getNum()); //여기서 num 은 board 클래스애서 가져온 멤버변수 이기 때문에 int 타입으로 가져와야 한다
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	

}
