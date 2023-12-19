package com.example.jpa_multi_db.common.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.jpa_multi_db.common.entity.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
