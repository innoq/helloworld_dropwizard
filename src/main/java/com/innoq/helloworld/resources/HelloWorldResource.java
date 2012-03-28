package com.innoq.helloworld.resources;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.innoq.helloworld.models.Profile;
import com.innoq.helloworld.views.ProfileView;

@Path("/hello-world")
@Produces(MediaType.TEXT_PLAIN)
public class HelloWorldResource {

	private final EntityManagerFactory emf;

	public HelloWorldResource(EntityManagerFactory emf) {
		this.emf = emf;
	}

	@GET
	public String getAll() {
		EntityManager em = emf.createEntityManager();
		List<Profile> profileList =
                em.createQuery("SELECT p FROM Profile p", Profile.class).getResultList();
		StringBuffer response = new StringBuffer();
		for (Profile profile : profileList) {
			response.append(profile.getId()).append(": ").append(profile.getFirstName()).append("\n");
		}
		return response.toString();
	}

	@GET
	@Path("{id}")
	@Produces(MediaType.TEXT_HTML)
	public ProfileView getById(@PathParam("id") Long id) {
		EntityManager em = emf.createEntityManager();
		Profile profile = em.find(Profile.class, id);
		return new ProfileView(profile);
	}
}
