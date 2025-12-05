package com.ra.sp_ss2.repository;

import com.ra.sp_ss2.model.Movie;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MovieRepository extends JpaRepository<Movie, Integer> {
    boolean existsByTitle(String title);

    List<Movie> findByTitle(String title);

    Page<Movie> findByTitleContainingIgnoreCase(String searchTitle, Pageable pageable);
}
