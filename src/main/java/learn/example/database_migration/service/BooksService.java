package learn.example.database_migration.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import learn.example.database_migration.api.dto.BooksRequestDTO;
import learn.example.database_migration.api.dto.BooksResponseDTO;
import learn.example.database_migration.entity.Book;

@Service
public class BooksService extends BaseService<Book, Long, BooksResponseDTO, BooksRequestDTO>{
    public Book mapToEntity(BooksRequestDTO request) {
        Book book = new Book(request.getId(), request.getTitle(), request.getDescription(), request.getAuthor(), request.getYear(), request.getPrice(), request.getStock());
        return book;
    }

    public BooksResponseDTO mapToResponse(Book book) {
        BooksResponseDTO bookResponse = BooksResponseDTO.builder() 
        .id(book.getId())
        .title(book.getTitle())
        .author(book.getAuthor())
        .description(book.getDescription())
        .createdAt(book.getCreatedAt())
        .updateAt(book.getUpdateAt())
        .build();
        return bookResponse;
    }

    public List<BooksResponseDTO> mapToResponse(List<Book> books) {
        List<BooksResponseDTO> booksResponse = books.stream()
            .map((book) -> new BooksResponseDTO(book.getId(), book.getCreatedAt(), book.getUpdateAt(), book.getTitle(), book.getDescription(), book.getAuthor(), book.getPrice(), book.getStock(), book.getPublication_year()))
            .collect(Collectors.toList());

        return booksResponse;
    }
}
