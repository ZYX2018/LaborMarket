package com.oracle.labormarket.service.impl.cdg;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.labormarket.mapper.cdg.CdgComputerMapper;
import com.oracle.labormarket.mapper.cdg.CdgDeformityMapper;
import com.oracle.labormarket.mapper.cdg.CdgEducationallevelMapper;
import com.oracle.labormarket.mapper.cdg.CdgHealthstateMapper;
import com.oracle.labormarket.mapper.cdg.CdgIndustryMapper;
import com.oracle.labormarket.mapper.cdg.CdgLanguageMapper;
import com.oracle.labormarket.mapper.cdg.CdgMarriageMapper;
import com.oracle.labormarket.mapper.cdg.CdgNationMapper;
import com.oracle.labormarket.mapper.cdg.CdgPoliticsaspectMapper;
import com.oracle.labormarket.mapper.cdg.CdgRegTypeMapper;
import com.oracle.labormarket.mapper.cdg.CdgRegioncodeMapper;
import com.oracle.labormarket.mapper.cdg.CdgRprtypeMapper;
import com.oracle.labormarket.mapper.cdg.CdgSexMapper;
import com.oracle.labormarket.mapper.cdg.CdgSpecialtyMapper;
import com.oracle.labormarket.mapper.cdg.CdgZjdgwlbMapper;
import com.oracle.labormarket.mapper.cdg.CdlEmploytypeMapper;
import com.oracle.labormarket.mapper.cdg.CdlOrgTypeMapper;
import com.oracle.labormarket.mapper.cdg.CdlPersonneltypeMapper;
import com.oracle.labormarket.mapper.cdg.CdlProficiencyMapper;
import com.oracle.labormarket.mapper.cdg.CdlQualificationMapper;
import com.oracle.labormarket.service.cdg.ICdgService;

@Service
public class CdgService implements ICdgService{
	@Autowired
	private CdgComputerMapper computerMapper;
	@Autowired
	private CdgDeformityMapper deformityMapper;
	@Autowired
	private CdgEducationallevelMapper educationallevelMapper;
	@Autowired
	private CdgHealthstateMapper healthstateMapper;
	@Autowired
	private CdgIndustryMapper industryMapper;
	@Autowired
	private CdgLanguageMapper languageMapper;
	@Autowired
	private CdgMarriageMapper marriageMapper;
	@Autowired
	private CdgNationMapper nationMapper;
	@Autowired
	private CdgPoliticsaspectMapper politicsaspectMapper;
	@Autowired
	private CdgRegioncodeMapper regioncodeMapper;
	@Autowired
	private CdgRegTypeMapper regTypeMapper;
	@Autowired
	private CdgRprtypeMapper rprtypeMapper;
	@Autowired
	private CdgSexMapper sexMapper;
	@Autowired
	private CdgSpecialtyMapper specialtyMapper;
	@Autowired
	private CdgZjdgwlbMapper zjdgwlbMapper;
	@Autowired
	private CdlEmploytypeMapper employtypeMapper;
	@Autowired
	private CdlOrgTypeMapper orgTypeMapper;
	@Autowired
	private CdlPersonneltypeMapper personneltypeMapper;
	@Autowired
	private CdlProficiencyMapper proficiencyMapper;
	@Autowired
	private CdlQualificationMapper qualificationMapper;
	@Override
	public String getCdgName(String tableName, String id) {
		if(tableName!=null&&!"".equals(tableName)){
			if("cdx_computergrade".equals(tableName.toLowerCase())){
				return computerMapper.selectNameById(id);
			}else if("cdg_deformity".equals(tableName.toLowerCase())){
				return deformityMapper.selectNameById(id);
			}else if("cdg_educationallevel".equals(tableName.toLowerCase())){
				return educationallevelMapper.selectNameById(id);
			}else if("cdg_healthstate".equals(tableName.toLowerCase())){
				return healthstateMapper.selectNameById(id);
			}else if("cdg_industry".equals(tableName.toLowerCase())){
				return industryMapper.selectNameById(id);
			}else if("cdg_language".equals(tableName.toLowerCase())){
				return languageMapper.selectNameById(id);
			}else if("cdg_marriage".equals(tableName.toLowerCase())){
				return marriageMapper.selectNameById(id);
			}else if("cdg_nation".equals(tableName.toLowerCase())){
				return nationMapper.selectNameById(id);
			}else if("cdg_politicsaspect".equals(tableName.toLowerCase())){
				return politicsaspectMapper.selectNameById(id);
			}else if("cdg_regioncode".equals(tableName.toLowerCase())){
				return regioncodeMapper.selectNameById(id);
			}else if("cdg_regtype".equals(tableName.toLowerCase())){
				return regTypeMapper.selectNameById(id);
			}else if("cdl_rprtype".equals(tableName.toLowerCase())){
				return rprtypeMapper.selectNameById(id);
			}else if("cdg_sex".equals(tableName.toLowerCase())){
				return sexMapper.selectNameById(id);
			}else if("cdl_specialty".equals(tableName.toLowerCase())){
				return specialtyMapper.selectNameById(id);
			}else if("zj_d_gwlb".equals(tableName.toLowerCase())){
				return zjdgwlbMapper.selectNameById(id);
			}else if("cdl_employtype".equals(tableName.toLowerCase())){
				return employtypeMapper.selectNameById(id);
			}else if("cdl_orgtype".equals(tableName.toLowerCase())){
				return orgTypeMapper.selectNameById(id);
			}else if("cdl_personneltype".equals(tableName.toLowerCase())){
				return personneltypeMapper.selectNameById(id);
			}else if("cdl_proficiency".equals(tableName.toLowerCase())){
				return proficiencyMapper.selectNameById(id);
			}else if("cdl_qualification".equals(tableName.toLowerCase())){
				return qualificationMapper.selectNameById(id);
			}			
		}
		return null;
	}

}
