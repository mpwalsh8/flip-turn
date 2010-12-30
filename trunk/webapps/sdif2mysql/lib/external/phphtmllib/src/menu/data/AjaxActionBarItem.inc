<?php
/**
 * The AjaxActionBarItem
 * 
 * @author Walter A. Boring IV
 * @package phpHtmlLib-framework
 * @subpackage Menu
 */

/**
 * This is the Ajax version of the
 * ActionBarItem class
 * 
 * @author Walter A. Boring IV
 * @package phpHtmlLib-framework
 * @subpackage Menu
 */
class AjaxActionBarItem extends ActionBarItem {

    /**
     * The ajax id that we
     * want the request results
     * to go to.
     *
     * @var string
     * @todo make some global config to change this
     */
    protected $ajaxid = AjaxablePage::AJAX_ID;

    /**
     * Constructor
     *
     * @param string $name
     * @param string $target
     * @param array $params
     * @param int $position
     * @param string $icon
     */
    public function __construct($name, $target = null, $params = null,
                                $icon = null, $ajaxid = AjaxablePage::AJAX_ID) {
        parent::__construct($name, $target, $params, 0, $icon);
        $this->ajaxid = $ajaxid;
    }

    /**
     * Get the id of the replacement
     * html element where the
     * results of the request 
     * should go to.
     *
     * @return string
     */
    public function get_ajax_id() {
        return $this->ajaxid;
    }
}