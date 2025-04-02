<?php
// SPDX-License-Identifier: BSD-3-Clause

////////////////////////////////////////////////////////////////////////////////
// Note: setup is a specialized template for setup only.  See the
//       default template for a working example.
//
?>

<p class="title">Setup</p>

<p>If you're reading this, you're looking at a fresh installation of
<a href="<?php print($URL_PROJECT); ?>">Scry</a>. On this page, we'll verify that
everything is set up correctly before you turn Scry on. Follow any
instructions in red and reload the page until everything is green.</p>

<p class="title">1. PHP and GD</p>

<table style="width: 100%;">
  <tr>
    <td style="width: 33%;">PHP version</td>
    <td>
<?php
  $version_parts = explode('.', PHP_VERSION);

if ($version_parts[0] < 4 ||
    ($version_parts[0] == 4 &&
     $version_parts[1] == 0)) {
  print('<span style="font-size: 1.2em; font-weight: bold; color: #990000;">PHP version <?php print PHP_VERSION; ?> installed</span><br>Please install PHP version 4.0.6 or newer to use Scry.  PHP is available at <a href="http://php.net">http://php.net</a>.');
} else {
  print('<span style="font-size: 1.2em; font-weight: bold; color: #009900;">OK </span>');
}
?>
    </td>
  </tr>
  <tr>
    <td style="width: 33%;">GD version</td>
    <td>
<?php
if ((!function_exists('ImageCopyResampled') &&
     !function_exists('ImageCopyResized')) ||
    !function_exists('ImageJPEG')) {
  print('<span style="font-size: 1.2em; font-weight: bold; color: #990000;">GD does not appear to be installed or does not support JPEG</span><br>Please install GD version 2.0 or newer with JPEG support as a PHP module.  Instructions on adding modules to PHP can be found in the installation documentation at <a href="http://php.net">http://php.net</a>');
} else {
  print('<span style="font-size: 1.2em; font-weight: bold; color: #009900;">OK</span>');
}
?>
    </td>
  </tr>
</table>

<p class="title">2. Photo Directory</p>

<table style="width: 100%;">
  <tr>
    <td style="width: 33%;">Valid?</td>
    <td style="font-size: 1.2em; font-weight: bold;">
<?php
if (!is_dir($CFG_path_images)) {
  print('<span style="color: #990000;">The photo directory does not appear to be valid</span>');
} else {
  print('<span style="color: #009900;">OK</span>');
}
?>
    </td>
  </tr>
  <tr>
    <td style="width: 33%;">Readable?</td>
    <td style="font-size: 1.2em; font-weight: bold;">
<?php
if (!is_readable($CFG_path_images)) {
  print('<span style="color: #990000;">Scry cannot read the photo directory</span>');
} else {
  print('<span style="color: #009900;">OK</span>');
}
?>
    </td>
  </tr>
</table>

<p class="title">3. Cache Directory</p>

<table style="width: 100%;">
  <tr>
    <td style="width: 33%;">Valid?</td>
    <td style="font-size: 1.2em; font-weight: bold;">
<?php
if (!is_dir($CFG_path_cache)) {
  print('<span style="color: #990000;">The cache directory does not appear to be valid</span>');
} else {
  print('<span style="color: #009900;">OK</span>');
}
?>
    </td>
  </tr>
  <tr>
    <td style="width: 33%;">Writable?</td>
    <td style="font-size: 1.2em; font-weight: bold;">
<?php
if (!is_writable($CFG_path_cache)) {
  print('<span style="color: #990000;">Scry cannot write to the cache directory</span>');
} else {
  print('<span style="color: #009900;">OK</span>');
}
?>
    </td>
  </tr>
</table>

<p class="title">4. Almost Done</p>

There's one last step to switch Scry on.  In setup.php, change <i><b>$CFG_template</b></i> to <i><b>'default'</b></i>.
This will switch on your photo album and you will no longer see this setup screen.  Any photos and folders you then place in your images Enjoy!

<p class="title">Troubleshooting</p>

If you're unable to get Scry to work, please visit the project page at <a href="<?php print($URL_PROJECT); ?>"><?php print($URL_PROJECT); ?></a>.
To help us understand your server environment better, please include the following text in any correspondence (email, mailing list message, bug report).  It will help us tremendously.

<?php
// GD
//
$gd_version = 'unknown';
if (function_exists('gd_info')) {
  $gd_info    = gd_info();
  $gd_version = $gd_info['GD Version'];
} // if
?>

<pre style="font-size: 0.8em;">

scry[<?php print SCRY_VERSION; ?>]_php[<?php print PHP_VERSION; ?>]_gd[<?php print $gd_version; ?>]
serversig[<?php print $_SERVER['SERVER_SIGNATURE'];?>]_serversoft[<?php print $_SERVER['SERVER_SOFTWARE'];?>]
docroot[<?php print $_SERVER['DOCUMENT_ROOT']; ?>]
script_file[<?php print $_SERVER['SCRIPT_FILENAME'];?>]
script_uri[<?php print $_SERVER['SCRIPT_URI']."]");?>]
?>
</pre>
