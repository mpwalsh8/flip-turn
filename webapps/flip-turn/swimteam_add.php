<?php
/* vim: set expandtab tabstop=4 shiftwidth=4: */
/**
 * SDIF Queue Purge
 *
 * $Id$
 *
 * @author Mike Walsh <mike_walsh@mindspring.com>
 * @package Flip Turn
 * @subpackage Swim Team
 *
 */ 

// Setup the Flip-Turn application
include('ft-setup.php') ;

//  Include the page layout
include_once("page.class.php") ;
include_once("swimteams.forms.class.php") ;

/**
 * Build a page with the SDIF Queue Purge form
 * and associated form processing.
 *
 * @author Mike Walsh <mike_walsh@mindspring.com>
 * @package Flip-Turn
 * @subpackage Swim Team
 *
 */
class SwimTeamAddPage extends FlipTurnLayoutPage
{
    function content_block()
    {
        //  Build the FormProcessor, and add the
        //  form content object that the FormProcessor 
        //  will use.
        //
	    $container = container() ;

	    //  Create the form
        $form = new SwimTeamAddForm("Add Swim Team", null, 600) ;

	    //  Create the form processor
        $fp = new FormProcessor($form) ;

	    //  Don't display the form again if processing was successful.

	    $fp->set_render_form_after_success(false) ;

	    //  Add the Form Processor to the container.

	    //  If the Form Processor was succesful, display
	    //  some statistics about the uploaded file.

	    if ($fp->is_action_successful())
	    {
            //  Add the InfoTableCSS so the tables look right
            $this->add_head_css(new DefaultGUIDataListCSS) ;
            $swimteams = new SwimTeamsDataList("Swim Teams", '100%', "swimteamid") ;
            $div = html_div() ;
            $div->set_id("swimteamsgdl") ;
            $div->add($swimteams) ;
            $container->add($div) ;

	        //  Add the Form Processor to the container.

	        $container->add(html_br(2), $fp) ;
	    }
        else
        {
	        $container->add($fp) ;
        }


	    return $container ;
    }
}

//  Create the page and render it.
$page = new SwimTeamAddPage("Swim Team Add") ;
print $page->render() ;
?>
