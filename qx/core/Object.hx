package qx.core;
import haxe.extern.EitherType;
import haxe.extern.Rest;

/**
 * The qooxdoo root class. All other classes are direct or indirect subclasses of this one.
 *
 * This class contains methods for:
 *
 * * object management (creation and destruction)
 * * interfaces for event system
 * * generic setter/getter support
 * * interfaces for logging console
 * * user friendly OO interfaces like {@link #self} or {@link #base}
 *
 * @require(qx.core.ObjectRegistry)
 */
@:native("qx.core.Object")
extern class Object
{

	/** Get assert interface of this object. */
	public var Assert(get, never): qx.core.MAssert;
	inline function get_Assert(): qx.core.MAssert { return cast(this); }

    /** Get binding interface of this object. */
	public var Binding(get, never): qx.data.MBinding;
	inline function get_Binding(): qx.data.MBinding { return cast(this); }	
	
	/** Get binding interface of this object. */
	public var BindTo(get, never): qx.core.MBindTo;
	inline function get_BindTo(): qx.core.MBindTo { return cast(this); }
	
	/** Get event interface of this object. */
	public var Event(get, never): qx.core.MEvent;
	inline function get_Event(): qx.core.MEvent { return cast(this); }
	
	/** Get logging interface of this object. */
	public var Logging(get, never): qx.core.MLogging;
	inline function get_Logging(): qx.core.MLogging { return cast(this); }
	
	/** Get property interface of this object. */
	public var Property(get, never): qx.core.MProperty;
	inline function get_Property(): qx.core.MProperty { return cast(this); }

    /**
     * Create a new instance
     */
    function new();

	
    /**
     * Return unique hash code of object
     *
     * @return {Integer} unique hash code of the object
     */
    function toHashCode(): Int;

	
    /**
     * Returns a string representation of the qooxdoo object.
     *
     * @return {String} string representation of the object
     */
    function toString(): std.String;

	
    /**
     * Call the same method of the qooxdoo super class.
     *
     * @return {var} the return value of the method of the base class.
     */
    @:native("base")
    inline function baseNoArgs(): Dynamic {
        return untyped this.base(untyped __js__('arguments'));
    } 

	
    /**
     * Call the base method of the qooxdoo super class.
     *
     * @param varargs {var} variable number of arguments passed to the overwritten function
     * @return {var} the return value of the method of the base class.
     */
    @:native("base")
    inline function baseArgs(varargs: Rest<Dynamic>): Dynamic {
        return untyped this.base(untyped __js__('arguments'), varargs);
    } 

	
    /**
     * Returns the static class (to access static members of this class)
     *
     * @param args {arguments} the arguments variable of the calling method
     * @return {var} the return value of the method of the base class.
     */
    var self(get, null): Dynamic;
    inline function get_self(): Dynamic {
        return untyped this.self(untyped __js__('arguments'));
    }


    /**
     * EXPERIMENTAL - NOT READY FOR PRODUCTION
     *
     * Returns a clone of this object. Copies over all user configured
     * property values. Do not configure a parent nor apply the appearance
     * styles directly.
	 * 
	 * @param p1 {var} first parametr (eg. embrio in derived class qx.event.type.Event)
     *
     * @return {qx.core.Object} The clone
     */
    function clone(?p1: Dynamic): qx.core.Object;

	
     /**
     * Store user defined data inside the object.
     *
     * @param key {String} the key
     * @param value {Object} the value of the user data
     */
    function setUserData(key: std.String, value: Dynamic): Void;

	
     /**
     * Load user defined data from the object
     *
     * @param key {String} the key
     * @return {Object} the user data
     */
    function getUserData(key: std.String): Dynamic;

	
    /**
     * Dispose this object.
     */
    function dispose(): Void;

	
    /**
     * Returns true if the object is disposed.
     *
     * @return {Boolean} Whether the object has been disposed
     */
    function isDisposed(): Bool;    


    /**
     * Disconnects and disposes given objects from instance.
     * Only works with qx.core.Object based objects e.g. Widgets.
     *
     * @param varargs {arguments} Names of fields (which store objects) to dispose
     */
    function _disposeObjects(varargs: Rest<Dynamic>): Void;


    /**
     * Disconnects and disposes given singleton objects from instance.
     * Only works with qx.core.Object based objects e.g. Widgets.
     *
     * @param varargs {arguments} Names of fields (which store objects) to dispose
     */
    function _disposeSingletonObjects(varargs: Rest<Dynamic>): Void;


    /**
     * Disposes all members of the given array and deletes
     * the field which refers to the array afterwards.
     *
     * @param field {String} Name of the field which refers to the array
     */
    function _disposeArray(field: std.String): Void;


    /**
     * Disposes all members of the given map and deletes
     * the field which refers to the map afterwards.
     *
     * @param field {String} Name of the field which refers to the map
     */
    function _disposeMap(field: std.String): Void;	

}
