package com.travel.biz.plan;

import java.util.List;

public interface PlanService {
	void insertPlan(PlanVO vo); 
	PlanVO getPlan(PlanVO vo);
	void deletePlan(PlanVO vo);
	List<PlanVO> getPlanList(PlanVO vo);
}
