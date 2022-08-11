package com.travel.biz.plan.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travel.biz.plan.PlanVO;

@Repository
public class PlanDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertPlan(PlanVO vo) {
		System.out.println("Mybatis insertPlan");
		mybatis.insert("PlanDAO.insertPlan", vo);
	}
	
	public PlanVO getPlan(PlanVO vo) {
		System.out.println("Mybatis getPlan");
		return (PlanVO)mybatis.selectOne("PlanDAO.getPlan", vo);
	}
	
	public void deletePlan(PlanVO vo) {
		System.out.println("Mybatis deletePlan");
		mybatis.delete("PlanDAO.deletePlan", vo);
	}
	
	public List<PlanVO> getPlanList(PlanVO vo) {
		System.out.println("Mybatis getPlanList");
		return mybatis.selectList("PlanDAO.getPlanList", vo);
	}
}
