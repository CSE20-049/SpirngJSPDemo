package movieratingsystemusingjsp.service;

import movieratingsystemusingjsp.model.Movie;
import org.springframework.stereotype.Service;

import java.util.List;


public interface MovieService {
    List<Movie> getAllMovies();

    Movie getMovieByID(Long id);

    boolean saveOrUpdateMovie(Movie movie);

    boolean deleteMovie(Long id);
}
