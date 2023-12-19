package com.example.jpa_multi_db.domain.tdginfo.repository.querydsl;

import com.querydsl.jpa.impl.JPAQueryFactory;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class TdgInfoRepositoryImpl implements TdgInfoRepositoryCustom{
	private final JPAQueryFactory queryFactory;
}
