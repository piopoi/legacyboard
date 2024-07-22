package piopoi.legacyboard.service;

import java.time.LocalDateTime;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import piopoi.legacyboard.domain.Post;
import piopoi.legacyboard.mapper.PostMapper;

@Service
@RequiredArgsConstructor
public class PostService {

    private final PostMapper postMapper;

    @Transactional(readOnly = true)
    public List<Post> getAllPosts() {
        return postMapper.findAll();
    }

    @Transactional
    public void addPost(Post post) {
        post.setCreatedAt(LocalDateTime.now());
        postMapper.insertPost(post);
    }
}
