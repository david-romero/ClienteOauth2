package com.konecta.cliente.acciones;

import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.konecta.cliente.dominio.Foo;

@RestController
public class FooController {

	// API - read
	@PreAuthorize("#oauth2.hasScope('read')")
	@RequestMapping(method = RequestMethod.GET, value = "/foos/{id}")
	public Foo findById(@PathVariable long id) {
		return new Foo(Long.parseLong(randomNumeric(2)), UUID.randomUUID()
				.toString());
	}

	@PreAuthorize("#oauth2.hasScope('foo') and #oauth2.hasScope('write')")
	@RequestMapping(method = RequestMethod.POST, value = "/foos")
	@ResponseStatus(HttpStatus.CREATED)
	@ResponseBody
	public Foo create(@RequestBody final Foo foo) {
		foo.setId(Long.parseLong(randomNumeric(2)));
		return foo;
	}

	private String randomNumeric(int i) {
		// TODO Auto-generated method stub
		return UUID.randomUUID().toString().split("-")[0];
	}

}
