<?php
// SPDX-License-Identifier: BSD-3-Clause
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title><?php print $T['title']; ?></title>
  <link rel="stylesheet" href="<?php print $T['template_url']; ?>/scry.css">
</head>
<body>

<table style="width: 85%; border: 0; padding: 5px; border-spacing: 0; margin-left: auto; margin-right: auto;">
  <tr>
    <td style="text-align: left;">

<?php
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
