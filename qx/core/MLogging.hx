package qx.core;
import haxe.extern.EitherType;
import haxe.extern.Rest;

@:native("qx.core.MLogging")
extern interface MLogging {
	
    /**
     * Logs a debug message.
     *
     * @param varargs {var} The item(s) to log. Any number of arguments is
     * supported. If an argument is not a string, the object dump will be
     * logged.
     */
    function debug(varargs: Rest<Dynamic>): Void;


    /**
     * Logs an info message.
     *
     * @param varargs {var} The item(s) to log. Any number of arguments is
     * supported. If an argument is not a string, the object dump will be
     * logged.
     */
    function info(varargs: Rest<Dynamic>): Void;


    /**
     * Logs a warning message.
     *
     * @param varargs {var} The item(s) to log. Any number of arguments is
     * supported. If an argument is not a string, the object dump will be
     * logged.
     */
    function warn(varargs: Rest<Dynamic>): Void;


    /**
     * Logs an error message.
     *
     * @param varargs {var} The item(s) to log. Any number of arguments is
     * supported. If an argument is not a string, the object dump will be
     * logged.
     */
    function error(varargs: Rest<Dynamic>): Void;


    /**
     * Prints the current stack trace
     *
     */
    function trace(): Void;

}