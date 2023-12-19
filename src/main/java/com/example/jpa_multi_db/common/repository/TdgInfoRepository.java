package com.example.jpa_multi_db.common.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.jpa_multi_db.common.entity.TdgInfo;

public interface TdgInfoRepository extends JpaRepository<TdgInfo, Long> {
}