package movieratingsystemusingjsp.service;

import movieratingsystemusingjsp.model.Movie;
import movieratingsystemusingjsp.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MovieServiceImpl implements MovieService {

    @Autowired
    MovieRepository movieRepository;

    @Override
    public List<Movie> getAllMovies(){

        return new ArrayList<>(movieRepository.findAll());
    }

    @Override
    public Movie getMovieByID(Long id){
        return movieRepository.findById(id).get();
    }

    @Override
    public boolean saveOrUpdateMovie(Movie movie){
        Movie updatedMovie = movieRepository.save(movie);

        return movieRepository.findById(updatedMovie.getMovieID()).isPresent();
    }

    @Override
    public boolean deleteMovie(Long id){
        movieRepository.deleteById(id);

        return movieRepository.findById(id).isPresent();
    }

}
