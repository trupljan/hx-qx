package qx.core;

/**
 * ...
 */
@:native("qx.core.Environment")
extern class Environment
{
	/** Map containing the synchronous check functions. */
	static var _checks(default, null): Dynamic;
	
	
	/** Map containing the asynchronous check functions. */
    static var _asyncChecks(default, null): Dynamic;
	
	
	/**
     * Internal map for environment keys to check methods.
     * Gets populated dynamically at runtime.
     */
    static var _checksMap: Dynamic;
	

	/** Map. */
    static var _defaults: Dynamic;
	
	
	/**
     * The default accessor for the checks. It returns the value the current
     * environment has for the given key. The key could be something like
     * "qx.debug", "css.textoverflow" or "io.ssl". A complete list of
     * checks can be found in the class comment of this class.
     *
     * Please keep in mind that the result is cached. If you want to run the
     * check function again in case something could have been changed, take a
     * look at the {@link #invalidateCacheKey} function.
     *
     * @param key {String} The name of the check you want to query.
     * @return {var} The stored value depending on the given key.
     *   (Details in the class doc)
     */
    static function get(key: String): Dynamic;
	
	
	/**
     * Maps an environment key to a check class and method name.
     *
     * @param key {String} The name of the check you want to query.
     * @return {Array} [className, methodName] of
     *  the corresponding implementation.
     */
	static function _getClassNameFromEnvKey(key: String): Array<String>;
	
	
	/**
     * Invokes the callback as soon as the check has been done. If no check
     * could be found, a warning will be printed.
     *
     * @param key {String} The key of the asynchronous check.
     * @param callback {Function} The function to call as soon as the check is
     *   done. The function should have one argument which is the result of the
     *   check.
     * @param self {var} The context to use when invoking the callback.
     */
    static function getAsync(key: String, callback: haxe.Constraints.Function, self: Dynamic): Void;
	
	
	/**
     * Returns the proper value dependent on the check for the given key.
     *
     * @param key {String} The name of the check the select depends on.
     * @param values {Map} A map containing the values which should be returned
     *   in any case. The "default" key could be used as a catch all statement.
     * @return {var} The value which is stored in the map for the given
     *   check of the key.
     */
    static function select(key: String, values: Dynamic): Dynamic;
	
	
	/**
     * Selects the proper function dependent on the asynchronous check.
     *
     * @param key {String} The key for the async check.
     * @param values {Map} A map containing functions. The map keys should
     *   contain all possibilities which could be returned by the given check
     *   key. The "default" key could be used as a catch all statement.
     *   The called function will get one parameter, the result of the query.
     * @param self {var} The context which should be used when calling the
     *   method in the values map.
     */
    static function selectAsync(key: String, values: Dynamic, self: Dynamic): Void;
	
	
	/**
     * Takes a given map containing the check names as keys and converts
     * the map to an array only containing the values for check evaluating
     * to <code>true</code>. This is especially handy for conditional
     * includes of mixins.
     * @param map {Map} A map containing check names as keys and values.
     * @return {Array} An array containing the values.
     */
    static function filter(map: Dynamic): Array<Dynamic>;
	
	
	/**
     * Invalidates the cache for the given key.
     *
     * @param key {String} The key of the check.
     */
    static function invalidateCacheKey(key: String): Void;
	
	
	/**
     * Add a check to the environment class. If there is already a check
     * added for the given key, the add will be ignored.
     *
     * @param key {String} The key for the check e.g. html.featurexyz.
     * @param check {var} It could be either a function or a simple value.
     *   The function should be responsible for the check and should return the
     *   result of the check.
     */
    static function add(key: String, check: Dynamic): Void;
	
	
	/**
     * Adds an asynchronous check to the environment. If there is already a check
     * added for the given key, the add will be ignored.
     *
     * @param key {String} The key of the check e.g. html.featureabc
     * @param check {Function} A function which should check for a specific
     *   environment setting in an asynchronous way. The method should take two
     *   arguments. First one is the callback and the second one is the context.
     */
    static function addAsync(key: String, check: haxe.Constraints.Function): Void;
	
	
	/**
     * Returns all currently defined synchronous checks.
     *
     * @internal
     * @return {Map} The map of synchronous checks
     */
    static function getChecks(): Dynamic;
	
	
	/**
     * Returns all currently defined asynchronous checks.
     *
     * @internal
     * @return {Map} The map of asynchronous checks
     */
    static function getAsyncChecks(): Dynamic;
	
	
	/**
     * Initializer for the default values of the framework settings.
     */
    static function _initDefaultQxValues(): Null<haxe.Constraints.Function>;
	
}