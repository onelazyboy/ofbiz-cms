package com.restful.application;

import org.glassfish.jersey.server.ResourceConfig;

import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;

public class RestApplication extends ResourceConfig {
	public RestApplication() {
		packages("com.restful.v1");
		register(JacksonJsonProvider.class);
	}
}
