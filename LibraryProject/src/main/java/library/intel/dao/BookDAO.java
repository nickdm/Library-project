/**
 * 
 */
package library.intel.dao;

import java.util.List;

import library.intel.entity.Book;

/**
 * @author Ranga Reddy
 * @version 1.0
 */
public interface BookDAO {
	public long createBook(Book book);
    public Book updateBook(Book book);
    public void deleteBook(long id);
    public List<Book> getAllBooks();
    public Book getBook(long id);
	public List<Book> getAllBooks(String bookName);
}
