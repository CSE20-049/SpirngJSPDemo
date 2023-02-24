package movieratingsystemusingjsp.controller;

import movieratingsystemusingjsp.model.Movie;
import movieratingsystemusingjsp.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MovieController {

    @Autowired
    MovieService movieService;

    @GetMapping("/")
    public String viewMainMenuPage(){
        return "index";
    }

    @GetMapping("view_movies_details")
    public String viewAllMoviesDetails(@ModelAttribute("message") String message, Model model){
        model.addAttribute("moviesList", movieService.getAllMovies());
        model.addAttribute("message", message);

        return "view_movies_details";
    }

    @GetMapping("/add_movie")
    public String addNewMovie(@ModelAttribute("message") String message, Model model){
        model.addAttribute("movie", new Movie());
        model.addAttribute("message", message);

        return "add_movie";
    }

    @PostMapping("/save_movie")
    public String saveMovie(Movie movie, RedirectAttributes redirectAttributes){
        if (movieService.saveOrUpdateMovie(movie)){
            redirectAttributes.addFlashAttribute("message", "save successful");
            return "redirect:/view_movies_details";
        } else {
            redirectAttributes.addFlashAttribute("message", "save unsuccessful");
            return "redirect:/add_movie";
        }
    }

    @GetMapping("/update_movie/{id}")
    public String updateMovie(@PathVariable Long id, Model model){
        model.addAttribute("movie", movieService.getMovieByID(id));

        return "update_movie";
    }
    @PostMapping("/save_update")
    public String saveUpdate(Movie movie, RedirectAttributes redirectAttributes){
        if (movieService.saveOrUpdateMovie(movie)){
            redirectAttributes.addFlashAttribute("message", "save successful");
            return "redirect:/view_movies_details";
        } else {
            redirectAttributes.addFlashAttribute("message", "save unsuccessful");
            return "redirect:/update_movie";
        }
    }

    @GetMapping("/delete_movie/{id}")
    public String deleteMovie(@PathVariable Long id, RedirectAttributes redirectAttributes){
        if (movieService.deleteMovie(id)){
            redirectAttributes.addAttribute("message", "delete unsuccessful");
        } else {
            redirectAttributes.addAttribute("message", "Movie successfully deleted");
        }
        return "redirect:/view_movies_details";
    }
}
