
package com.service.impl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CommonDao;
import com.service.CommonService;


/**
 * 系统用户
 * @author yangliyuan
 * @date 2019年10月10日 上午9:17:59
 */
@Service("commonService")
public class CommonServiceImpl implements CommonService {
	
	@Autowired
	private CommonDao commonDao;

	@Override
	public List<String> getOption(Map<String, Object> params) {
		return commonDao.getOption(params);
	}
	
	@Override
	public Map<String, Object> getFollowByOption(Map<String, Object> params) {
		return commonDao.getFollowByOption(params);
	}
	
	@Override
	public void sh(Map<String, Object> params) {
		commonDao.sh(params); 
	}

	@Override
	public int remindCount(Map<String, Object> params) {
		return commonDao.remindCount(params);
	}

	@Override
	public Map<String, Object> selectCal(Map<String, Object> params) {
		return commonDao.selectCal(params);
	}
	
	@Override
	public List<Map<String, Object>> selectGroup(Map<String, Object> params) {
		return commonDao.selectGroup(params);
	}
	
	@Override
	public List<Map<String, Object>> selectValue(Map<String, Object> params) {
		return commonDao.selectValue(params);
	}

	@Override
	public List<Map<String, Object>> chartBoth(Map<String, Object> params) {
		return commonDao.chartBoth(params);
	}

	@Override
	public List<Map<String, Object>> chartOne(Map<String, Object> params) {
		return commonDao.chartOne(params);
	}


	/**
	 * 新的级联字典表的  分组求和统计
	 * @param params
	 * @return
	 */
	@Override
	public List<Map<String, Object>> newSelectGroupSum(Map<String, Object> params) {
		return commonDao.newSelectGroupSum(params);
	}


	/**
	 * 新的级联字典表的  分组条数统计
	 * @param params
	 * @return
	 */
	@Override
	public List<Map<String, Object>> newSelectGroupCount(Map<String, Object> params) {
		return commonDao.newSelectGroupCount(params);
	}

	/**
	 * 新的级联表的字典表的  分组条数统计
	 * @param params
	 * @return
	 */
	@Override
	public List<Map<String, Object>> newSelectJilianGroupCount(Map<String, Object> params) {
		return commonDao.newSelectJilianGroupCount(params);
	}



}
