package qx.core;

/**
 * Assertion errors are thrown if an assertion in {@link qx.core.Assert}
 * fails.
 */
@:native("qx.core.AssertionError")
extern class AssertionError
extends qx.type.BaseError;
{
	
   /**
    * @param comment {String} Comment passed to the assertion call
    * @param failMessage {String} Fail message provided by the assertion
    */
	public function new(comment: std.String, failMessage: std.String);
	
	/**
     * Stack trace of the error
     *
     * @return {String[]} The stack trace of the location the exception was thrown
     */
    function getStackTrace(): std.Array<String>;
	
}