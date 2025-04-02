<?php
// SPDX-License-Identifier: BSD-3-Clause
?>

<table style="width: 85%; border: 0; padding: 5px; border-spacing: 0; margin-left: auto; margin-right: auto;">
  <tr>
    <td style="text-align: left;">
      <?php
      $url = preg_replace("/scry\//", "", $CFG_url_scry);
      echo "back to <a href=\"{$url}\">home page</a>";
      ?>
    </td>
    <td style="text-align: right;">
      Powered by <a href="<?php print($URL_PROJECT); ?>">Scry</a>
    </td>
  </tr>
</table>

</body>
</html>
