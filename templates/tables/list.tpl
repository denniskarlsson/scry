<?php
// SPDX-License-Identifier: BSD-3-Clause
?>

<table style="width: 85%; border: 0; padding: 5px; border-spacing: 0; margin-left: auto; margin-right: auto;">
<?php
if (@count($T['dirs'])) {
?>
  <tr>
    <td style="width: 85%; text-align: center;" id="t_slim" colspan="2">

<?php
foreach ($T['dirs'] as $k => $d) {
  print('<div class="folder"><a href="' . $d['list_url'] . '"><img src="' . $T['template_url'] . '/folder.png" alt="'. $d['name'] . '" style="width: 72px; height: 72px; border: 0;"><br>' . $d['name'] . "</a></div>\n");
}
?>

    </td>
  </tr>

<?php
} // if dirs
if (@count($T['files'])) {
?>

  <tr>
    <td style="width: 100%;" id="t_main" colspan="2">
      <div class="images">

<?php
foreach ($T['files'] as $f => $k) {
  print('<a href="' . $k['view_url'] . '"><img src="' . $k['thumb_url'] . '" alt="' . $k['name'] . '" style="border: 0;"' . "></a>\n");
}
?>

      </div>
    </td>
  </tr>
  <tr>
    <td style="text-align: left;"><?php if ($T['offset_prev'] != -1) print('<a href="' . $T['offset_prev_url'] . '">&lt; previous page</a>'); ?></td>
    <td style="text-align: right;"><?php if ($T['offset_next'] != -1) print('<a href="' . $T['offset_next_url'] . '">next page &gt;</a>'); ?></td>
  </tr>
<?php

} // if files

if (!@count($T['dirs']) && !@count($T['files'])) {

?>

  <tr>
    <td style="width: 100%;" id="t_main" colspan="2">
      <div class="images">
        <p style="text-align: center;">No photos or folders found</p>
      </div>
    </td>
  </tr>

<?php } // if no dirs or files ?>

</table>
