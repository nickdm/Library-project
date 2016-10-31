
package library.intel.service;
import library.intel.entity.Book;

import java.util.List;

/**
 * @author Ranga Reddy
 * @version 1.0
 */
public interface BookService {
	public long createBook(Book book);
    public Book updateBook(Book book);
    public void deleteBook(long id);
    public List<Book> getAllBooks();
    public Book getBook(long id);
	public List<Book> getAllBooks(String bookName);
}
