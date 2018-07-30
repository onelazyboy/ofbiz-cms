package com.restful.v1;

import com.restful.pojo.Book;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.atomic.AtomicLong;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

import org.ofbiz.base.util.Debug;

@Path("book")
public class BookResource {
	public static AtomicLong serverBookSequence = new AtomicLong();
    @GET
    public String getWeight() {
    	 return "150M";
    }

    @PUT
    @Produces(MediaType.TEXT_PLAIN)
    @Consumes(MediaType.APPLICATION_JSON)
    public String newBook(Book book) {
        SimpleDateFormat f = new SimpleDateFormat("d MMM yyyy HH:mm:ss");
        Date lastUpdate = Calendar.getInstance().getTime();
        //...
        //{"book":[{"bookId":"1","bookName":"english","publisher":"no101001"}]}
        Debug.log(book.getBookId().toString());
        return f.format(lastUpdate);
    }

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    public Book createBook(Book book) {

        book.setBookId(serverBookSequence.incrementAndGet());
        return book;
    
    }

    @DELETE
    public void delete(@QueryParam("bookId") final long bookId) {
        Debug.log(String.valueOf(bookId));
    
    }

}
