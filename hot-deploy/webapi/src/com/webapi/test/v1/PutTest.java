package com.webapi.test.v1;

import com.webapi.pojo.Book;
import com.webapi.v1.BookResource;

import org.apache.log4j.Logger;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.test.JerseyTest;
import org.glassfish.jersey.test.TestProperties;
import org.junit.Assert;
import org.junit.Test;
import org.ofbiz.base.util.Debug;

import javax.ws.rs.client.Entity;
import javax.ws.rs.core.Application;
import javax.ws.rs.core.MediaType;
import java.util.concurrent.atomic.AtomicLong;

public class PutTest extends JerseyTest {
    public static AtomicLong clientBookSequence = new AtomicLong();

    @Override
    protected Application configure() {
        enable(TestProperties.LOG_TRAFFIC);
        enable(TestProperties.DUMP_ENTITY);
        return new ResourceConfig(BookResource.class);
    }

    @Test
    public void testNew() {
        final Book newBook = new Book(clientBookSequence.incrementAndGet(), "book-" + System.nanoTime());
        MediaType contentTypeMediaType = MediaType.APPLICATION_XML_TYPE;
        MediaType acceptMediaType = MediaType.TEXT_PLAIN_TYPE;
        final Entity<Book> bookEntity = Entity.entity(newBook, contentTypeMediaType);
        final String lastUpdate = target("book").request(acceptMediaType).put(bookEntity, String.class);
        Assert.assertNotNull(lastUpdate);
        Debug.log(lastUpdate);
    }
}
