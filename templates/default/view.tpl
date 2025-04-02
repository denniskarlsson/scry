<?php
// SPDX-License-Identifier: BSD-3-Clause
?>

<table style="width: 85%; border: 0; padding: 5px; border-spacing: 0; margin-left: auto; margin-right: auto;">
  <tr>
    <td style="width: 100%; text-align: center;" id="t_main">

      <table style="width: 100%; text-align: center; border: 0; padding: 0; border-spacing: 0;">
        <tr>
          <td style="width: 100%; text-align: center;" colspan="3">
            <div class="images">
            <img src="<?php print $T['current']['image_url']; ?>" alt="<?php print $T['current']['name']; ?>" width="<?php print $T['current']['view_size'][0]; ?>" height="<?php print $T['current']['view_size'][1]; ?>">
            <br>
            <?php print $T['current']['name']; ?>
            <br>
            <a href="<?php print($T['current']['raw_url']); ?>"><?php print($T['current']['image_size'][0] . 'x' . $T['current']['image_size'][1] . ', ' . $T['current']['file_size']); ?></a>
            </div>
          </td>
        </tr>

        <tr>
          <td style="width: 30%; text-align: left; vertical-align: bottom;">
            <div class="images">

<?php
if (isset($T['prev']) && is_array($T['prev'])) {
  print('<a style="text-decoration: none;" href="' . $T['prev']['view_url'] . '"><img src="' . $T['prev']['thumb_url'] . '" alt="previous"><br>&lt; previous</a>');
} else {
  print("&nbsp;");
}
?>

            </div>
          </td>
          <td style="width: 40%; text-align: center; vertical-align: bottom;">
            <p>

<?php
if (isset($T['current']['exif_data']) && is_array($T['current']['exif_data'])) {
  // there are hundreds of exif tags; this is just a sample based images from a Canon S30
  // see exif.php for more details
  //
  //print(eregi_replace('[^a-z0-9 /-_]', '', $T['current']['exif_data']['IFD0']['Model']) . "<br>");
  //print(eregi_replace('[^a-z0-9 /-_]', '', $T['current']['exif_data']['IFD0']['DateTime']) . "<br>");
  //print(eregi_replace('[^a-z0-9 /-_]', '', $T['current']['exif_data']['SubIFD']['ExposureTime']) . " - ");
  //print(eregi_replace('[^a-z0-9 /-_]', '', $T['current']['exif_data']['SubIFD']['FNumber']) . " - ");
  //print(eregi_replace('[^a-z0-9 /-_]', '', $T['current']['exif_data']['SubIFD']['Flash']) . "<br>");
  print(preg_replace('/[^a-z0-9 /-_]/', '', $T['current']['exif_data']['IFD0']['Model']) . "<br>");
  print(preg_replace('/[^a-z0-9 /-_]/', '', $T['current']['exif_data']['IFD0']['DateTime']) . "<br>");
  print(preg_replace('/[^a-z0-9 /-_]/', '', $T['current']['exif_data']['SubIFD']['ExposureTime']) . " - ");
  print(preg_replace('/[^a-z0-9 /-_]/', '', $T['current']['exif_data']['SubIFD']['FNumber']) . " - ");
  print(preg_replace('/[^a-z0-9 /-_]/', '', $T['current']['exif_data']['SubIFD']['Flash']) . "<br>");
}
?>
            </p>
          </td>
          <td style="width: 30%; text-align: right; vertical-align: bottom;">
            <div class="images">

<?php
if (isset($T['next']) && is_array($T['next'])) {
  print('<a style="text-decoration: none;" href="' . $T['next']['view_url'] . '"><img src="' . $T['next']['thumb_url'] . '" alt="next"><br>next &gt;</a>');
} else {
  print("&nbsp;");
}
?>

            </div>
          </td>
        </tr>
      </table>

    </td>
  </tr>
</table>
