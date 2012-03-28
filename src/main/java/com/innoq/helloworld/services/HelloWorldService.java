package com.innoq.helloworld.services;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.innoq.helloworld.config.HelloWorldConfiguration;
import com.innoq.helloworld.resources.HelloWorldResource;
import com.yammer.dropwizard.Service;
import com.yammer.dropwizard.config.Environment;
import com.yammer.dropwizard.views.ViewBundle;

public class HelloWorldService extends Service<HelloWorldConfiguration> {
    public static void main(String[] args) throws Exception {
        new HelloWorldService().run(args);
    }

    private HelloWorldService() {
        super("hello-world");
        addBundle(new ViewBundle());
    }

    @Override
    protected void initialize(HelloWorldConfiguration configuration,
                              Environment environment) {
		final EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("defaultPU");
		environment.addResource(new HelloWorldResource(emf));
    }

}