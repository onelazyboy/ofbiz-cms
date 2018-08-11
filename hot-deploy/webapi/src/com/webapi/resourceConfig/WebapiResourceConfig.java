package com.webapi.resourceConfig;

import org.glassfish.jersey.jackson.JacksonFeature;
import org.glassfish.jersey.message.filtering.SecurityEntityFilteringFeature;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.ServerProperties;
import org.glassfish.jersey.server.filter.RolesAllowedDynamicFeature;
import org.slf4j.Logger;

import com.webapi.provider.ContainerAuthFilter;
import com.webapi.resource.BookResource;

import io.swagger.jaxrs.config.BeanConfig;

public class WebapiResourceConfig extends ResourceConfig {
	public WebapiResourceConfig() {
		register(Logger.class);
		packages(BookResource.class.getPackage().getName());
		property(ServerProperties.MOXY_JSON_FEATURE_DISABLE, "true");
		register(JacksonFeature.class);
		register(RolesAllowedDynamicFeature.class);
		register(SecurityEntityFilteringFeature.class);
		register(ContainerAuthFilter.class);
		
		//io.swagger.jaxrs.listing;
		//javax.ws.rs.core.Application
		
		BeanConfig beanConfig = new BeanConfig();
		beanConfig.setTitle("API接口");
		beanConfig.setDescription("微服务api接口,用于手机端,web端.");
		beanConfig.setContact("PYJ@xx.com");
        beanConfig.setVersion("1.0");
        beanConfig.setSchemes(new String[]{"http"});
        beanConfig.setHost("127.0.0.1:8080");
        beanConfig.setBasePath("/webapi/v1");
        beanConfig.setResourcePackage(BookResource.class.getPackage().getName());
        beanConfig.setScan(true);

	}
}