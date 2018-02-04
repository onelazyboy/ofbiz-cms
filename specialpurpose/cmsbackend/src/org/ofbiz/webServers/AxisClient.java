package org.ofbiz.webServers;

import java.util.*;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.StringReader;
import javax.xml.namespace.*;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.stream.FactoryConfigurationError;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

import org.apache.axiom.om.OMAbstractFactory;
import org.apache.axiom.om.OMElement;
import org.apache.axiom.om.OMException;
import org.apache.axiom.om.OMFactory;
import org.apache.axiom.om.impl.builder.StAXOMBuilder;
import org.apache.axis2.AxisFault;
import org.apache.axis2.Constants;
import org.apache.axis2.addressing.EndpointReference;
import org.apache.axis2.client.Options;
import org.apache.axis2.client.ServiceClient;
import org.ofbiz.base.util.Debug;
import org.ofbiz.base.util.UtilGenerics;
import org.ofbiz.base.util.UtilMisc;
import org.ofbiz.entity.serialize.SerializeException;
import org.ofbiz.service.engine.SoapSerializer;
import org.xml.sax.SAXException;

import com.google.gson.Gson;

public class AxisClient {	 

	   
	public static void main(String[] args) {
		Gson json = new Gson();
		Map<String, Object> results = null;
		try {
			ServiceClient client = new ServiceClient();
			 //设置 endpoint 地址
			Options options = new Options();
			options.setTo(new EndpointReference("http://127.0.0.1:8443/cmsbackend/control/SOAPService/findTestService"));
			client.setOptions(options);
			// 设置传输方式,可使用 TRANSPORT_JMS;TRANSPORT_HTTP;TRANSPORT_MAIL;TRANSPORT_TCP;
			options.setTransportInProtocol(Constants.TRANSPORT_HTTP);

			OMFactory factory = OMAbstractFactory.getOMFactory();
			// 设置请求的 SOAP 信息
			OMElement payload = factory.createOMElement(new QName("http://ofbiz.apache.org/service/", "findTestService"));
			// 参数
			String xmlParameters = SoapSerializer.serialize(UtilMisc.toMap("userid", "8888"));
			XMLStreamReader reader = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(xmlParameters));
			StAXOMBuilder builder = new StAXOMBuilder(reader);

			OMElement parameterSer = builder.getDocumentElement();
			payload.addChild(parameterSer.getFirstElement());

			// 把设置的地址、传输方式绑定到Service请求当中
			OMElement respOMElement = client.sendReceive(payload);
			client.cleanupTransport();
			// 输出结果
			results = UtilGenerics.cast(SoapSerializer.deserialize(respOMElement.toString(), null));
			System.out.println(results.toString());
		} catch (AxisFault e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SerializeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (OMException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (XMLStreamException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FactoryConfigurationError e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(results.toString());
		String str = json.toJson(results);
		System.out.println(str);

	}
		
		
}
