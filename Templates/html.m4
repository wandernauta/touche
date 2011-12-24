dnl
dnl html.m4
dnl A touche template file for HTML5 documents.
dnl
dnl Options:
dnl - author: Include a <meta name="author"> tag with your name.
dnl - jquery: Include Google-hosted jQuery.
dnl - viewport: Include a viewport declaration for mobile devices.
dnl
<!DOCTYPE html>
<html`'ifdef(`lang', ` `lang'="en"')>
  <head>
    <title>FILENAME</title>
    <meta charset="utf-8">
ifdef(`author', `    <meta name="`author'" content="FULLNAME">
')dnl
ifdef(`viewport', `    <meta name="`viewport'" content="width=device-width,initial-scale=1">
')dnl
  </head>
  <body>

ifdef(`jquery', `    <script src="//ajax.googleapis.com/ajax/libs/`jquery'/1.7.1/`jquery'.min.js"></script>
')dnl
  </body>
</html>
