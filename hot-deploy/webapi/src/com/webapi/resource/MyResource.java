package com.webapi.resource;

import javax.annotation.security.PermitAll;
import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

/**
 * Root resource (exposed at "myresource" path)
 */
@PermitAll
@Path("myresource")
@Api(tags="MyResource测试")
public class MyResource {

    /**
     * Method handling HTTP GET requests. The returned object will be sent
     * to the client as "text/plain" media type.
     *
     * @return String that will be returned as a text/plain response.
     */
	@PermitAll
    @GET
    @Produces(MediaType.TEXT_PLAIN)
	@ApiOperation(value = "getIt测试",notes="功能说明", response = MyResource.class)
    public String getIt(@ApiParam(value="参数") @QueryParam("name") String name) {
        return "Got it v1!"+name;
    }
}
