package qx.core;

/**
 * This mixin includes all assertions from {@link qx.core.Assert} to conveniently
 * call assertions. It is included into {@link qx.core.Object} if debugging code
 * is enabled. It is further included into all unit tests
 * {@link qx.dev.unit.TestCase}.
 *
 * @require(qx.core.Assert)
 */
@:native("qx.core.MAssert")
extern interface MAssert 
{
  /**
   * Assert that the condition evaluates to <code>true</code>.
   *
   * @param condition {var} Condition to check for. Must evaluate to
   *    <code>true</code>.
   * @param msg {String} Message to be shown if the assertion fails.
   */
    function assert(condition: Dynamic, msg: String): Void;


    /**
     * Raise an {@link AssertionError}
     *
     * @param msg {String} Message to be shown if the assertion fails.
     * @param compact {Boolean} Show less verbose message. Default: false.
     */
    function fail(msg:String , ?compact: Bool): Void;


    /**
     * Assert that the value is <code>true</code> (Identity check).
     *
     * @param value {Boolean} Condition to check for. Must be identical to
     *    <code>true</code>.
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertTrue(value: Bool, msg: String): Void;


    /**
     * Assert that the value is <code>false</code> (Identity check).
     *
     * @param value {Boolean} Condition to check for. Must be identical to
     *    <code>false</code>.
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertFalse(value: Bool, msg: String): Void;


    /**
     * Assert that both values are equal. (Uses the equality operator
     * <code>==</code>.)
     *
     * @param expected {var} Reference value
     * @param found {var} found value
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertEquals(expected: Dynamic, found: Dynamic, msg: String): Void;

    /**
     * Assert that both values are not equal. (Uses the not equality operator
     * <code>!=</code>.)
     *
     * @param expected {var} Reference value
     * @param found {var} found value
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertNotEquals(expected: Dynamic, found: Dynamic, msg: String): Void;

    /**
     * Assert that both values are identical. (Uses the identity operator
     * <code>===</code>.)
     *
     * @param expected {var} Reference value
     * @param found {var} found value
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertIdentical(expected: Dynamic, found: Dynamic, msg: String): Void;


    /**
     * Assert that both values are not identical. (Uses the not identity operator
     * <code>!==</code>.)
     *
     * @param expected {var} Reference value
     * @param found {var} found value
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertNotIdentical(expected: Dynamic, found: Dynamic, msg: String): Void;


    /**
     * Assert that the value is not <code>undefined</code>.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertNotUndefined(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is <code>undefined</code>.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertUndefined(value: Dynamic, msg:  String): Void;


    /**
     * Assert that the value is not <code>null</code>.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertNotNull(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is <code>null</code>.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertNull(value: Dynamic, msg: String): Void;


    /**
     * Assert that the first two arguments are equal, when serialized into
     * JSON.
     *
     * @param expected {var} The expected value
     * @param found {var} The found value
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertJsonEquals(expected: Dynamic, found: Dynamic, msg: String): Void;


    /**
     * Assert that the given string matches the regular expression
     *
     * @param str {String} String, which should match the regular expression
     * @param re {RegExp} Regular expression to match
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertMatch(str: String, re: Dynamic, msg: String): Void; // TODO: re -> regexp


    /**
     * Assert that the number of arguments is within the given range
     *
     * @param args {arguments} The <code>arguments<code> variable of a function
     * @param minCount {Integer} Minimal number of arguments
     * @param maxCount {Integer} Maximum number of arguments
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertArgumentsCount(args: Dynamic, minCount: Int, maxCount: Int, msg: String): Void;


    /**
     * Assert that an event is fired.
     *
     * @param obj {Object} The object on which the event should be fired.
     * @param event {String} The event which should be fired.
     * @param invokeFunc {Function} The function which will be invoked and which
     *   fires the event.
     * @param listener {Function?null} The function which will be invoked in the
     *   listener. The function has one parameter called e which is the event.
     * @param msg {String?""} Message to be shows if the assertion fails.
     */
    function assertEventFired(obj: Dynamic, event: String, invokeFunc: haxe.Constraints.Function, ?listener: haxe.Constraints.Function, ?msg: String): Void;


    /**
     * Assert that an event is not fired.
     *
     * @param obj {Object} The object on which the event should be fired.
     * @param event {String} The event which should be fired.
     * @param invokeFunc {Function} The function which will be invoked and which
     *   should not fire the event.
     * @param msg {String} Message to be shows if the assertion fails.
     */
    function assertEventNotFired(obj: Dynamic, event: String, invokeFunc: haxe.Constraints.Function, msg: String): Void;


    /**
     * Asserts that the callback raises a matching exception.
     *
     * @param callback {Function} function to check
     * @param exception {Error?Error} Expected constructor of the exception.
     *   The assertion fails if the raised exception is not an instance of the
     *   parameter.
     * @param re {String|RegExp} The assertion fails if the error message does
     *   not match this parameter
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertException(callback: haxe.Constraints.Function, exception: Dynamic, re: Dynamic, msg: Dynamic): Void; // TODO: fix types, add overlaods


    /**
     * Assert that the value is an item in the given array.
     *
     * @param value {var} Value to check
     * @param array {Array} List of valid values
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertInArray(value: Dynamic, array: Array<Dynamic>, msg: String): Void;


    /**
     * Assert that both array have identical array items.
     *
     * @param expected {Array} The expected array
     * @param found {Array} The found array
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertArrayEquals(expected: Array<Dynamic>, found: Array<Dynamic>, msg: String): Void;


    /**
     * Assert that the value is a key in the given map.
     *
     * @param value {var} Value to check
     * @param map {Map} Map, where the keys represent the valid values
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertKeyInMap(value: Dynamic, map: Dynamic, msg: String): Void; // TODO: fix map


    /**
     * Assert that the value is a function.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertFunction(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is a string.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertString(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is a boolean.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertBoolean(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is a number.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertNumber(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is a number >= 0.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertPositiveNumber(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is an integer.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertInteger(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is an integer >= 0.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertPositiveInteger(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is inside the given range.
     *
     * @param value {var} Value to check
     * @param min {Number} lower bound
     * @param max {Number} upper bound
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertInRange(value: Dynamic, min: Float, max: Float, msg: String): Void; // TODO: either


    /**
     * Assert that the value is an object.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertObject(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is an array.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertArray(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is a map either created using <code>new Object</code>
     * or by using the object literal notation <code>{ ... }</code>.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertMap(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is a regular expression.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertRegExp(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value has the given type using the <code>typeof</code>
     * operator. Because the type is not always what it is supposed to be it is
     * better to use more explicit checks like {@link #assertString} or
     * {@link #assertArray}.
     *
     * @param value {var} Value to check
     * @param type {String} expected type of the value
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertType(value: Dynamic, type: String, msg: String): Void;


    /**
     * Assert that the value is an instance of the given class.
     *
     * @param value {var} Value to check
     * @param clazz {Class} The value must be an instance of this class
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertInstance(value: Dynamic, clazz: Dynamic, msg: String): Void; // TODO: clazz


    /**
     * Assert that the value implements the given interface.
     *
     * @param value {var} Value to check
     * @param iface {Class} The value must implement this interface
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertInterface(value: Dynamic, iface: Dynamic, msg: String): Void; // TODO: iface


    /**
     * Assert that the value represents the given CSS color value. This method
     * parses the color strings and compares the RGB values. It is able to
     * parse values supported by {@link qx.util.ColorUtil#stringToRgb}.
     *
     *  @param expected {String} The expected color
     *  @param value {String} The value to check
     *  @param msg {String} Message to be shown if the assertion fails.
     */
   function assertCssColor(expected: String, value: String, msg: String): Void;


    /**
     * Assert that the value is a DOM element.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertElement(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is an instance of {@link qx.core.Object}.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertQxObject(value: Dynamic, msg: String): Void;


    /**
     * Assert that the value is an instance of {@link qx.ui.core.Widget}.
     *
     * @param value {var} Value to check
     * @param msg {String} Message to be shown if the assertion fails.
     */
    function assertQxWidget(value: Dynamic, msg: String): Void;
}