$Id: CHANGELOG-2.x 1536 2005-09-06 18:51:36Z hemna $

++ Major change or new feature.
+  fairly large change
-  minor change

version 2.5.4 - 09/01/2005
  - fixed a problem with the ADODBDataListSource not doing count() properly.
  - fixed a problem with the MessageBoxWidget::add_button() not working when
    an action contained a .html url
 ++ Got the FormWizard to work.  It should be useable now.  It requires a
    child of the StandardFormContent.
  - Changed FormValidation::is_name() to allow a second parameter to specify
    the max allowable length.
 ++ Added ordering capability to the FEComboListBox
  - Added 3rd parameter to DefaultGUIDataList::action_button() to support extra
    js prior to the submit being called.
  - changed the order in which the content for the head are rendered for
    the HTMLPageClass.  All external links are now built first before the
    inline js and css is added.
  - changed the css class name of the DefaultGUIDataList column header links
    to resolve a conflict with the FERadioGroup text links
  - changed FECheckBox clickable text to use the same css class name as the
    FERadioGroup clickable text.  'form_link'
  + Added a new optional parameter to the FormElement::get_element_name()
    so it can be called statically to discover an element's name that is used
    in the form, based on a string.
  + First pass at a working FormWizard.  It's still combersome a bit.
  + Added an index parameter to FormElement::build_id_name() for building
    consistent ID strings for complex FormElement children.
 ++ Added new FEColorPicker with some used JS code from
    http://www.mattkruse.com/javascript/colorpicker
  + Fixed an issue with the FEComboListBox when manually calling set_value().
    The right hand side data wasn't being merged properly with the left hand data.
 ++ Brian Laird added code to have a list of required selected values for
    the FEComboListBox.
  + added XMLTagClass::get_tag_attribute()
  + Fixed a problem of the DefaultGUIDataList missing the wrapping form tag
    when someone has added an action column.
  - Fixed a minor issue with the FEHidden element with a value of 0 and php5
  - Fixed a small issue with the FormProcessor building a hidden element
    that wasn't W3C compliant.
  - Fixed a potential problem with the FEDate element being used more than
    once in a form.
  + Added https support to the FormValidation::is_url().
  + Added InfoTable::set_title_css()
 ++ Added Daniel I. Robert's PEARDB_DataObjectDataListSource
  - Fixed some validation issues with FEFile

version 2.5.3 - May 11, 2005
  - fixed an issue with the DefaultGUIDataList not honoring
    calls to set_simple_search_modifier();
  - fixed an issue with the FEFILE object not being properly
    initialized during a confirmation.  The pre_confirm() has
    to be called prior to validation being called.
 ++ Added ProgressWidget and ProgressBoxWidget
  - Added DefaultGUIDataList::set_search_strings() to customize
    the search box strings.
  - added DefaultGUIDataList::set_title_enable() to enable/disable
    the showing of the title (TRUE by default)
  + Changed the look of the pagination area for the DefaultGUIDataList
  - allow someone to use uppercase characters in the FormElement label
  - fixed HTMLPageCLass::add_css_link() when passing the media param
    (Carl Blakemore)
  + Allow the DefaultGUIDataList to turn off the search block in
    user_setup()
  + Added FormContent::get_form_name();
  - Fixed a problem with DataList::build_base_url() causing
    double & -> &amp; conversions
  + Added XMLDataListDocument which builds a complete XML document
    from a DataListSource class
  + Added support for Alternating row colors for the DefaultGUIDataList
 ++ Added FormElement::set_readonly(), which is used by the FormContent
    class to show the get_value_text() version of an element instead of
    the get_element().  This creates a simple way to do viewable only forms.
  - changed the FormContent::build_confirm_table() to always use get_value_text()
    since get_value_text() should always return the human readable string of
    the value of the FormElement.
  + Added the id attribute for all hidden form elements created in the FormContent
  - fixed potential issue with FEEmailMany validation with whitespaces
  + Got the DefaultGUIDataList properly showing the no data found message when
    no data was found from the DatListSource
  + Changed the values for FEDays to be only integers.  This makes setting the
    current value much easier, as you don't have to have a preceding 0 for days
    1 through 9.  The labels are unchanged.
  - fixed a bug in FEDate when in readonly/confirmation mode.
  + Added ErrorBoxWidget, and changed the FormContent and StandardFormContent
    error displays to use it.

Version 2.5.2 - January 28, 2005
  - fixed an issue with setting the value for FEComboListBox
    (hanefeldj at ee.nec.de)
  - moved TDtag::set_colspan() TDtag::set_rowspan() to the THtag
    TDtag is now a child of THtag.  (mike_walsh at mindspring.com)
  - added FEComboListButtonsBox
  - Fixed an issue with the FormProcessor not populating elements
    correctly on error.
  - added a sanity check inside of form_select()
  + added 2nd parameter to html_br() for a css class.
  + added new parameter to html_img() which allows getting the
    image width and height dynamically if $height and $width aren't set.
  + added html_img_local() and html_img_remote() as wrappers to the new
    parameter to html_img()
  - fixed minor missing member variable in FENumberInRange
  - moved declaration of TDtag after THtag to fix a bug with Turck-mmcache


Version 2.5.1 - December 7, 2004
  - fixed a small issue with rendering an XML tag with CDATA wrapper.
  - hack fix for ActiveTab for Safari.
  - updated the ArrayDataListSource secondary sorting.
  - Added the ability to change the default value for the flag that tells the
    SQLDataListSource to enable case insensitive sorting

Version 2.5.0 - November 2, 2004
  - small fix for the form name attribute for the DataList object.
  + Added HTMLPageClass::add_css_link() media attribute (Rob)
  - small fix for ADODBDataListSource and PEARDataListSource  count() method.
 ++ Added a new widget TabControlWidget
  - made a small change to DefaultGUIDataList::child_add_row_cell() that
    cuts the memory useage in half for massive lists of data.
  - Fixed a small issue with the DataList::_clean_string()
  - Fixed a bug in FormProcessor::_build_form_tag() not correctly
    building the onsubmit for the form tag in certain boundary cases.
 ++ Added a magic Check All checkbox for the FECheckBoxList
  + added FERadioGroup::set_br_flag()
  + Added the ability to turn off data scrubbing in a data list
  - fixed a problem with FormValidation::is_num()
 ++ Force the DataList to build the column header with respect to the
    default ordering flag.
 ++ Added the support for the ArrayDataListSource secondary sorting
  - Added a flag to FEMail to indicate whether we allow emails in
    the long name format like Foo Bar <email@email.com> (Suren Markosian)
  + Added a 'security' check to the orderby parameters for the DataList
    prior to calling the DataListSource::query() method.
  + Added FENumberInRange::get_range_string()
  + fixed a bug that was causing a double submit when form target is _blank
  + added script that builds a pear package for installations like
    pear install http://example.com/phphtmllib.tgz
  - fixed an issue with complex FormElements that have more then 1 label.
  - allow any characters for an FEPassword.
  - added the ability to enable/disable validation all together are a FormElement.
  + modified  FormElement and FormContent to allow objects in set_required_marker()
  + automatically build and add an id attribute value for
    all FormElement childs.  This is usefull for JS.
  - Added a Reference to the FormProcessor's FormValidation
    object in the FormContent, so manual validation calls
    to FormElements can happen in the FormContent::form_backend_validation()
  + Added FEWeekdaysListBox.
  - made 2nd parameter to FECheckBox optional.
  + Added FEActiveDIVRadioButtonGroup. a Magic FERadioButtonGroup.
  - made a fix to the FERadioButtonGroup to work around a bug in Firefox.
  - made a fix to form_active_checkbox() to work around a bug in Firefox.
  + Added FEHoursListBox, FEMinutesListBox, FESecondsListBox and FEGMTTimeZoneListBox
  + Added FormProcessor::set_form_attribute();
  - fixed a small xml issue with XMLTagClass::set_tag_attribute();
    (ale.pas at tiscali.it)
  - slight change to the filtering of column strings in the DataList.
  + FormProcessor no longer calls validation on disabled elements.
  - Fixed a problem with FECheckBoxList not disabling properly.
  - Fixed a corner case with the DataList::offset() method.
    Make sure the offset isn't > total # of records.
  - Fixed a borked FENumberInRange::get_label()
  - Fixed a minor issue with FEListBox not outputting XHTML
    compliant attributes.
  + Fixed a problem with FEListBoxMaster not generating the
    javascript correctly.
  + Added a fix for a potential place for XSS injection with
    PageWidget permission check error messages.
  + Added a small feature to the FEComboListBox to allow it to
    highglight and mark the Right box as required/error.
  + Added the ability to have all FormElement labels
    appended with a : character.  Sucky feature, but needed
    for my work project.  bleh
  + Fixed an issue with html_option in XHTML mode
    (Olivier Clavel <olivier.clavel at laposte.net>)
  + Fixed disabled not working for FEComboListBox.
  + Fixed disabled not working with FECheckBox.
  + Added FEEuropeanUnion (thanks to norax on the forums)
  + Added set_col_attributes method to the TABLETag class - Culley
  + Fixed a problem with having more then 1 FEDate object in a form.
  + Fixed a problem with DataList::set_save_vars() pounding over
    previous values.
  + Fixed FEDate issue after confirmation.
  - fixed a small issue with errors being displayed in XMLTagClass
    if php is set to show all and ignore @
  + Added html_aname() to build named anchor tags. (Bill Shaw)
  - fixed a minor bug with form_select() that had optgroups.
    (Thanks Shane Voss <Shane.Voss at ed.ac.uk>
  + Added a patch to FormProcessor to allow it to support multiple
    forms on 1 page.  (Thanks to proberts on the forums)
 ++ Finished FEDate.  This element existed in 2.4.1 but was incomplete
  + Added FormContent::get_all_element_vales()
  - Added element_exists() method to FormContent to test if the element
    exists (Suren Markosian)


Version 2.4.1 - April 1, 2004
  + reworked the FormElement::get_element_text() method so that the
    child class can return whatever it wants.
  - Fixed an issue with the FEFile and not getting the value correctly
    when in confirmation and final mode.
  - Fixed an issue with trying to customize the FormElement required field
    marker.  Jacek Rusin <jacek.rusin at kapsch.com.pl>
  - fixed a validation bug with FEFile.
  - fixed a bug with the FERadioGroup's href link on the text that caused the
    click to result in the browser going to the top of the page.
  - fixed a bug with the FormProcessor::_build_form_tag() not building the correct
    onsubmit.  --walt
  - fixed a minor bug in the DefaultGuiDataList with the action arrow
    image paths.  (UweBaumann at onlinehome.de)
  + Created 2 new examples:  example9.php and examples/form3.php
  + Fixed a bug causing problems with PEAR+postgresql in the data list widget.
    --culley
  - Added align parameter to html_img_href() (Denny Reeh <denny.reeh at gmx.de>)
  - Fixed a bug with the displaying of the FormElement label when the FormElement
    had an error.
 ++ Updated ArrayDataListSource to support searching of data.  This removed the
    necessity of the ArrayDataListSource::set_prequery_filter_flag() method, as
    this is determined automatically depending on if a search was done or not.
 ++ Added DataList::set_showall(), which automatically shows EVERY row back from the
    DataListSource.  When this is set the DefaultGUIDataList will not show navigation.
  - Applied a minor cleanup patch to TextCSSNav from Erich Enke <twilit77 at fastmail.fm>
  + Applied a patch to FEFile that adds the ability to set the acceptable file types
    and file size from culley at fastmail.fm
  - Fixed a small issue with the right boarder of the TextCSSNav's first element.
 ++ Added FERegEx and FormValidation::is_regex() to support a generic Regular expression
    based FormElement from Culley Harrelson <culley at fastmail.fm>
  + Added the ability to create a master-slave element relationship in FormElement.
    Added an element FEListBoxMaster that uses this relationship between two listboxes.
  - Fixed a copy & paste bug w/ TD::set_rowspan().
    Thanks Alfonso Cepeda Caballos <cepeda@cartuja.us.es>
 ++ Added the ability to the DefaultGUIDataList to save checked items in a
    checkbox action column between pages.

Version 2.4.0 - Feb 3, 2004
  + Added Container::get_element() - to return the data element, so you can
    modify it post add();
  + Added align attribute parameter to html_img() - Denny Reeh <denny.reeh at gmx.de>
  + Added the ability to set a secondary orderby list for the DataListSource.
  + Added the support for the secondary orderby list in the SQLDataListSource
  - fixed broken css link in examples/widget9.php
  + cleaned up the test directory, and started creating pear PHPUnit tests
  + Added the ability to do a collapsing search title for the DefaultGuiDataList
  - Fixed a problem with the HR tag.  It didn't have the correct flags set.
    (thanks to Mufasa from http://www.firetiger.net/)
  - added another fix to prevent warnings in XMLTagClass::_render_open_tag()
    (thanks to Mufasa from http://www.firetiger.net/)
  - added title parameter to html_area() - Denny Reeh <denny.reeh at gmx.de>
  - added a small fix to the HTMLPageClass::add() method when adding a
    widget that has a get_javascript() method.  This prevents a possible warning.
  - fixed some tab selected bugs with ActiveTab
  - added TABLEtag::set_summary() to set the summary attribute for
    speech-synthesizing/non-visual browsers.
  - added dtd URL for the HTMLPageClass when in HTML 4 rendering mode.
  - added FEUnitedStates form element.
  - added FEZipcode Form element.
  - save the render type in the HTMLPageClass to solve potential issues.
  - changed API for html_optgroup() to include the label as the first param.
  - added support in form_select() to handle a 2 level deep multidimensional array
    for the $options param.  This is usefull for optgroup support in the select tag.
  - fixed a bug with ArrayDataListSource.  It wasn't limiting the number of rows
    to display.  oops.
  - fixed some problems with html_frameset().
  - added 3rd param to html_option to set it as selected or not.
  - fixed an issue w/ DataList defines for sortable/not sortable and
    case insensitive sortable (David Chatenay)
  - added FETextArea length validation and error reporting.
  - added InfoTable::set_show_cellborders() which sets the flag to show internal
    cell borders or not.
  + Added ButtonPanel object.
  + Added DialogWidget.
  + Added StandardDialogWidget.
  + Added MessageBoxWidget.
 ++ Added the ability in the PageWidget to do page level permissions checks.
    This requires the InfoTable css definitions to be loaded in the browser window
    when a permissions error happens.
  + Added FormElement::set_element_name() - allow you manually set the name of
    the form field.
  + Added HTMLPageClass::set_favicon() to set the href and type and enable it.
  - DataList::build_column_item() fix: 0 (integer value) is replaced by a space
    (David Chatenay)
  + Added the ability to disable specific items for the
    FEDataList, FEListBox, FEMultiListBox, FECheckBoxList form elements.
  + Added FENestedListBox
 ++ Added support in the FormProcessor and FormContent to automatically handle
    the special FEFile form element while managing a form that contains a
    confirmation page (StandardFormContent w/ confirmation enabled).
  - fixed an issue with the Copyright character in the FooterNav.  (Ivan Gostev)
  - fixed some w3c validation errors with onClick in some widgets (Ivan Gostev)
  + Added TDtag::set_colspan() and TDtag::set_rowspan() as helpers to
    set_tag_attribute()
  + Added the new FEComboListBox form element.
  - fixed issue with ListAction old api calls.
  - Added a new sorting type for DataList - SORTABLE_NUMERIC, that handles sorting
    of numeric columns without using the natsort algorithm which is broken for negative
    numbers (suren)
 ++ Added new TabWidget and TabList widgets for supporting Tabs and their data.
  - Fixed a potential case insensitive sorting issue w/ the SQLDataListSource
  + Added the ability to change the default value for the flag that tells the
    SQLDataListSource to enable case insensitive sorting.
  + Added FormElement::set_tabindex() to set the tab index.
  + Added FormContent::set_form_tabindex, get_form_tabindex() as a helper to the
    FormElement::set_tabindex() method.
  - fixed an incorrectly spelled variable name in DataListSource (hanefeldj at ee.nec.de)
  - fixed a small js issue with the ActiveTab (mike_walsh at mentor.com

Version 2.3.0 - July 31, 2003
  - pulled a small issue from FormProcessor.  $this->_message never used.
  - changed FormProcessor::set_render_form_after_succes() to accept a flag,
    instead of just setting it to TRUE always.
  - Added some tests in the FormContent element access methods, to help
    developing a form.  It traps for invalid FormElement labels.
  + Added FEFile FormElement from Dave Brondsema <dave at brondsema.net>
  + Started work on the FormWizard
  - cleanup of some warnings for the DataList widgets.
  - Fixed a problem with doing some queries in the PEARSQLDataListSource
  - added HTMLPageClass::set_language() as a request from
    Davide "Design" Muzzarelli.
  - fixed DefaultGUIDataList alignment blowing up.
  - small change to the TABLEtag::add_row method to be cleaner in how
    we check for TR or TD objects
  + Added the ability to check the status of the FormProcessor state
    after the constructor processes the form.  Now you can find out
    if the form was confirmed and action was processed successfully
    so you can do something besides show the form.
  - added the ability to find out what action was taken by the form
    engine with FormProcessor::get_action()
  + Added the ability to automagically set a character limit in the
    FETextArea element
  + Added the ability to not automatically show the errors in the
    FormProcessor.  This allows you to show the errors somewhere else
  + Added the ability to set the FormContent error table title and width
    to something besides the default.
  + Added FormContent::get_error_array() and FormProcessor::get_error_array()

 ++ Changed the parameter list to FETextArea().  the rows, cols attributes
    for a textarea tag are required.
  - changed htmlentities call in HTMLTagClass to htmlspecialchars so we don't
    nuke unicode/multibyte chars.
 ++ Added FormContent::javascript() and FormElement::javascript() that
    automatically get called by the FormProcessor.  This allows you to include
    some raw javascript into a form or a form element, and it will automatically
    get wraped in a script tag and added rendered with the form.
  - fixed a lame error in the exmaple7.php source.
  - fixed a few warnings in example8.php
  - define the HTML_RENDER_TYPE var in SVGDocumentClass so we don't get php warnings.
  + Added the ability to filter rows out of the DataListSource object.
    just define DataListSource::row_filter() and return TRUE to allow the row or FALSE
    to drop the row.
  + Added FEYesNoListBox, and added the ability to change the yes/no values
    for the FEYesNoRadioGroup
  - don't validate FormElements that are disabled.

  + added the ability in the FormContent and FormElement to have more then 1 error
  + added FEConfirmActionButton
  + added FENumber to validate an int
  + added FENumberInRage to validate an int in a range.
  + added FEHostnameWithPort to show a hostname and a Port
  + added FEIPAddressWithPort
  - fixed annoying problem with the form_active_checkbox,form_active_radio and
    FECheckBoxList links causing mozilla to jump to the top of the page when clicked.
  - removed some of the newlines from the generated output for HTMLPageClass.
  + Added HTMLRedirectPage
  - cleaned up the use of a define for HTML_RENDER_TYPE.  It's now a global var,
    so it can be changed on the fly.
  - fixed some small warnings in the examples
    (thanks Pierre)
  - fixed some warnings in the DefaultGUIDataList object.
  + Added a DataList::do_action() method that allows you to do whatever
    prior to get_data_source() being called.  You can pre-massage data in
    do_action().  By default, it does nothing.
  + Added ArrayDataListSource class that pulls data out of an array
  + Added XMLTagClass::set_cdata_flag() to toggle the CDATA wrapper flag
  + Added xml_ctag(), which is the same as xml_tag(), but sets the bit to
    automatically wrap all tag content in the CDATA wrapper.





Version 2.2.4 - April 3, 2003
  - fixed a small documentation issue w/ the DataList::add_header_item()
    method.
  - pulled out missing development files in the form_elements/includes.inc
    D'oh.
  - fixed small warnings from HTMLTagClass

Version 2.2.3 - April 2, 2003
  - fixed a problem with the FormContent errors table width.
  - fixed an error in the form1 example.
  - fixed an error with Form Confirmation pages with the
    FECheckBox Form Element.
  - fixed a minor problem with the TABLEtag object, and adding
    a BaseWidget child class.  It doesn't have a _tag member, so
    folks that have MAX errors on, got a warning.
  - Fixed a potential issue with XML attributes.  There was a chance
    that an XML tag's attribute could be empty, which would build
    an invalid XML tag.  DOCTYPE is now an HTMLTagClass child, because
    it needs attributes w/o values.
  - Changed FormProcessor to use "post" instead of "POST" so that we
    build valid XHTML
  - changed the FormElement rendering of onClick, onChange, etc. to use
    all lowercase, to build valid XHTML.
  - added HTMLPageClass::add_js_link() to replace push_js_link()
  - small fix in the DefuaultGUIDataList::_checkbox_javascript() to
    be more flexible.  Thanks Nils Droge <ndroege at haba-ag.de>
  - made sure the DataList object's form name is set.
  - let the user set the DataList form method to post or POST.
  - Don't do indentation on a PREtag
  - Added FEDataList::set_list_data() method, to allow folks to set the
    list of items at any time.
  + Some cleanup of the FormProcessor attributes, and added some
    easy access methods for setting/getting them.
  - fixed the FormContent::add_image_action() method.  Can't use onclick
    with a input type="image".  bogus.
  + Added the ability to override the FormValidation and FormErrors classes
    used by the FormProcessor, so folks can get their errors and text from
    any method.  This helps folks create their own i18n FormErrors class.

Version 2.2.2 - March 10, 2003
  - Aris Basic <aris.basic at silencesoftware.com> added a new
    PGSQLDataListSource object, to allow folks to use the
    PHP built in PostgreSQL native functions for talking to
    a DB.  This avoids the depenancy on PEAR or ADODB.
  - Added the xhtml_strict_attributes array to the FORMtag
    declaration.  the attributes 'name' and 'target' are not
    allowed while in XHTML STRICT mode
    (thanks to Philipp Morger <morger at dolphins.ch> )
  - fixed a minor issue in the DataList object that Richard Greene
    found.
  - cleaned up the old 'test' scripts in test.
  - made a small fix to the ADODBSQLDataListSource::count() method when
    handling a DB error.  Thanks to Nils Droge <ndroege at haba-ag.de>
  - fixed a problem of not being able to search fo '0' in the DataList
    Thanks to Nils Droge <ndroege at haba-ag.de>.
  - made a small change to the DefaultGUIDataList to make the search area
    text be localizable.
  - Added support to change the encoding type for XHTML pages in the
    HTMLPageClass::set_encoding() method.
  - fixed a PHP NOTICE error output in the XMLTagClass.
  - fixed a problem with XML tags that have no content.  It now
    automatically drops the close tag.
  - fixed a problem with HTML tags with no content.  it no longer
    renders a newline after the open tag.
  - fixed a the DOCTYPE tag attributes for XHTML mode.  It now gives
    the full url path to the DTD's on the W3C site.
    (thanks to Philipp Morger <morger at dolphins.ch> )
  - fixed a small indenting problem with XMLTagClass::render_content()
  - Moved the SVG, WML, XML widgets into their own dirs under widgets.

  + Added new SVG Graphing classes.  You can now graph a line graph
    with SVGXYLineGraph

Version 2.2.1 - February 21, 2003
  - fixed problems with the simple search capability for the
    DefaultGUIDataList object.
  - Fixed the count problem with the ADODBDataListSource object
  - fixed some api calls in the examples/widget8 for form_active_radio
    and form_active_checkbox
  * Thanks to Aris "PhanLord" Basic for the heads up on the bugs.


Version 2.2.0 - February 20, 2003
  - added attributes array as the last parameter to form_select.
    the attributes are for the select tag.
  + Added the new RoundTitleTable widget.  It looks like the
    NavTable widget, but can contain anything.
  - fixed a minor issue with Container::reset_content()  It used to
    accept new content to automagically add.  This has been re-added.
    Thanks to Freddy from Germany. :)
  - fixed another duplicated method in SQLDataListSource.  arg.
  + Added the CSSContainer widget
  + changed all of the themed css building scripts to use the
    new CSSContainer widget.  This is handy for site wide
    themeing.
  - Fixed a minor php notice in XMLTagClass::prepare_flags()
  - Added the ability to set the overall alignment for the
    DefaultGUIDataList object with set_align()
  - added some code to the ActiveTab to enable going to a
    specific tab when coming from another page
  - Added the ability to preselect a specific tab in the ActiveTab
    widget by passing the selected tab's name in the constructor
  - fixed the count issue with the ADODBSQLDataListSource
  - Made the urls in the DataList object W3C happy.  & -> &amp;
  - fixed potential content issues with InfoTable.  Now you can
    call add_row() with a TR or TD tag.

 ++ MAJOR cleanup of all class member variables in ContainerClass,
    XMLTagClass and HTMLTagClass.  I nuked ALL of the flag variables
    and made them all into 1 bitmask.  13 variables -> 1.  This should
    keep the memory footprint to a minimum.  There should be NO
    compatibility issues.

 ++ Added the new Form Processing classes, for easily building complex
    forms and automagic validation, as well as automagic confirmation.

Version 2.1.3 - November 25, 2002
  - fixed a duplicated method in ActiveTab.

Version 2.1.2 - November 23, 2002
  - fixed a problem with html_map(), it was returning a LEGENDtag.
  - added $width to ActiveTab::add_tab() so you can change the width
    of the tab for long titles.
  - Fixed my mistake with the add/push_reference() methods.
    According to the php spec, you have to declare the parameter
    as a reference in the function declaration now, which is
    counter-intuitive (for us C folks)
  - Fixed a problem with the XMLDocumentClass' add_reference() method.

Version 2.1.1 - November 12, 2002
  - Suren Fixed a bad bug in HTMLPageClass::add_head_content()


Version 2.1.0 - November 12, 2002
  - Added the ActiveTab widget
  - fixed a problem with the DefaultGUIDataList object comparing
    the old style tag name of TD.  all tags are now lowercase
  - changed the use of id to class to prevent W3C validation errors
    when using a widget multiple times on a page.
  - added form_active_radio() and form_active_checkbox()
  + Did some major code cleanup in the _render_tag_* functions
    between the XMLTagClass and the HTMLTagClass classes.  Just had
    some legacy code living in the HTMLTagClass methods that was
    now living in the XMLTagClass methods
  - changed DOCTYPEtag to an XMLTag child
  - cleaned up the constructor for the DOCTYPEtag and XMLtag
  + Did some minor tweaks here and there in the base classes
    for performance improvements thanks to the adp profiler tool
    (http://pear.php.net/package-info.php?pacid=118)
  + Added xml_doctype() as a helper function for creating a
    DOCTYPE tag
  + added build_doctype() for the HTMLPageClass, so you can modify
    the DOCTYPE attributes for the document before render() is called.
    This is good for folks that want to tweak the link1 and link2
    attributes to put mozilla/IE into standards compliant mode.
    SEE:
     http://mozilla.org/docs/web-developer/quirks/doctypes.html
     http://msdn.microsoft.com/library/default.asp?url=/workshop/author/dhtml/reference/objects/doctype.asp
  + Did a major reworking of the XMLDocumentClass.  Added a lot of features
    to make it easier to output a valid XML document.
  + Added the WMLTagClass (extends XMLTagClass) as the base class for all WML tags.
  + Added the WMLDocumentClass widget to build and render valid WML Documents.
  + Added the SVGDocumentClass widget to build and render valid SVG Documents.
  + Made the BaseWidget a child of the Container to eliminate redunancy in
    the push/add methods.
  - added XMLSTYLESHEETtag
  - updated HTMLPageClass::add_head_content() to allow n params of content
  + Added the ADODBSQLDataListSource object, to support ADODB DB objects.
  - updated examples/widget6.php to show the same list of data from the DB
    coming from 2 different sources.  One source is a PEAR DB object, the
    2nd source is from an ADODB DB Object.
  + Added a CSVFILEDataListSource object, to read data from a CSV formatted file.
  - Added the CDATAtag, which is used for escaping a tag's contents in XML, so
    the xml parser reading the xml doesn't parse the data.
  + added the full set of W3C's 1.0 recommendation of SVG (Scalable Vector
    Graphics) tags.
  + Added the svg_utils.inc which contains the helper functions for constructing
    commonly used SVG tags with some help from Charlie Killian.



Version 2.0.1 - October 18, 2002
  - Fixed a problem with html_small()
  - got the max_rows functionality working in the DataList widget


Version 2.0.0 - October 16, 2002
  - Added the title attribute to both html_img_href() and
    html_img()
  - created a css dir to hold the css files
  - Added some new features to XMLDocumentClass, and brought the API
    up to 2.x standards (add() instead of push() )
  - Added the new DataList object widget set.

Version 2.0.0-RC1 - October 2,2002
  MAJOR CHANGES/FEATURES
  - Completely rewrote the base HTMLTagClass.  It is now
    based off of XMLTagClass which is a child of the
    Container class (formerly known as ContainerWidget )

  - Changed all push_reference() calls to require a reference to
    be passed in.  call time pass by reference is depricated, and
    is going away soon, so this had to get changed.

  - Removed 2nd and 3rd parameter declarations from the
    HTMLTagClass constructor.  It now accepts any number
    of arguments.  The first argument is always an array
    of the tag attributes.

  - Added a lot of missing html_* helper/wrapper functions.
    Some of which have special parameters for most commonly
    used features of the specific tag.

  - changed html_td() parameters.  It now accepts
    function html_td($class="", $align="").  3rd param to
    n is content for the tag.

  - added class as the first param to the html_div() function.

  - Added add() and add_reference() calls.  These replace
    the old style push() and push_reference() calls.
    All push(), push_reference() and push_row() calls are
    depricated.

  - Completely changed the css functionality in the widgets.
    The widgets now contain the css required for the widget

  - HTMLPageClass automatically imports javascript and css
    from a widget, if it is based off of the BaseWidget class

  - Added the ability to tell the PageWidget and HTMLPageClass
    the style of indenting of the html output you want.
    Nice or left justified.


 MINOR CHANGES/FEATURES
  - changed all tag declarations to lower case.  HTML 4.01
    spec recommends using lower case tags.
  - Added set_class(), set_style() and set_id() for the HTMLTagClass.
  - Added 1st param to html_span() to be the class value.
  - added some new functionality to form_select() so it can
    handle multiple selection boxes.
  - Added a bunch of missing html/xhtml tags.
  - Added some new params to html_mailto() to support
    subject, body, cc
  - fixed newline problem with the META tag
  - added html_small() (Suren Markossian)
  - Added set_collapse() to let you collapse a tag and it's
    content on 1 line (no newlines or indenting)
  - Added html_* functions for all the supported Tag Classes.
  - removed the html_nobr(), since this really isn't a valid
    w3c tag. If you HAVE to use it...don't.  It's DEPRICATED.
  - removed SPACERtag.  its not a real tag.
  - cleaned out almost all the comments in the ALLTAGS.inc file
    for a small speed up.
  - Added font_utils.inc which holds various span/div tag
    objects with css classes for fonts, which are defeined in
    css/fonts.css
  - Added title parameter to the NavTable widget->add(), and made
    the target param last.
  - Moved the widget css files to /css




Version 1.1.0 - May 7, 2002
  - Removed <> symbols from the $_tag variables since it is not a part
    of an HTML tag. This should reduce the usage of str_replace() in
    render() functions and make things a little bit faster.
  - Added html_div_small(), which can be used instead of the
    spacer.gif trick.
  - Fixed a bug with form_radio().  Thanks (Tim Moloney)
  - Added container(), a ContainerWidget helper function.
  - Fixed a w3c validation bug with the <HR> tag.  Can't
    have a close tag for it.  Thanks (James Dingwall)
  - Fixed a problem with XHTML_STRICT no rendering the
    <!doctype> attributes correctly. Thanks (Ricardo Pardini)
  - Added HTMLPageClass::get_html_attributes() and
    HTMLPageClass::set_html_attributes(), which lets the user
    of the class get/set the specific attributes to use
    for the <html> tag.

    NOTE:
  - Moved all files from .php to .inc. make sure you change
    you includes to reflect this change.


Version 1.0.3 - April 8, 2002
  - Fixed a potential formatting issue w/ tags that don't
    automatically newline after the opentag.  thanks to the
    Zend debugger.
  - Added misc_utils.php which holds new push_args() function.
  - set newline_after_opentag for OPTIONtag to FALSE by default.
  - Added target to NavTable::push();
  - Changed InfoTable's css to a php file, so we can dynamically
    change the colors.
  - Made the default cellspacing 0 for InfoTable.
  - Fixed a small problem with NavTable widget.  If there was no
    subtitle, it would render an empty table for the title,
    causing old Mozilla's to puke.
  - Changed the size of the TextNav text to 10pt instead of 8pt.
  - Added FRAMEtag, FRAMESETtag, NOFRAMEStag classes.
  - Added support in HTMLPageClass widget for framesets.
  - Added some frame* utility functions.
  - Combined all of the tag_classes files into 1 file to avoid
    lots of repetetive includes.
  - Added the new ContainerWidget, which is nothing but a
    wrapper object that contains tags/widgets, and knows how to
    render the content with the appropriate indentation level.
  - added the feature of automatically trying to collapse a
    tag and its content to 1 line.  This happens if a tag
    only has 1 content entry and its a string w/o a \n in it.
  - Added new html_input() wrapper function which automatically
    will call htmlspecialchars() on the data for the value
    attribute.  This helps prevent problems with
    <input value="foo"">   -> <input value="foo&quot;">
  - Fixed a problem with the form_select() helper function.
    The selected item wasn't working.
  - Added container(), which is a helper function to build
    a ContainerWidget and populate it.



Version 1.0.2 - November 30,2001
  - added 3rd parameter to the HTMLTagClass constructor.  It
    accepts the $newline_after_opentag setting.  This helps
    to keep the nice formatting on certain tags that you want
    to override the default behaviour.

  - fixed HTMLPageClass character encoding bug.  It wasn't
    outputing a proper meta tag.
  - changed doctype for 4.0 to 4.01
  - added target param for the html_a() helper function.
  - changed the default parameters to html_img_href, and
    html_img.  We were forcing the width and height of an image
    to 1x1 if nothing was passed in.  We now don't add them to
    the tags if they aren't set, which is the desired result.

  - Changed the FooterNav class to add the ability to show a
    "webmaster" mailto link.  I also cleaned up the formatting
    of it a bit as well.

  - fixed source formatting issue with html_img_href()
  - changed html_a() to always force no newline after opentag
  - added $target to html_img_href()
  - added html_th() helper function.
  - Changed html_textarea.  Added a new parameter of Value
    so you can prepopulate the text area field with data.
  - Fixed a bug with InfoTable's render() method.  It wasn't
    properly handling the output_debug param.
  - Added TODO file.
  - Added a new feature to automatically htmlentities() for
    tag attribute values if we are rendering in XHTML_STRICT
    mode.  This prevents the w3c validator from complaining
    about the & char.


Version 1.0.1 - August 25, 2001
  - added html_div(), and html_td()
  - added html_div(), and html_td()
  - fixed w3c validation bug for the TextNav class.
    We can't put a background image in a td.  It Has
    to be in a css.
  - Fixed a <TD colspan> issue for a blank entry in the
    NavTable class.
  - reorganized html_utils.php so the functions are in
    alphabetical order.  Should be easier to find them
    as a reference.
  - added usemap attribute support to html_img() and
    html_img_href()
  - updated the online API docs (javadoc output) in the
    doc directory.

