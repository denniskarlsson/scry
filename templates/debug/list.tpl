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

print('<p>Directories:<br><table>');
foreach ($T['dirs'] as $k => $d) {
  print('<tr><td>' . $d['name'] . '</td><td><a href="' . $d['list_url'] . '">' . $d['list_url'] . '</a></td></tr>');
}
print('</table>');

print('<p>Files:<br><table>');
foreach ($T['files'] as $k => $f) {
  print('<tr><td>' . $f['name'] . '</td><td><a href="' . $f['view_url'] . '">' . $f['view_url'] . '</a><br>' . $f['thumb_url'] . '</td></tr>');
}
print('</table>');

?>
