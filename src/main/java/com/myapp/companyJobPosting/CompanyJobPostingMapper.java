package com.myapp.companyJobPosting;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface CompanyJobPostingMapper {

    // 공고글 등록
    @Insert("insert into company_job_posting(company_job_posting_id,"
            + " company_job_posting_number, company_job_posting_introduce,"
            + " company_job_posting_manager, company_job_posting_recruitment,"
            + " company_job_posting_period_start, company_job_posting_period_end,"
            + " company_job_posting_manager_phone, company_job_posting_manager_email,"
            + " company_job_posting_qr, company_job_posting_preference,"
            + " company_job_posting_welfare"
//            + ", company_job_posting_image_number"
            + " )"

            + " values(0, #{companyJobPostingNumber}, #{companyJobPostingIntroduce},"
            + "    #{companyJobPostingManager}, #{companyJobPostingRecruitment},"
            + "    #{companyJobPostingPeriodStart}, #{companyJobPostingPeriodEnd},"
            + "    #{companyJobPostingManagerPhone}, #{companyJobPostingManagerEmail},"
            + "    #{companyJobPostingQr}, #{companyJobPostingPreference},"
            + "    #{companyJobPostingWelfare})")
    public int joinCompanyJobPosting(CompanyJobPosting companyJobPosting);


    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // 공고글 조회 - 로그인후메인페이지
    @Select("select ")
    public CompanyJobPosting selectCompanyJobPosting(CompanyJobPosting companyJobPosting);

    // 공고글 조회 - 북마크, 공고목록. 등등?

    // 공고글 수정
    @Update("update company_job_posting set ")
    public CompanyJobPosting updateCompanyJobPosting();

    // 공고글 삭제
//    @Delete("")
//    public 
}