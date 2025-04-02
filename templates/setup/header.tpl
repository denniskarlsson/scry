<?php
// SPDX-License-Identifier: BSD-3-Clause

////////////////////////////////////////////////////////////////////////////////
// Note: setup is a specialized template for setup only.  See the
//       default template for a working example.
//

// force all pages to list view
//
if ($VIEW != 'list') {
  header('Location: ' . build_url('list', 0, ''));
  exit();
} // if

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Scry: Simple PHP Photo Album</title>
  <link rel="stylesheet" href="<?php print $T['template_url']; ?>/scry.css">
</head>
<body>

<table style="width: 85%; border: 0; padding: 5px; border-spacing: 0; margin-left: auto; margin-right: auto;">
  <tr>
    <td>

<div class="header">
  Scry: Simple PHP Photo Album
</div>

    </td>
    <td style="text-align: right;">

<img src="<?php print $T['template_url']; ?>/icon.png" alt="" style="width: 10%; height: 10%;">

    </td>
  </tr>

  <tr>
    <td colspan="2">

<div class="body">
