package com.ra.sp_ss2.service;

import com.ra.sp_ss2.model.Movie;
import com.ra.sp_ss2.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class MovieService {
    @Autowired
    private MovieRepository movieRepository;
    public Page<Movie> findAll(Pageable pageable,String searchTitle) {
        if(searchTitle!=null&&!searchTitle.trim().isEmpty()){
            return movieRepository.findByTitleContainingIgnoreCase(searchTitle,pageable);
        }return movieRepository.findAll(pageable);

    }
    public boolean existsByTitle(String title){
        return movieRepository.existsByTitle(title);
    }
    @Transactional
    public Movie save(Movie movie) {
        if (movie==null){
            throw new IllegalArgumentException("Hãy nhập đẩy đủ thông tin");
        }
        return movieRepository.save(movie);
    }
    @Transactional
    public boolean deleteById(int id) {
        if(movieRepository.existsById(id)){
        movieRepository.deleteById(id);
        return true;}
        return false;
    }
    public List<Movie>  findByTitle(String title){
        if(!title.isEmpty()){
            throw new IllegalArgumentException("Xin mời nhập tên cần tìm....");
        }
      return   movieRepository.findByTitle(title);
    }
}
