package com.myweb.board.model;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.myweb.util.JdbcUtil;


public class BoardDAO {

	//UserDAO는 불필요하게 여러개 만들어질 필요가 없기 때문에 한개의 객체만 만들어 지도록 Singleton형식으로 설계합니다.

	//1. 나 자신의 객체를 생성해서 1개로 제한합니다
	private static BoardDAO instance = new BoardDAO();

	//2. 직접 객체를 생성할 수 없도록 생성자에도 private
	private BoardDAO() {
		//드라이버 로드
		try {
			//Class.forName("oracle.jdbc.driver.OracleDriver");
			//커넥션 풀을 얻는 작업
			InitialContext ctx = new InitialContext();//초기 설정 정보가 저장되는 객체
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {

		}
	}

	//3. 외부에서 객체생성을 요구할 때 getter메서드를 통해 1번의 객체를 반환
	public static BoardDAO getInstance() {
		return instance;
	}

	//--------------------------------------------------------------------------------------------------------
	//DB연결 변수들을 상수로 선언
	//	private String url="jdbc:oracle:thin:@localhost:1521/XEPDB1";
	//	private String uid="JSP";
	//	private String upw="JSP";
	private DataSource ds;
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	//글 등록 메서드
	public void regist(String writer,String title, String content) {
		String sql = "insert into board(bno, writer, title, content) values(board_seq.nextval, ?, ?, ?)";
		try {
			conn= ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, writer);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			
			pstmt.executeUpdate();//sql문 실행 
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
	}
	public ArrayList<BoardVO> getList() {
		ArrayList<BoardVO> list = new ArrayList<>();
	/*
	 * 	데이터베이스에서 번호를 내림차순으로 조회해서 리스트에 담는 코드를 작성 
	 */
		String sql ="select * from board order by bno desc";
		try {
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int bno =rs.getInt("bno");
				String writer =rs.getString("writer");
				String title =rs.getString("title");
				String content = rs.getString("content");
				Timestamp regdate =rs.getTimestamp("regdate");
				int hit=rs.getInt("hit");
				
				BoardVO vo = new BoardVO(bno,writer,title,content,regdate,hit);
								
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
			
		}
		
		return list;
		
	}
	public BoardVO getContent(String bno) {
		BoardVO vo = new BoardVO();
		/*
		 * 번호기준으로 select구문으로 조회해서 BoardVO에 저장하고,
		 * vo이름으로 화면에 데이터를 전달,
		 */
		String sql = "select * from board where bno=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bno);
			rs = pstmt.executeQuery();
			if(rs.next() ) {
				int bno1= rs.getInt("bno");
				String writer = rs.getString("writer");
				String content = rs.getString("content");
				Timestamp regdate = rs.getTimestamp("regdate");
				int hit= rs.getInt("hit");
				String title = rs.getString("title");
			
				vo.setBno(bno1);
				vo.setWriter(writer);
				vo.setContent(content);
				vo.setHit(hit);
				vo.setRegdate(regdate);
				vo.setTitle(title);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		return vo;
	}
}


