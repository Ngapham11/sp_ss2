package com.ra.sp_ss2.service;

import com.ra.sp_ss2.model.Movie;
import com.ra.sp_ss2.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class MovieService {
    @Autowired
    private MovieRepository movieRepository;
    public Page<Movie> findAll(Pageable pageable) {
        return movieRepository.findAll(pageable);
    }
    public boolean existsByTitle(String title){
        return movieRepository.existsByTitle(title);
    }
    public Movie save(Movie movie) {
        return movieRepository.save(movie);
    }
}
