package qx.core;

/**
 * This exception is thrown by the {@link qx.event.GlobalError} handler if a
 * observed method throws an exception.
 */
@:native("qx.core.GlobalError")
extern class GlobalError
extends js.Error
{
	
  /**
   * @param exc {Error} source exception
   * @param args {Array} arguments
   */
	public function new(exc: js.Error, args: Array<Dynamic>);
	

	/**
     * Returns the error message.
     *
     * @return {String} error message
     */
    function toString(): String;
	
	 /**
     * Returns the arguments which are
     *
     * @return {Object} arguments
     */
    function getArguments(): Dynamic;


    /**
     * Get the source exception
     *
     * @return {Error} source exception
     */
    function getSourceException(): js.Error;
	
}