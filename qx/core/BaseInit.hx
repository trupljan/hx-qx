package qx.core;

/**
 * This is the base class for non-browser qooxdoo applications.
 */
@:native("qx.core.BaseInit")
extern class BaseInit
{

	/**
     * Returns the instantiated qooxdoo application.
     *
     * @return {qx.core.Object} The application instance.
     */
    function getApplication(): qx.core.Object;
	
	/**
     * Runs when the application is loaded. Automatically creates an instance
     * of the class defined by the setting <code>qx.application</code>.
     *
     */
    function ready(): Void;
	
}