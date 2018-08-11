package com.webapi.test;

import com.webapi.entity.Book;
import com.webapi.resource.BookResource;

import org.apache.log4j.Logger;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.test.JerseyTest;
import org.glassfish.jersey.test.TestProperties;
import org.junit.Assert;
import org.junit.Test;

import javax.ws.rs.client.Entity;
import javax.ws.rs.core.Application;
import javax.ws.rs.core.MediaType;
import java.util.concurrent.atomic.AtomicLong;

public class PostTest extends JerseyTest {
    private final static Logger LOGGER = Logger.getLogger(PostTest.class);
    public static AtomicLong clientBookSequence = new AtomicLong();

    @Override
    protected Application configure() {
        enable(TestProperties.LOG_TRAFFIC);
        enable(TestProperties.DUMP_ENTITY);
        return new ResourceConfig(BookResource.class);
    }

    @Test
    public void testCreate() {
        final Book newBook = new Book("book-" + System.nanoTime());
        MediaType contentTypeMediaType = MediaType.APPLICATION_JSON_TYPE;
        MediaType acceptMediaType = MediaType.APPLICATION_JSON_TYPE;
        final Entity<Book> bookEntity = Entity.entity(newBook, contentTypeMediaType);
        final Book book = target("book").request(acceptMediaType).post(bookEntity, Book.class);
        Assert.assertNotNull(book.getBookId());
        LOGGER.debug("Server Id=" + book.getBookId());
    }
}