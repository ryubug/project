package com.example.portfolio.repository.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.portfolio.model.UserVO;


@Repository
public class UserDaoImpl implements UserDao{
	@Autowired	SqlSession sql; //디비 접속 객체 가져다 쓰기 (@Autowired)
	
	final static String namespace = "mappers.UsersMapper";
	
	//아이디 체크 하는 부분
	@Override
	public int idCheck(String userid) {
	return sql.selectOne(namespace + ".idCheck", userid);
		
	}
	//간편 회원가입
	@Override
	public int setUser(UserVO uvo) {
		sql.insert(namespace + ".setUser" , uvo);
		return uvo.getUid();
	}

	//사원 리스트 검색
	@Override
	public List<UserVO> getUsersList(int start,int end, String searchOpt, String  words){
		Map<String, Object> map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sql.selectList(namespace+ ".getUsersList", map);
		
	}
	//사원 카운트
	//Service는 괄호 안에 값을 여러게 가능 -> ex(namespace + ".getUsersCount",A,B,C), dao는 여러개 X (collection -hashMap, dto) 사용해야 한다.	
	@Override
	public int getUsersCount(String searchOpt, String words) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sql.selectOne(namespace + ".getUsersCount", map);
	}
	//관리자 권한 부여
//	@Override
//	public int authUpdate(Map<String, Object> map) {
//		return sql.update(namespace + ".authUpdate", map);
//	 }
	@Override
	public int authUpdate(Map<String, Object> map) {
		return sql.update(namespace + ".authUpdate", map);
	}
//	@Override
//	public int setUsersDeleteAll(int uid) {
//		return sql.delete(namespace + ".setUsersDeleteAll", uid );
//	}
//
//	@Override
//	public int setUsersDelete(int uid) {
//		
//		return sql.delete(namespace + ".setUsersDelete", uid );
//	}
//
	@Override
	public UserVO loginCheck(UserVO uvo) {
		return sql.selectOne(namespace + ".loginCheck" , uvo);
	}
//
	@Override
	public UserVO getUsersView(int uid) {
		
		return sql.selectOne(namespace + ".getUsersView", uid);
	}

	@Override
	public int userUpdateView(UserVO uvo) {
		
		return sql.update(namespace + ".userUpdateView", uvo);
	}
	@Override
	public int getCompanynumber(UserVO uvo) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace + ".getCompanynumber", uvo);
	}
	@Override
	public void divUpdate(UserVO uvo) {

		sql.update(namespace + ".divUpdate", uvo);
	}

	


}
