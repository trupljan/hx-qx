package qx.application;


/**
 * Abstract base class for GUI applications using qooxdoo widgets.
 *
 * @require(qx.core.Init)
 */
@:native("qx.application.AbstractGui")
extern class AbstractGui
extends qx.core.Object
implements IApplication
{
	
	/**
     * Create the root widget. This method is abstract and must be overridden
     * by sub classes.
     *
     * @return {qx.ui.core.Widget} The root widget. This widget must be configured
     *     with a {@link qx.ui.layout.Basic} or {@link qx.ui.layout.Canvas} layout.
     */
    function _createRootWidget(): qx.ui.core.Widget;
	
	
	/**
     * Returns the application's root widget. The root widgets can act as container
     * for popups. It is configured with a {@link qx.ui.layout.Basic} (if the
     * application is an inline application) layout or a {@link qx.ui.layout.Canvas}
     * (if the application is a standalone application) layout .
     *
     * The root has the same add method as the configured layout
     * ({@link qx.ui.layout.Basic} or {@link qx.ui.layout.Canvas}).
     *
     * @return {qx.ui.core.Widget} The application's root widget.
     */
    function getRoot(): qx.ui.core.Widget;
	
	
	/**
     * Updates the GUI rendering
     *
     */
    function render(): Void;
	
	
	/// BEGIN IApplication
	
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
    function close(): Null<std.String>;


    /**
     * This method contains the last code which is run inside the page and may contain cleanup code.
     *
     */
    function terminate(): Void;
	
	/// END IApplication
	
}