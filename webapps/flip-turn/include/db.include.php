<?php
/* vim: set expandtab tabstop=4 shiftwidth=4: */
/**
 *
 * $Id$
 *
 * DB includes.  These includes define information used in 
 * the DB classes and child classes in the Wp-SwimTeam plugin.
 *
 * (c) 2007 by Mike Walsh for Wp-SwimTeam.
 *
 * @author Mike Walsh <mike_walsh@mindspring.com>
 * @package Flip-Turn
 * @subpackage DB
 * @version $Revision$
 * @lastmodified $Date$
 * @lastmodifiedby $Author$
 *
 */

//  Need the FT Config settings ...
require_once('ft-config.php') ;

/**
 * build the DSN which is used by phpHtmlLib
 */
define('FT_DB_DSN', 'mysql://' . FT_DB_USERNAME . ':' . FT_DB_PASSWORD . '@' . FT_DB_HOSTNAME . '/' . FT_DB_NAME) ;

/**
 * Define table prefix
 */
define('FT_DB_PREFIX', 'ft_') ;

/**
 * Database version - stored as a WP option
 */
define('FT_DB_VERSION', '0.0') ;

//  Add the include path for adodb - assumed in the document root.  Where
//  is document root?  Count the number of slahes in PHPHTMLLIB_RELPATH and
//  back track up the hierarchy the appropriate number of times.

$relpath = '/' ;
$nodes = explode('/', PHPHTMLLIB_RELPATH) ;

if (!empty($nodes) && $nodes[0] == '') array_shift($nodes) ;

foreach($nodes as $node) $relpath .= '../' ;

require_once(PHPHTMLLIB_ABSPATH . $relpath . 'external/adodb5/adodb.inc.php') ;
require_once(PHPHTMLLIB_ABSPATH . $relpath . 'external/adodb5/adodb-exceptions.inc.php') ;

//  Include the phpHtmlLib ADODB Data List Source
include_once(PHPHTMLLIB_ABSPATH . '/widgets/data_list/ADODBSQLDataListSource.inc');


//  Define database tables
define('FT_RESULTS_TABLE', FT_DB_PREFIX . 'results') ;
define('FT_SWIMMERS_TABLE', FT_DB_PREFIX . 'swimmers') ;
define('FT_SWIMMEETS_TABLE', FT_DB_PREFIX . 'swimmeets') ;
define('FT_SWIMTEAMS_TABLE', FT_DB_PREFIX . 'swimteams') ;
define('FT_SDIFQUEUE_TABLE', FT_DB_PREFIX . 'sdifqueue') ;
define('FT_OPTIONS_META_TABLE', FT_DB_PREFIX . 'optionsmeta') ;

?>
