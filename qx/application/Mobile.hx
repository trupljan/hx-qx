package qx.application;

/**
 * For a mobile application. Supports the mobile widget set.
 *
 * @require(qx.core.Init)
 * @asset(qx/mobile/css/*)
 */
@:native("qx.application.Inline")
extern class Mobile
extends qx.core.Object
implements qx.application.IApplication
{
	/** Construct. */
	public function new();
	
	/**
     * Returns the application's root widget.
     *
     * @return {qx.ui.mobile.core.Widget} The application's root widget.
     */
    function getRoot(): qx.ui.mobile.core.Widget;
	
	/**
     * Returns the application's routing.
     *
     * @return {qx.application.Routing} The application's routing.
     */
    function getRouting(): qx.application.Routing;
	
	/**
     * Creates the application's root widget. Override this function to create
     * your own root widget.
     *
     * @return {qx.ui.mobile.core.Widget} The application's root widget.
     */
    function _createRootWidget(): qx.ui.mobile.core.Widget;
	
	
	/**
     * Called when the application relevant classes are loaded and ready.
     *
     */
    function main(): Void;


    /**
     * Called when the application's main method was executed to handle
     * "final" tasks like rendering or retrieving data.
     *
     */
    function finalize(): Void;

    /**
     * Called in the document.beforeunload event of the browser. If the method
     * returns a string value, the user will be asked by the browser, whether
     * he really wants to leave the page. The return string will be displayed in
     * the message box.
     *
     * @return {String?null} message text on unloading the page
     */
    function close(): Null<String>;


    /**
     * This method contains the last code which is run inside the page and may contain cleanup code.
     *
     */
    function terminate(): Void;
}