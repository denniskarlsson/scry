<?php
//
// Scry - Simple PHP Photo Album
// Copyright 2004 James Byers <jbyers@users.sf.net>
// http://scry.org
//
// Scry is distributed under a BSD License.  See LICENSE for details.
//
// $Id: header.tpl,v 1.7 2004/09/30 20:58:17 jbyers Exp $
//
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="Content-Style-Type" content="text/css" />
  <title><?php print $T['title']; ?></title>
  <link rel="stylesheet" href="<?php print $T['template_url']; ?>/scry.css" />
</head>
<body>

<table cellpadding="5" cellspacing="0" width="85%" border="0" align="center">
  <tr>
    <td align="left">
<?php

while(list($k, $p) = @each($T['path'])) {
  print(" <a href=\"$p[url]\">$p[name]</a> / ");
}

if (@$T['current']['name'] != '') {
  print $T['current']['name'];
}

?>
    </td>
  </tr>
</table>