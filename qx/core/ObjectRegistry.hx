package qx.core;

/**
 * Registration for all instances of qooxdoo classes. Mainly
 * used to manage them for the final shutdown sequence and to
 * use weak references when connecting widgets to DOM nodes etc.
 *
 * @ignore(qx.dev, qx.dev.Debug.*)
 */
@:native("qx.core.ObjectRegistry")
extern class ObjectRegistry
{
	/** @type {Boolean} Whether the application is in the shutdown phase */
    static var inShutDown(default, null): Bool;
	
	/**
     * Registers an object into the database. This adds a hashcode
     * to the object (if not already done before) and stores it under
     * this hashcode. You can access this object later using the hashcode
     * by calling {@link #fromHashCode}.
     *
     * All registered objects are automatically disposed on application
     * shutdown. Each registered object must at least have a method
     * called <code>dispose</code>.
     *
     * @param obj {Object} Any object with a dispose() method
     */
    static function register(obj: Dynamic): Void;
	
	
	/**
     * Removes the given object from the database.
     *
     * @param obj {Object} Any previously registered object
     */
    static function unregister(obj: Dynamic): Void;
	
	
	/**
     * Returns an unique identifier for the given object. If such an identifier
     * does not yet exist, create it.
     *
     * @param obj {Object} the object to get the hashcode for
     * @return {String} unique identifier for the given object
     */
    static function toHashCode(obj: Dynamic): String;
	
	/**
     * Clears the unique identifier on the given object.
     *
     * @param obj {Object} the object to clear the hashcode for
     */
    static function clearHashCode(obj: Dynamic): Void;
	
	/**
     * Get an object instance by its hash code as returned by {@link #toHashCode}.
     * If the object is already disposed or the hashCode is invalid,
     * <code>null</code> is returned.
     *
     * @param hash {String} The object's hash code.
     * @return {qx.core.Object} The corresponding object or <code>null</code>.
     */
    static function fromHashCode(hash: String): qx.core.Object;
	
	/**
     * Disposing all registered object and cleaning up registry. This is
     * automatically executed at application shutdown.
     *
     */
    static function shutdown(): Void;
	
	/**
     * Returns the object registry.
     *
     * @return {Object} The registry
     */
    static function getRegistry(): Dynamic;
	
	/**
     * Returns the next hash code that will be used
     *
     * @return {Integer} The next hash code
     * @internal
     */
    static function getNextHash(): Int;
	
	/**
     * Returns the postfix that identifies the current iframe
     *
     * @return {Integer} The next hash code
     * @internal
     */
    static function getPostId(): Int;
	
	/**
     * Returns the map of stack traces recorded when objects are registered
     * (for dispose profiling)
     * @return {Map} Map: object hash codes to stack traces
     * @internal
     */
    static function getStackTraces(): Dynamic;
}