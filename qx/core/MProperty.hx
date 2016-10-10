package qx.core;
import haxe.extern.EitherType;
import haxe.extern.Rest;

/**
 * This mixin offers the basic property features which include generic
 * setter, getter and resetter.
 */
@:native("qx.core.MProperty")
extern interface MProperty {
	
    /**
     * Sets either multiple properties at once by using a property list or
     * sets one property and its value by the first and second argument.
     * As a fallback, if no generated property setter could be found, a
     * handwritten setter will be searched and invoked if available.
     *
     * @param data {Map | String} a map of property values. The key is the name of the property.
     * @param value {var?} the value, only used when <code>data</code> is a string.
     * @return {Object} Returns this instance if <code>data</code> is a map
     *   or a non-generated setter is called; otherwise returns <code>value</code>.
     * @throws {Error} if a property defined does not exist
     */
    @:overload( function(data: Dynamic): Dynamic {} )
    function set(data: std.String, value: Dynamic): Dynamic;


    /**
     * Returns the value of the given property. If no generated getter could be
     * found, a fallback tries to access a handwritten getter.
     *
     * @param prop {String} Name of the property.
     * @return {var} The value of the value
     * @throws {Error} if a property defined does not exist
     */
    function get(prop: std.String): Dynamic;

    /**
     * Resets the value of the given property. If no generated resetter could be
     * found, a handwritten resetter will be invoked, if available.
     *
     * @param prop {String} Name of the property.
     * @throws {Error} if a property defined does not exist
     */
    function reset(prop: std.String): Void;

}
