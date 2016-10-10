package qx.core;

/**
 * This is the base class for all qooxdoo applications.
 *
 * @require(qx.event.handler.Application)
 * @require(qx.event.handler.Window)
 * @require(qx.event.dispatch.Direct)
 */
@:native("qx.core.Init")
extern class Init
{
	
	/**
     * Returns the instantiated qooxdoo application.
     *
     * @return {qx.core.Object} The application instance.
     */
    static function getApplication(): qx.core.Object; // TODO: type


    /**
     * Runs when the application is loaded. Automatically creates an instance
     * of the class defined by the setting <code>qx.application</code>.
     *
     */
	function ready(): Void; // TODO: type
	
	
}