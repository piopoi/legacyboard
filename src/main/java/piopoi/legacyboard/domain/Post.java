package piopoi.legacyboard.domain;

import java.time.LocalDateTime;
import lombok.Data;

@Data
public class Post {
    private Long id;
    private String title;
    private String content;
    private Long memberId;
    private LocalDateTime createdAt;
}
