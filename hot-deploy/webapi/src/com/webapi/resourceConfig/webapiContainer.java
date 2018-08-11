package com.webapi.container;

import java.net.InetAddress;
import java.net.URI;
import java.net.UnknownHostException;
import javax.ws.rs.core.UriBuilder;

import org.glassfish.grizzly.http.server.HttpServer;
import org.glassfish.jersey.grizzly2.httpserver.GrizzlyHttpServerFactory;
import org.ofbiz.base.container.Container;
import org.ofbiz.base.container.ContainerConfig;
import org.ofbiz.base.container.ContainerException;
import org.ofbiz.base.util.Debug;


public class webapiContainer implements Container {
	public static final String module = webapiContainer.class.getName();

	protected String configFile;

	@Override
	public void init(String[] args, String name, String configFile) throws ContainerException {
		// TODO Auto-generated method stub
		this.configFile = configFile;
		
	}

	@Override
	public boolean start() throws ContainerException {
		Debug.log("Start server container ", module);

		// make sure the subclass sets the config name
		if (this.getContainerConfigName() == null) {
			throw new ContainerException("Unknown container config name");
		}
		// get the container config
		ContainerConfig.Container cc = ContainerConfig.getContainer(this.getContainerConfigName(), configFile);
		if (cc == null) {
			throw new ContainerException(
					"No " + this.getContainerConfigName() + " configuration found in container config!");
		}
		//
		String port = ContainerConfig.getPropertyValue(cc, "port", "8443");
		String mountPoint = ContainerConfig.getPropertyValue(cc, "mountPoint", "webapi");
		String defaultHost = "";
		try {
			defaultHost = InetAddress.getLocalHost().getHostAddress();
		} catch (UnknownHostException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		WebapiResourceConfig config = new WebapiResourceConfig();
		URI baseUri1 = UriBuilder.fromUri("http://"+defaultHost+"/").port(Integer.parseInt(port)).path(mountPoint).build(); 
		try {
			final HttpServer server = GrizzlyHttpServerFactory.createHttpServer(baseUri1, config);
//			Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() {
//				@Override
//				public void run() {
//					server.shutdownNow();
//				}
//			}));
//			Debug.log(String.format("%nTry out %s%s", baseUrl, ""));
//			Thread.currentThread().join();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public void stop() throws ContainerException {
		// TODO Auto-generated method stub

	}

	public String getContainerConfigName() {
		return "webapi-container";
	}

}
