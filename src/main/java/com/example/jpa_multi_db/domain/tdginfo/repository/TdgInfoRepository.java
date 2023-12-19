package com.example.jpa_multi_db.domain.tdginfo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.jpa_multi_db.domain.tdginfo.TdgInfo;

public interface TdgInfoRepository extends JpaRepository<TdgInfo, Long> {
}