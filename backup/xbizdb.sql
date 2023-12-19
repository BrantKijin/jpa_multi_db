CREATE TABLE IF NOT EXISTS TDG_INFO (
                                        APT_CD VARCHAR(5) NOT NULL PRIMARY KEY,
                                        APT_NM VARCHAR(50),
                                        APT_OUTPUT_NM VARCHAR(50),
                                        APT_FORM VARCHAR(10),
                                        APT_NO_NUM numeric(5),
                                        HOUSEHOLD_NUM numeric(5),
                                        LEASE_CLASS VARCHAR(10),
                                        APT_STATE VARCHAR(10),
                                        FIRST_CONT_DATE DATE,
                                        HAPSAN_YN CHAR,
                                        MEMO VARCHAR(50),
                                        REG_DATE DATE,
                                        REG_USER_ID VARCHAR(10),
                                        UPD_DATE DATE,
                                        UPD_USER_ID VARCHAR(10),
                                        COSM_CD numeric(8),
                                        NOTI_KIND VARCHAR(10),
                                        ADJU_KIND VARCHAR(10),
                                        ETRT_COM VARCHAR(5),
                                        IT_PROC_COM VARCHAR(5),
                                        CONT_START_DT DATE,
                                        CONT_END_DT DATE,
                                        REQ_DT DATE,
                                        APT_NO_FR VARCHAR(4),
                                        APT_NO_TO VARCHAR(4),
                                        APT_ROOM_FR VARCHAR(10),
                                        APT_ROOM_TO VARCHAR(10),
                                        OFFICE_MNG_NO numeric(8),
                                        ETC_NOTI_KIND VARCHAR(10),
                                        DBID VARCHAR(10),
                                        APT_TYPE VARCHAR(1),
                                        CONV_YYMM VARCHAR(6),
                                        CONV_ETC1_YYMM VARCHAR(6),
                                        OUTPUT_REQ CHAR DEFAULT 'Y',
                                        TEAM_CODE VARCHAR(6),
                                        PA_TA_CLOSE VARCHAR(4),
                                        SDIV VARCHAR(20),
                                        SMILE_EDI CHAR,
                                        RCPT_CREAT CHAR DEFAULT 'Y',
                                        RCPT_DIV CHAR DEFAULT '1',
                                        EXPORT_CLASS CHAR(9) DEFAULT 'YYYYYYYYY',
                                        REPORT_TYPE CHAR,
                                        REPORT_PAGE numeric(2),
                                        GRP_APT_CD VARCHAR(5),
                                        HANGEUL_YN VARCHAR(1),
                                        ACCT_STD_CD CHAR,
                                        APTI_USR_ID VARCHAR(25),
                                        APTI_PW VARCHAR(25),
                                        ACCT_DAY_CLOSE CHAR,
                                        PRT_APT_YN CHAR
);
comment on table TDG_INFO is '단지정보';
comment on column TDG_INFO.APT_CD is '아파트코드';
comment on column TDG_INFO.APT_NM is '아파트명';
comment on column TDG_INFO.APT_OUTPUT_NM is '아파트명_출력명';
comment on column TDG_INFO.APT_FORM is '아파트형태구분';
comment on column TDG_INFO.APT_NO_NUM is '총동수';
comment on column TDG_INFO.HOUSEHOLD_NUM is '총세대수';
comment on column TDG_INFO.LEASE_CLASS is '임대구분';
comment on column TDG_INFO.APT_STATE is '상태코드';
comment on column TDG_INFO.FIRST_CONT_DATE is '최초계약일자';
comment on column TDG_INFO.HAPSAN_YN is '합산동호여부';
comment on column TDG_INFO.MEMO is '메모';
comment on column TDG_INFO.REG_DATE is '등록일자';
comment on column TDG_INFO.REG_USER_ID is '등록자';
comment on column TDG_INFO.UPD_DATE is '수정일자';
comment on column TDG_INFO.UPD_USER_ID is '수정자';
comment on column TDG_INFO.COSM_CD is '입주자관리번호';
comment on column TDG_INFO.NOTI_KIND is '고지서종류';
comment on column TDG_INFO.ADJU_KIND is '조정대장종류';
comment on column TDG_INFO.ETRT_COM is '위탁사';
comment on column TDG_INFO.IT_PROC_COM is '전산업체';
comment on column TDG_INFO.CONT_START_DT is '계약시작일자';
comment on column TDG_INFO.CONT_END_DT is '계약종료일자';
comment on column TDG_INFO.REQ_DT is '요청일자';
comment on column TDG_INFO.APT_NO_FR is '동 시작';
comment on column TDG_INFO.APT_NO_TO is '동 끝';
comment on column TDG_INFO.APT_ROOM_FR is '호 시작';
comment on column TDG_INFO.APT_ROOM_TO is '호 끝';
comment on column TDG_INFO.OFFICE_MNG_NO is '관리사무소';
comment on column TDG_INFO.ETC_NOTI_KIND is '별도고지서 종류';
comment on column TDG_INFO.DBID is 'SYSTEM-ID';
comment on column TDG_INFO.APT_TYPE is '단지종류';
comment on column TDG_INFO.CONV_YYMM is '컨버젼년월(수납조건월)';
comment on column TDG_INFO.CONV_ETC1_YYMM is '별도1컨버젼년월(수납조건월)';
comment on column TDG_INFO.OUTPUT_REQ is '자체출력 여부';
comment on column TDG_INFO.TEAM_CODE is '관리팀 코드';
comment on column TDG_INFO.PA_TA_CLOSE is '연말정산마감정보';
comment on column TDG_INFO.SDIV is '출력자동화';
comment on column TDG_INFO.SMILE_EDI is '전자세금계산서종류(B빌메이트Y스마일EBMERP)';
comment on column TDG_INFO.RCPT_CREAT is '당월미납생성';
comment on column TDG_INFO.RCPT_DIV is '분리부과기본값(1부과2비율3연체';
comment on column TDG_INFO.EXPORT_CLASS is '엑셀변환(입검부수회인민위기)';
comment on column TDG_INFO.REPORT_TYPE is '부과내역서종류';
comment on column TDG_INFO.REPORT_PAGE is '부과내역서부수';
comment on column TDG_INFO.GRP_APT_CD is '아파트그룹';
comment on column TDG_INFO.HANGEUL_YN is '한글동호';
comment on column TDG_INFO.ACCT_STD_CD is '회계표준';
comment on column TDG_INFO.APTI_USR_ID is '아파트아이아이디';
comment on column TDG_INFO.APTI_PW is '아파트아이비밀번호';
comment on column TDG_INFO.ACCT_DAY_CLOSE is '회계일마감';
comment on column TDG_INFO.PRT_APT_YN is '출력동호여부';

-- IPRODB 에만 넣는다
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49999', '테스트', null, '7', 4, 322, null, '1', null, null, null, TIMESTAMP '2013-11-14 16:59:02', 'jubyung2', TIMESTAMP '2020-03-17 11:51:31', 'rayn25', null, '0125', '1101', '95001', '95001', null, null, null, '0001', '9999', 'F001000100', 'F001000100', null, '0215', 'HJDB', null, '199901', null, 'N', null, '2017', 'N|T', 'B', 'Y', '1', 'NYYNNYYYY', 'N', null, null, '1', '0', null, null, 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49998', '테스트', null, '2', 4, 3388, 'N', 'T', null, null, null, TIMESTAMP '2016-08-05 18:13:06', 'CONV', TIMESTAMP '2023-04-06 17:15:40', 'cyh0649', null, '0121', '1101', '95001', '95058', null, null, null, '0101', '9999', '0301', 'F009000200', null, null, 'HJDB', null, '201607', null, 'N', null, null, 'N|T', null, 'Y', '1', 'YYYYYYYYY', 'Y', null, null, 'Y', '0', 'a123456789', null, 'Y', 'N');
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49997', '우도상가', null, '3', 1, 3, null, 'T', null, null, null, TIMESTAMP '2019-04-10 11:53:52', 'dnejdzlr2', null, null, null, '0309', '1101', null, null, null, null, null, '0001', '0001', 'F000000100', 'F001000100', null, '0213', 'HJDB', null, '199901', null, 'N', '01', null, 'Y|N', 'N', 'Y', '1', 'NYYNNYYYY', 'N', null, null, 'Y', '0', 'tlsgmdevusgks', '0925qkqh', 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49996', '우도단지유', null, '3', 2, 23, null, 'E', null, null, null, TIMESTAMP '2018-10-30 17:45:19', 'dnejdzlr2', TIMESTAMP '2019-04-08 14:18:50', 'dnejdzlr2', null, '0121', '1101', null, null, null, null, null, 'A', 'B', 'F001000800', 'B999000100', null, '0215', 'HJDB', null, '199901', null, 'N', '01', null, 'N|N', 'N', 'Y', '1', 'NYYNNYYYY', 'N', null, null, '1', '0', 'tlsgmdevusgks', '0925qkqh', 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49995', '빌딩테스트(형우)', null, '2', 3, 90, null, 'E', null, null, null, TIMESTAMP '2018-08-30 16:07:31', 'rayn25', TIMESTAMP '2019-03-12 09:42:52', 'an4216', null, '0113', '1101', null, '95070', null, null, null, '0101', '0301', '0101', 'F001000500', 41392877, '0213', 'HJDB', null, '199901', null, 'N', '01', null, 'N|N', 'N', 'Y', '1', 'NYYNNYYYY', 'N', null, null, '1', '0', 'tlsgmdevusgks', '0925qkqh', 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49994', '빌딩테스트(형우)', null, '2', 2, 190, null, 'E', null, null, null, TIMESTAMP '2018-08-30 16:07:31', 'rayn25', TIMESTAMP '2018-08-31 15:07:31', 'rayn25', null, '0113', '1101', null, null, null, null, null, '0001', '0002', 'B995000100', 'F015000500', 41392828, '0213', 'HJDB', null, '199901', null, 'N', '01', null, 'N|N', 'N', 'Y', '1', 'NYYNNYYYY', 'N', null, null, '1', '0', 'tlsgmdevusgks', '0925qkqh', 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49993', '빌메이트_위탁', null, '3', 1, 64, null, 'W', null, null, null, TIMESTAMP '2017-05-30 10:24:32', 'shlove', TIMESTAMP '2020-03-20 09:09:40', 'rayn25', null, '0122', '1101', '99993', '95001', null, null, null, '0001', '0001', 'F001000100', 'F099009900', 41416480, '0215', 'HJDB', null, '199901', null, 'N', null, null, 'N|N', 'B', 'Y', '1', 'NYYNNYYYY', 'Y', null, null, 'Y', '0', null, null, 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49992', '연말정산', null, '1', 3, 45, null, 'E', null, null, null, TIMESTAMP '2018-08-30 16:06:54', 'rayn25', TIMESTAMP '2021-01-11 14:52:14', 'sh216', null, '0113', '1101', null, '95047', null, null, null, '0101', '0301', '0101', '0503', null, '0213', 'HJDB', null, '199901', null, 'N', '01', '2018', 'N|N', 'N', 'Y', '1', 'NYYNNYYYY', 'N', null, null, 'Y', '0', 'tlsgmdevusgks', '0925qkqh', 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49991', '은미꺼(빌딩)', null, '2', 1, 116, null, 'E', null, null, null, TIMESTAMP '2018-05-16 11:43:19', 'pino90', TIMESTAMP '2020-06-03 17:05:14', 'sy3341', null, '0106', '1101', null, '95001', null, null, null, '0001', '0001', 'B997000100', 'F015000700', null, '0213', 'HJDB', null, '199901', null, 'N', '01', null, 'N|N', 'B', 'Y', '1', 'NYYNNYYYY', 'N', null, null, '1', '0', 'tlsgmdevusgks', '0925qkqh', 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49990', '윤선꺼테스트', null, '1', 1, 2, null, 'E', null, null, null, TIMESTAMP '2018-05-09 18:29:57', 'pino90', TIMESTAMP '2022-01-27 13:51:03', 'bluechip', null, '0106', '1301', '95001', '95031', null, null, null, '0101', '9999', '0102', '0001', null, '0213', 'HJDB', null, '199901', null, null, null, '2018', 'N|N', 'N', 'Y', '1', 'NYYNNYYYY', 'N', null, null, '1', '1', 'kang091007', '0925qkqh', 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49989', '압구정한양1단지', '압구정한양1단지', '1', 15, 1232, 'N', '1', null, null, null, null, 'bluechip', TIMESTAMP '2022-05-13 14:24:07', 'a20093', null, '0106', null, null, '95001', null, null, null, '0001', '0026', '0101', '1307', 50931468, null, 'HJDB', null, '201004', '201003', 'N', null, null, 'Y|Y', 'B', 'Y', '2', 'YYYNYYYYY', 'N', null, null, 'Y', '1', null, null, 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49988', '입주예약서비스', null, '1', 1, 152, null, '1', null, null, null, TIMESTAMP '2021-11-26 15:38:01', 'sy3341', null, null, null, '0106', '1101', null, '95047', null, null, null, '0101', '0101', '0101', '1908', null, '0215', 'HJDB', null, '199901', null, 'N', null, null, 'N|T', 'B', 'Y', '1', 'NYYNNYYYY', 'Y', null, null, 'Y', '0', 'jinsil0819', '&II+YHd6wlg9YLB83gIKUUw==', 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49987', '입주예약테스트', null, '1', null, null, null, '1', null, null, null, TIMESTAMP '2021-12-06 10:04:03', 'sy3341', TIMESTAMP '2022-04-19 16:09:27', 'bluechip', null, '0106', '1101', null, '95031', null, null, null, null, null, null, null, null, '0215', 'HJDB', null, '199901', null, null, null, null, 'N|T', 'B', 'Y', '1', 'NYYNNYYYY', 'Y', null, null, 'Y', '0', 'jinsil0819', '&II+YHd6wlg9YLB83gIKUUw==', 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49986', '연말정산테스트단지2', null, '1', 0, 0, null, '1', null, null, null, TIMESTAMP '2010-02-06 15:58:22', 'ADMIN', TIMESTAMP '2022-04-19 16:09:09', 'bluechip', null, '0107', '1101', null, '95031', null, null, null, null, null, null, null, 41412773, null, 'HJDB', null, null, null, null, null, null, 'N|N', 'N', 'Y', '1', 'NYYNNYYYY', 'N', null, null, 'Y', '0', null, null, 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49985', '전자투표테스트단지', null, '1', 11, 102, null, '1', null, null, null, TIMESTAMP '2010-02-06 15:58:22', 'ADMIN', TIMESTAMP '2021-11-23 17:31:01', 'jicheon12', null, '0106', '1101', '95001', null, null, null, null, '0101', '0999', '0101', '0105', 41412772, '0102', 'HJDB', null, null, null, null, null, null, 'N|N', 'N', 'Y', '1', 'NYYNNYYYY', 'N', null, null, 'Y', '0', null, null, 'N', null);
INSERT INTO TDG_INFO (APT_CD, APT_NM, APT_OUTPUT_NM, APT_FORM, APT_NO_NUM, HOUSEHOLD_NUM, LEASE_CLASS, APT_STATE, FIRST_CONT_DATE, HAPSAN_YN, MEMO, REG_DATE, REG_USER_ID, UPD_DATE, UPD_USER_ID, COSM_CD, NOTI_KIND, ADJU_KIND, ETRT_COM, IT_PROC_COM, CONT_START_DT, CONT_END_DT, REQ_DT, APT_NO_FR, APT_NO_TO, APT_ROOM_FR, APT_ROOM_TO, OFFICE_MNG_NO, ETC_NOTI_KIND, DBID, APT_TYPE, CONV_YYMM, CONV_ETC1_YYMM, OUTPUT_REQ, TEAM_CODE, PA_TA_CLOSE, SDIV, SMILE_EDI, RCPT_CREAT, RCPT_DIV, EXPORT_CLASS, REPORT_TYPE, REPORT_PAGE, GRP_APT_CD, HANGEUL_YN, ACCT_STD_CD, APTI_USR_ID, APTI_PW, ACCT_DAY_CLOSE, PRT_APT_YN) VALUES ('49984', '프라지움5차(테스트)', null, '2', 1, 317, null, '1', null, null, null, TIMESTAMP '2015-08-12 15:45:58', 'jubyung2', TIMESTAMP '2023-05-02 13:28:25', 'baekjh', null, '0403', '1101', null, '95011', null, null, null, '0001', '0001', 'B999000100', 'F099009900', null, '0215', 'HJDB', null, '199901', null, 'N', null, null, 'N|N', 'B', 'Y', '1', 'YYYYYYYYY', 'Y', null, null, 'Y', '0', '62478', '07290729*', 'N', 'N');
