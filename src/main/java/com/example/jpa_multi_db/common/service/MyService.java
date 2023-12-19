package com.example.jpa_multi_db.common.service;

import org.springframework.stereotype.Service;

import com.example.jpa_multi_db.common.entity.Customer;
import com.example.jpa_multi_db.common.repository.CustomerRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MyService {

	private final CustomerRepository customerRepository;

	public void doSomething() {
		// 공유 repository 사용
		Customer customer = customerRepository.findById(1L).get();
		//
		// // 데이터 소스별 repository 사용
		// Customer iprodbCustomer = customerRepository.iprodb().findById(1L).get();
		// Customer kprodbCustomer = customerRepository.kprodb().findById(1L).get();
	}
}