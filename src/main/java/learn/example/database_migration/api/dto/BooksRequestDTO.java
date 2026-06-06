package learn.example.database_migration.api.dto;

import java.math.BigDecimal;
import java.time.Instant;
import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BooksRequestDTO extends BaseDTO<Long>{

    public BooksRequestDTO(Long id, Instant timestamp, LocalDateTime createdAt, LocalDateTime updateAt, String title,
            String description, String author, BigDecimal price, int stock, int year) {
        super(id, timestamp, createdAt, updateAt);
        this.year = year;
        this.title = title;
        this.description = description;
        this.author = author;
        this.price = price;
        this.stock = stock;
    }
    private String title;
    private String description;
    private String author;
    private BigDecimal price;
    private int stock;
    private int year;
}
