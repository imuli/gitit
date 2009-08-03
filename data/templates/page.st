<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
          "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Wiki - $pagetitle$</title>
    $if(printable)$
    <link href="$base$/_static/css/print.css" rel="stylesheet" media="all" type= "text/css" />
    $else$
    <link href="$base$/_static/css/reset-fonts-grids.css" rel="stylesheet" media="screen, projection" type="text/css" />
    <link href="$base$/_static/css/base-min.css" rel="stylesheet" media="screen, projection" type="text/css" />
    <link href="$base$/_static/css/hk-pyg.css" rel="stylesheet" media="screen, projection" type="text/css" />
    <link href="$base$/_static/css/screen.css" rel="stylesheet" media="screen, projection" type="text/css" />
    <link href="$base$/_static/css/print.css" rel="stylesheet" media="print" type= "text/css" />
    $endif$
    <!--[if IE]><link href="$base$/_static/css/ie.css" rel="stylesheet" media="screen, projection" type="text/css" /><![endif]-->
  </head>
  <body>
    <div id="doc3" class="yui-t1">
        <div id="yui-main">
          <div id="maincol" class="yui-b">
            $userbox()$
            $tabs$ 
            $content()$
            $footer()$
          </div>
        </div>
        <div id="sidebar" class="yui-b first">
          $logo()$
          $if(sitenav)$
            $sitenav()$
          $endif$
          $if(pagetools)$
            $pagetools()$
          $endif$
          $if(markuphelp)$
            $markuphelp()$
          $endif$
        </div>
    </div>
    $javascripts$
    <script type="text/javascript">
      \$.get("$base$/_user", {}, function(username, status) {
            \$("#username").text(username);
            if (username == "") {  // nobody logged in
               \$("#logoutlink").hide();
            } else {
               \$("#loginlink").hide();
            };
          });
    </script>
  </body>
</html>