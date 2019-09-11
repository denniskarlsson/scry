<?php
// SPDX-License-Identifier: BSD-3-Clause

/***************************************************************************
 *                                                                         *
 * The first four values must be set to install Scry.  See README.         *
 *                                                                         *
 ***************************************************************************/

$CFG_url_scry    = 'http://CHANGE_ME/scry/';
$CFG_url_images  = 'http://CHANGE_ME/photos/';

$CFG_path_scry   = '/CHANGE_ME/docroot/scry';
$CFG_path_images = '/CHANGE_ME/docroot/photos';

$CFG_template    = 'setup';

$CFG_album_title = 'photo album';
$CFG_album_name  = 'photos';

/***************************************************************************
 *                                                                         *
 * No further configuration changes are needed for a standard Scry setup.  *
 *                                                                         *
 ***************************************************************************/

// default image sizes for thumbnails and image view page
//
$CFG_thumb_width   = 100;
$CFG_thumb_height  = 75;

$CFG_image_width   = 640;
$CFG_image_height  = 480;

// JPEG compression level from 0-100; default is 75
//
$CFG_jpeg_compression = 75;

// resize mode: 'X'-bounded, 'Y'-bounded, 'XY'-bounded
//
$CFG_resize_mode = 'XY';

// images per page in list view; 0 for unlimited
//
$CFG_images_per_page = 0;

// valid file extensions - case insensitive (jpg will also match JPG)
//
$CFG_image_valid = array("jpg", "jpeg", "png", "gif");

// are the cache and images directories outside the webserver's docroot?
//
$CFG_cache_outside_docroot  = false;
$CFG_images_outside_docroot = false;

// CFG_resize_fast set to true will make photo resizing faster but lower quality
// CFG_use_old_gd will use pre-2.0 GD functions
//
$CFG_resize_fast = false;
$CFG_use_old_gd  = false;

// URL variable mode, see DESIGN for details; if in doubt, use 'get'
//   'get'  for GET variables
//   'path' for path parsing
//
$CFG_variable_mode = 'get';

// enable resized image cache in cache directory / directories
//
$CFG_cache_enable = true;

// use exifer library for exif tag parsing
// http://www.jakeo.com/software/exif/
//
// scry + exifer installation:
//   - download and unzip the library
//   - copy 'exif.php' and the 'makers' directory into the scry directory
//   - set $CFG_use_exifer to true
//   - note that exifer uses 'short' PHP tags; depending on your server
//     configuration, you may have to change '<?' to '<?php' at the
//     beginning of exif.php and makers/*.php
//   - note that PHP exif support is NOT required to use exifer
//
$CFG_use_exifer = false;

// turn on for debugging output on the image view
// note: when on, images will appear broken and output text
//
$CFG_debug_image = false;

// derived URLs and paths
//
$CFG_url_scry      = rtrim($CFG_url_scry, '/') . '/';
$CFG_url_images    = rtrim($CFG_url_images, '/') . '/';

$CFG_path_scry     = rtrim($CFG_path_scry, '/');
$CFG_path_images   = rtrim($CFG_path_images, '/');

$CFG_url_album     = $CFG_url_scry  . 'index.php';
$CFG_url_cache     = $CFG_url_scry  . 'cache';
$CFG_url_template  = $CFG_url_scry  . 'templates/' . $CFG_template;

$CFG_path_cache    = $CFG_path_scry . '/cache';
$CFG_path_template = $CFG_path_scry . '/templates/' . $CFG_template;

?>
