package piopoi.legacyboard.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import piopoi.legacyboard.domain.Post;
import piopoi.legacyboard.service.PostService;

@Controller
@RequestMapping("/posts")
@RequiredArgsConstructor
public class PostController {

    private final PostService postService;

    @GetMapping("/{id}")
    public String view(@PathVariable Long id, Model model) {
        model.addAttribute("post", postService.getPost(id));
        return "post/view";
    }

    @GetMapping
    public String list(Model model) {
        model.addAttribute("posts", postService.getAllPosts());
        return "post/list";
    }

    @GetMapping("/registerForm")
    public String registerForm(Model model) {
        model.addAttribute("post", new Post());
        return "post/registerForm";
    }

    @PostMapping
    public String create(@ModelAttribute Post post) {
        postService.addPost(post);
        return "redirect:/posts/" + post.getId();
    }

    @GetMapping("/updateForm")
    public String updateForm(@RequestParam Long id, Model model) {
        model.addAttribute("post", postService.getPost(id));
        return "post/updateForm";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute Post post) {
        postService.updatePost(post);
        return "redirect:/posts/" + post.getId();
    }

    @PostMapping("/delete")
    public String delete(@RequestParam Long id) {
        postService.deletePost(id);
        return "redirect:/posts";
    }
}
