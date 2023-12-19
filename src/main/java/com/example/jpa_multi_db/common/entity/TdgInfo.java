package com.example.jpa_multi_db.common.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "TDG_INFO")
@Getter
@Setter
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TdgInfo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String aptCd;
	private String aptNm;
	private String aptOutputNm;
	private String aptForm;
	private Integer aptNoNum;
	private Integer householdNum;
	private String leaseClass;
	private String aptState;
	private Date firstContDate;
	private String hapsanYn;
	private String memo;
	private Date regDate;
	private String regUserId;
	private Date updDate;
	private String updUserId;
	private Integer cosmCd;
	private String notiKind;
	private String adjuKind;
	private String etrtCom;
	private String itProcCom;
	private Date contStartDt;
	private Date contEndDt;
	private Date reqDt;
	private String aptNoFr;
	private String aptNoTo;
	private String aptRoomFr;
	private String aptRoomTo;
	private Integer officeMngNo;
	private String etcNotiKind;
	private String dbId;
	private String aptType;
	private String convYymm;
	private String convEtc1Yymm;
	private String outputReq;
	private String teamCode;
	private String paTaClose;
	private String sdiv;
	private String smileEdi;
	private String rcptCreat;
	private String rcptDiv;
	private String exportClass;
	private String reportType;
	private Integer reportPage;
	private String grpAptCd;
	private String hangeulYn;
	private String acctStdCd;
	private String aptiUsrId;
	private String aptiPw;
	private String acctDayClose;
	private String prtAptYn;
}