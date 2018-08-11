package com.webapi.test;

import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.test.JerseyTest;
import org.junit.Assert;
import org.junit.Test;

import com.webapi.resource.BookResource;

import javax.ws.rs.core.Application;
import javax.ws.rs.core.Response;

public class GetTest extends JerseyTest {
    @Override
    protected Application configure() {
        return new ResourceConfig(BookResource.class);
    }

    @Test
    public void testGet() {
        final Response response = target("book").request().get();
        Assert.assertEquals("150M", response.readEntity(String.class));
    }
}
