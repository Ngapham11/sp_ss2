package com.ra.sp_ss2.controller;

import com.ra.sp_ss2.model.Movie;
import com.ra.sp_ss2.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class MovieController {
@Autowired
MovieService movieService;
    @GetMapping("")
    public String movieHome(@RequestParam(name = "page",defaultValue = "1")int page,
            @RequestParam(name = "size",defaultValue = "2")int size,
            Model model) {
        Page<Movie>moviePage=movieService.findAll(PageRequest.of(page - 1,size));
        List<Integer> pages=new ArrayList<>();
        int totalPages=moviePage.getTotalPages();
        if(totalPages > 0){
            for(int i = 1;i<=totalPages;i++){
                pages.add(i);
            }
        }

        model.addAttribute("moviePage",moviePage);
        model.addAttribute("pages",pages);
        model.addAttribute("size",size);
        model.addAttribute("movies",moviePage.getContent());
        return "movies";
    }
    @GetMapping("add")
    public String addMovie(Model model){
        Movie movie=new Movie();
        model.addAttribute("movie",movie);
        return "add";
    }
    @PostMapping("save")
    public String saveMovie( Movie movie,Model model){
        if (movieService.existsByTitle(movie.getTitle())) {
            model.addAttribute("movie",movie);
            return "add";
        }movieService.save(movie);
        return "redirect:/";
    }
}
