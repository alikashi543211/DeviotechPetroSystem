<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		.grey_color
		{
			color:#77767b;
		}
		.font_bold
		{
			font-weight: bold;
		}
		.yellow_color
		{
			color:#ffa401;
		}
		.mb_0
		{
			margin-bottom:-15px !important !important;
		}
		.footer_logos
		{
			display: flex;
		}
		.footer_img
		{
			width: 50px;
			height: 50px;
		}
		.blue_link
		{
			color:blue;
			text-decoration: underline;
		}
		.red_color
		{
			color:red !important;
		}
		.red_link
		{
			text-decoration: underline;
		}
	</style>
	@yield('css')
</head>
<body>

	@yield('content')

	<p>Thanks.</p>
	<p style="color:#77767b;font-weight: bold;">Kind Regards<br></p>
	<p style="color:#ffa401;font-weight: bold;margin-bottom:-15px !important;">Cathy Noonan</p>
	<p style="color:#77767b;">Office Administrator</p>
	<p style="margin-bottom: -15px;">
		<img style="border: none; -ms-interpolation-mode: bicubic; max-width: 100%;" height="100" src="{{ asset('admin_theme/petro-logo.png') }}">
	</p>
	<p style="margin-bottom:-15px !important;color:#77767b;">Inchirahilly, Crookstown,</p>
	<p style="margin-bottom:-15px !important;color:#77767b;">Co. Cork</p>
	<p style="margin-bottom:-15px !important;color:#77767b;">P14 N282</p>
	<p style="margin-bottom:-15px !important;color:#77767b;"><span style="color:#ffa401 !important;font-weight: bold;">T</span> 0217335690</p>
	<p style="margin-bottom:-15px !important;"><span style="color:#ffa401 !important;font-weight: bold;">E</span> <span style="color:blue;text-decoration: underline;">service@petrosystems.ie</span></p>
	<p><span style="color:blue;text-decoration: none;">www.petrosystems.ie</span></p>
	<div style="display: flex;">
		<p>
			<img style="width: 50px;height: 50px;" src="{{ asset('admin_theme/nsai_smallest.png') }}">
		</p>
		<p>
			<img style="width: 50px;height: 50px;" src="{{ asset('admin_theme/quality_nsai_smallest.jpg') }}">
		</p>
		
		<!-- Logo 3 -->
		<!-- Logo 4 -->
		<!-- Logo 5 -->
	</div>
	<p style="color:#77767b;font-weight: bold;margin-bottom: -15px;">Confidentiality</p>
	<p style="color:#77767b;font-weight: bold;">
		This email is confidential and may be privileged; it is for the use of the named recipient(s) only. If you have recieved it in error, please notify us immediately. Do not copy or disclose its contents to any person or body, and delete it from your computer system.
	</p>

	<p style="color:red;font-weight: bold;margin-bottom: -15px;">Notice: <span style="text-decoration: underline;">Coronavirus Crisis</span></p>
	<p style="color:red;font-weight: bold;margin-bottom:-15px !important;">
		We will for the duration of the health crisis, communicate with you by email or telephone only, in all circumstances where feasible. This is to reduce the inter-personal contact and to avoid any business disruption issues that may arise. We request that you please adopt the same approch in your communication with this office. You can email the writer at the email address above or, where sent on behalf of the writer, by return to the sender of the relevant email.
	</p>
</body>
</html>