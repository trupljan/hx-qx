package qx.data;
import haxe.extern.EitherType;
import haxe.extern.Rest;

@:native("qx.data.Array")
extern class Conversion
{
   /**
     * Converts the given value to a string via <code> + ""</code>.
     *
     * @param value {var} The value to convert.
     * @return {String} The converted value.
     */
    static function toString(value: Dynamic): std.String;


    /**
     * Options for the {@link qx.data.SingleValueBinding}
     * containing the {@link #toString} converter.
     */
    static var TOSTRINGOPTIONS(default, default): Dynamic;


    /**
     * Converts the given value to a number via <code>parseFloat</code>.
     *
     * @param value {var} The value to convert.
     * @return {Number} The converted value.
     */
    static function toNumber(value: Dynamic): Float;


    /**
     * Options for the {@link qx.data.SingleValueBinding}
     * containing the {@link #toNumber} converter.
     */
    static var TONUMBEROPTIONS(default, default): Dynamic;


    /**
     * Converts the given value to a boolean via <code>!!value</code>.
     *
     * @param value {var} The value to convert.
     * @return {Boolean} The converted value.
     */
    static function toBooleanfunction(value: Dynamic): Bool;


    /**
     * Options for the {@link qx.data.SingleValueBinding}
     * containing the {@link #toBoolean} converter.
     */
    static var TOBOOLEANOPTIONS(default, default): Dynamic;
}