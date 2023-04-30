<?php
// SPDX-License-Identifier: BSD-3-Clause
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <title><?php print $T['title']; ?></title>
  <link rel="stylesheet" href="<?php print $T['template_url']; ?>/scry.css" />
</head>
<body>

<table cellpadding="5" cellspacing="0" width="85%" border="0" align="center">
  <tr>
    <td align="left">
<?php

//while(list($k, $p) = @each($T['path'])) {
foreach ($T['path'] as $k => $p) {
  print(" <a href=\"$p[url]\">$p[name]</a> / ");
}

if (@$T['current']['name'] != '') {
  print $T['current']['name'];
}

?>
    </td>
  </tr>
</table>
