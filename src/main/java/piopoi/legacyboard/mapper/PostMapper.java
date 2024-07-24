package piopoi.legacyboard.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import piopoi.legacyboard.domain.Post;

@Mapper
public interface PostMapper {

    Post findById(Long id);

    List<Post> findAll();

    void insertPost(Post post);

    void updatePost(Post post);

    void deletePost(Long id);
}

