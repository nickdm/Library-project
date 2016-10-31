/**
 * 
 */
package library.intel.dao.impl;

import library.intel.dao.BookDAO;
import library.intel.entity.Book;
import library.intel.util.HibernateUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Ranga Reddy
 * @version 1.0
 */

@Repository
public class BookDAOImpl implements BookDAO {
    
	public BookDAOImpl() {
    	System.out.println("BookDAOImpl");
    }
	
	@Autowired
    private HibernateUtil hibernateUtil;

    @Override
    public long createBook(Book book) {
        return (long) hibernateUtil.create(book);
    }
    
    @Override
    public Book updateBook(Book book) {
        return hibernateUtil.update(book);
    }
    
    @Override
    public void deleteBook(long id) {
        Book book = new Book();
        book.setId(id);
        hibernateUtil.delete(book);
    }
    
    @Override
    public List<Book> getAllBooks() {
        return hibernateUtil.fetchAll(Book.class);
    }
    
    @Override
    public Book getBook(long id) {
        return hibernateUtil.fetchById(id, Book.class);
    }

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> getAllBooks(String bookName) {
		String query = "SELECT e.* FROM Books e WHERE e.title like '%"+ bookName +"%' OR e.author like '%"+ bookName +"%' OR e.publisher like '%"+ bookName +"%'";
		List<Object[]> bookObjects = hibernateUtil.fetchAll(query);
		List<Book> books = new ArrayList<Book>();
		for(Object[] bookObject: bookObjects) {
			Book book = new Book();
            long id = ((BigInteger) bookObject[0]).longValue();
            String title = (String) bookObject[1];
			String author = (String) bookObject[2];
            String publisher = (String) bookObject[3];
            Integer room = (Integer) bookObject[4];
            Integer shelf = (Integer) bookObject[5];
            Boolean availability = (Boolean) bookObject[6];
			book.setId(id);
			book.setTitle(title);
			book.setAuthor(author);
			book.setPublisher(publisher);
            book.setRoom(room);
            book.setShelf(shelf);
            book.setAvailability(availability);
			books.add(book);
		}
		System.out.println(books);
		return books;
	}
}