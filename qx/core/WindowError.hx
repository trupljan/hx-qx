package qx.core;

/**
 * This exception is thrown by the {@link qx.event.GlobalError} handler if a
 * <code>window.onerror</code> event occurs in the browser.
 */
@:native("qx.core.WindowError")
extern class WindowError
{
  /**
   * @param failMessage {String} The error message
   * @param uri {String} URI where error was raised
   * @param lineNumber {Integer} The line number where the error was raised
   */
	public function new(failMessage: String, uri: String, lineNumber: Int);
	
	
    /**
     * Returns the error message.
     *
     * @return {String} error message
     */
    function toString(): String;


    /**
     * Get the URI where error was raised
     *
     * @return {String} URI where error was raised
     */
    function getUri(): String;


    /**
     * Get the line number where the error was raised
     *
     * @return {Integer} The line number where the error was raised
     */
    function getLineNumber(): String;

}