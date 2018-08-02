package com.webapi.container;

import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.ServerProperties;

import com.webapi.v1.BookResource;

public class WebapiResourceConfig extends ResourceConfig {
	public WebapiResourceConfig() {
		// packages(BookResource.class.getPackage().getName());
		property(ServerProperties.PROVIDER_PACKAGES, BookResource.class.getPackage().getName());
		property(ServerProperties.MOXY_JSON_FEATURE_DISABLE, "true");
//		property(ServerProperties.FEATURE_AUTO_DISCOVERY_DISABLE, "true");
		// register(WebapiResourceConfig.class);

	}
}