<#-- @ftlvariable name="" type="com.innoq.helloworld.views.ProfileView" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="de">

<head>

	<title>Helloworld</title>
	<meta name="csrf-param" content="authenticity_token"/>
	<meta name="csrf-token" content="x0sUw9kXTKF+5wqveTmXwduc7gIcMZyQGV8gpJzryCQ="/>
	<!-- css -->

	<link href="/stylesheets/reset.css?1320937057" media="screen" rel="stylesheet" type="text/css" />
	<link href="/stylesheets/main.css?1320937057" media="screen" rel="stylesheet" type="text/css" />
	<link href="/stylesheets/dropdown.css?1320937057" media="screen" rel="stylesheet" type="text/css" />
	<!-- override for IE-->

<!--[if IE 6]>
<style type="text/css" media="all">@import "/stylesheets/ie6.css";</style>
<![endif]-->

<!--[if IE 7]>
<style type="text/css" media="all">@import "/stylesheets/ie7.css";</style>
<![endif]-->

<script src="/javascripts/jquery-1.4.3.min.js?1320937057" type="text/javascript"></script>
<script src="/javascripts/rails.js?1320937057" type="text/javascript"></script>
<script src="/javascripts/application.js?1320937057" type="text/javascript"></script>
<script src="/javascripts/application.js?1320937057" type="text/javascript"></script>
</head>
<body>
	<a name="tothetop"></a>
	<div id="main">
		<esi:include src="/header" />
		<esi:remove>
		<div id="header">

			<div id="logo">
				<a href="http://helloworld.innoq.com/"><img alt="HelloWorld" src="/images/logo.png?1320937057" /></a>
			</div>
			<!-- /logo -->

			<div id="claim">
				<img alt="The demo community by innoQ" src="/images/claim.png?1320937057" />
			</div>
			<!-- /logo -->

			<div id="meta">
				<ul>
					<li><a href="/auth/logout">Logout</a></li>
					<li><a href="">Imprint</a></li>
					<li><a href="">About</a></li>
				</ul>
			</div>
			<!-- /meta -->

			<div id="search">
				<form accept-charset="UTF-8" action="http://helloworld.innoq.com/search" class="search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
					<ul>
						<li>
							<input type="search" name="q" class="search_term" value="" placeholder="Enter your search term here" />
						</li>
						<li class="submit_search"><input name="commit" type="submit" value="Search" /></li>
					</ul>
				</form>    </div>
				<!-- /search -->

				<ul id="menu">
					<li><a href="/" class="first">Dashboard</a></li>
					<li><a href="/statuses">World status feed</a></li>
					<li><a href="/contacts">Contacts</a></li>
					<li><a href="/profiles/${profile.id}/private">Profile</a></li>
					<li><a href="/home/about" class="last">About</a></li>
				</ul>
				<!-- /menu -->


			</div>
			<!-- /header -->







		</esi:remove>
		<div id="content-holder">

			<div class="flash_messages">
			</div>

			<h1>Private Profile</h1>

			<div id="col-one">

				<div class="profile-image">
					<img alt="${profile.fullName}" src="/system/photos/${profile.id}.jpg?1320656271" />
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
	<h2>User's contacts ($profile.relations.size())</h2>

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

</div>
<!-- /content-holder -->
</div>
<!-- /main -->


<div id="footer">
	<a href="#" title="">This is a sample application. Copyright innoQ 2010</a>
</div>


</body>
</html>