package qx.core;

/**
 * Internal class for handling of dynamic properties. Should only be used
 * through the methods provided by {@link qx.Class}.
 */
@:native("qx.core.Property")
extern class Property
{

	/**
     * Attach $$refreshInheritables method stub to the given class
     *
     * @param clazz {Class} clazz to which the refresher should be added
     */
	static function attachRefreshInheritablesfunction(clazz: Dynamic): Void;
	
	/**
     * Attach one property to class
     *
     * @param clazz {Class} Class to attach properties to
     * @param name {String} Name of property
     * @param config {Map} Configuration map of property
     */
    static function attachMethods(clazz: Dynamic, name: std.String, config: Dynamic): Void;
	
	/**
     * Generates the optimized getter
     * Supported variants: get
     *
     * @param instance {Object} the instance which calls the method
     * @param clazz {Class} the class which originally defined the property
     * @param name {String} name of the property
     * @param variant {String} Method variant.
     * @return {var} Execute return value of apply generated function, generally the incoming value
     */
    static function executeOptimizedGetter(instance: Dynamic, clazz: Dynamic, name: std.String, variant: std.String): Dynamic;
	
	/**
     * Generates the optimized setter
     * Supported variants: set, reset, init, refresh, style, unstyle
     *
     * @param instance {Object} the instance which calls the method
     * @param clazz {Class} the class which originally defined the property
     * @param name {String} name of the property
     * @param variant {String} Method variant.
     * @param args {arguments} Incoming arguments of wrapper method
     * @return {var} Execute return value of apply generated function, generally the incoming value
     */
    static function executeOptimizedSetter(instance: Dynamic, clazz: Dynamic, name: std.String, variant: std.String, args: Dynamic): Dynamic;
	
	
}
