<?php
// SPDX-License-Identifier: BSD-3-Clause

////////////////////////////////////////////////////////////////////////////////
// Note: debug is a specialized template set designed for debugging
//       purposes. This template does not display any images.
//

print('<p>Path:<br>');
foreach ($T['path'] as $k => $p) {
  print(' <a href="' . $p['url'] . '">' . $p['name'] . '</a> / ');
}
?>

<p>
Previous Image:<br />
<?php print("<a href=\"" . $T['prev']['view_url'] . "\">" . $T['prev']['view_url'] . "</a><br /><a href=\"" . $T['prev']['thumb_url'] . "\">" . $T['prev']['thumb_url'] . "</a><br /><a href=\"" . $T['prev']['image_url'] . "\">" . $T['prev']['image_url'] . "</a><br />" . $T['prev']['name']); ?>
</p>

<p>
Current Image:<br />
<?php print("<a href=\"" . $T['current']['view_url'] . "\">" . $T['current']['view_url'] . "</a><br /><a href=\"" . $T['current']['thumb_url'] . "\">" . $T['current']['thumb_url'] . "</a><br /><a href=\"" . $T['current']['image_url'] . "\">" . $T['current']['image_url'] . "</a><br />" . $T['current']['name']); ?>
</p>

<p>
Next Image:<br />
<?php print("<a href=\"" . $T['next']['view_url'] . "\">" . $T['next']['view_url'] . "</a><br /><a href=\"" . $T['next']['thumb_url'] . "\">" . $T['next']['thumb_url'] . "</a><br /><a href=\"" . $T['next']['image_url'] . "\">" . $T['next']['image_url'] . "</a><br />" . $T['next']['name']); ?>
</p>
