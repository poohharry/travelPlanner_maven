package com.travel.biz.plan.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travel.biz.plan.PlanService;
import com.travel.biz.plan.PlanVO;

@Service("planService")
public class PlanServiceImpl implements PlanService{

	@Autowired
	private PlanDAO planDAO;
	
	@Override
	public void insertPlan(PlanVO vo) {
		planDAO.insertPlan(vo);
	}

	@Override
	public PlanVO getPlan(PlanVO vo) {
		return planDAO.getPlan(vo);
	}

	@Override
	public void deletePlan(PlanVO vo) {
		planDAO.deletePlan(vo);
	}

	@Override
	public List<PlanVO> getPlanList(PlanVO vo) {
		return planDAO.getPlanList(vo);
	}

}
