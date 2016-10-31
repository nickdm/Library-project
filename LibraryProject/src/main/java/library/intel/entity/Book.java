package library.intel.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import java.io.Serializable;
/**
 * @author Ranga Reddy
 * @version 1.0
 * 
 */
@Entity
@Table(name = "Books")
public class Book implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
	
    @Column
    private String title;
    
    @Column
    private String author;
    
    @Column
    private String publisher;

    @Column
    private Integer room;

    @Column
    private Integer shelf;

    @Column
    private Boolean availability;

    private Boolean status;

    public Book() {
    }
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public Integer getRoom() {
        return room;
    }

    public void setRoom(Integer room) {
        this.room = room;
    }

    public Integer getShelf() {
        return shelf;
    }

    public void setShelf(Integer shelf) {
        this.shelf = shelf;
    }

    public Boolean getAvailability() {
        return availability;
    }

    public String getStatus() {
        if (availability)
            return "info"; else return "danger";
    }

    public void setAvailability(Boolean availability) {
        this.availability = availability;
    }
    
    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", title=" + title +
                ", author=" + author +
                ", publisher=" + publisher +
                ", room=" + room +
                ", shelf=" + shelf +
                ", availability=" + availability +
                '}';
    }
}