package qx.application;

/**
 * For a basic, out-of-browser application (running e.g. on Node.js, Rhino).
 */
@:native("qx.application.Basic")
extern class Basic
extends qx.core.Object
implements qx.application.IApplication
{
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