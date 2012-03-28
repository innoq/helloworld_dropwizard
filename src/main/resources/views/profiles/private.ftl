<#-- @ftlvariable name="" type="com.innoq.helloworld.views.ProfileView" -->
<#include "../layouts/header.html">

			<h1>Private Profile</h1>

			<div id="col-one">

				<div class="profile-image">
					<img alt="${profile.fullName}" src="/system/photos/${profile.photoFileName}" />
				</div>
				<!-- /profile-image -->

				<div class="profile-actions">
					<a href="http://helloworld.innoq.com/profiles/${profile.id}/edit">
						&raquo; Edit profile
					</a>  </div>
					<!-- /profile-actions -->

					<h2>User's profile updates</h2>

					<div class="profile-stream">
					<#list profile.statuses as status>
						<div class="profile-stream-item">
						  <span class="profile-stream-item-date">${status.createdAt}</span>
						  ${status.message}
						</div>
	  				</#list>
					</div>
					<!-- /profile-stream -->

				</div>
				<!-- /col-one -->

				<div id="col-two">
					<div class="profile-center">

						<h3>${profile.fullName}</h3>
						<p>Speaker at <strong>${profile.company}</strong></p>

					<#if profile.businessAddress??>
						<div class="profile-center-company">
							<strong>Company Adress</strong>
							<#assign address = profile.businessAddress >
							<#include "_address.ftl">

						</div>
					</#if>

					<#if profile.privateAddress??>
						<div class="profile-center-company">
							<strong>Private Adress</strong>
							<#assign address = profile.privateAddress >
							<#include "_address.ftl">
						</div>
					</#if>

						<h4>About Me</h4>
						<p>${profile.about}</p>

						<h4>Contact Data</h4>

						<div class="profile-center-contact-label">Company email</div>
						<div class="profile-center-contact-data">dlong@lajo.mil</div>
						<div class="clear"></div>


						<div class="profile-center-contact-label">Private email</div>
						<div class="profile-center-contact-data">jwest@wikizz.com</div>
						<div class="clear"></div>


						<div class="profile-center-contact-label">Company phone</div>
						<div class="profile-center-contact-data">9-(601)619-8793</div>
						<div class="clear"></div>


						<div class="profile-center-contact-label">Mobile phone</div>
						<div class="profile-center-contact-data">5-(931)159-8183</div>
						<div class="clear"></div>


						<div class="profile-center-contact-label">Private phone</div>
						<div class="profile-center-contact-data">6-(888)291-0717</div>
						<div class="clear"></div>


					</div>

<!--
<a href="#" title="" class="button-blue">Send Message</a>
-->

</div>
<!-- /col-two -->

<div id="col-three">
	<!-- TODO limit to accepted relations -->
	<h2>User's contacts ()</h2>

	<div class="contact-list-small">
	<!-- causes SQL Exception JdbcSQLException: Feld "RELATIONS0_.ATTR_TYPE"
	<#list profile.relations as contact>
		<div class="contact-list-small-item">
			<div class="contact-list-small-img">
				<a href="/profiles/${contact.source.id}"><img alt="15" border="0" src="/system/photos/${contact.source.id}.jpg?1320656197" /></a>
			</div>
			<div class="contact-list-small-text">
				<div class="contact-list-small-username"><a href="/profiles/${contact.source.id}">${contact.source.fullName}</a></div>
				<div class="contact-list-small-title">${contact.source.company}</div>
			</div>
			<div class="clear"></div>
		</div>
	</#list>
	-->
	</div>
	<!-- /contact-list-small -->
</div>
<!-- /col-three -->

<div class="clear"><!-- clear --></div>


<!-- FOOTER -->
<#include "../layouts/footer.html">