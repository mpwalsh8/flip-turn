<?php
/* vim: set expandtab tabstop=4 shiftwidth=4: */
/**
 * Swim Meets Results by Event
 *
 * $Id$
 *
 * @author Mike Walsh <mike_walsh@mindspring.com>
 * @package Flip-Turn
 * @subpackage Results
 *
 */ 

// Setup the Flip-Turn application
include('ft-setup.php') ;

//  Include the page layout
include_once("page.class.php") ;
include_once("results.class.php") ;

/**
 * Present the data in the SDIF Queue in a
 * GUI Data List.  From the GDL the user can
 * execute a number of processing actions.
 *
 * @author Mike Walsh <mike_walsh@mindspring.com>
 * @package Flip-Turn
 * @subpackage SwimMeetEvents
 *
 */
class SwimMeetEventsPage extends FlipTurnLayoutPage
{
    function content_block()
    {
        //  Add the InfoTableCSS so the tables look right
	    $this->add_head_css(new DefaultGUIDataListCSS) ;
	    
        $container = container() ;

        $swimmeets = new SwimResultsByEventDataList("Events", '100%', "eventid") ;
        $div = html_div() ;
        $div->set_id("swimmeetsgdl") ;
        $div->add($swimmeets) ;
        $container->add($div) ;

	    return $container ;
    }
}

//  Create the page and render it.
$page = new SwimMeetEventsPage("Swim Meet Events") ;
print $page->render() ;
?>
