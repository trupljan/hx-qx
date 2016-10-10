package qx.data.store;
import haxe.extern.EitherType;
import haxe.extern.Rest;

@:native("qx.data.store.Rest")
extern class Rest
extends qx.core.Object
{
  /**
   * @param resource {qx.io.rest.Resource} The resource.
   * @param actionName {String} The name of the resource's action to retrieve
   *  the response from.
   * @param delegate {Object?null} The delegate containing one of the methods
   *  specified in {@link qx.data.store.IStoreDelegate}.
   */
  public function new(resource: qx.io.rest.Resource, actionName: std.String, ?delegate: Dynamic);

/// resource
    var resource(get, set): qx.io.rest.Resource;
    inline function get_resource(): qx.io.rest.Resource { return getResource(); }
    inline function set_resource(value: qx.io.rest.Resource): qx.io.rest.Resource { setResource(value); return value; }
    function resetResource(): Void;
    function getResource(): qx.io.rest.Resource;
    function setResource(value: qx.io.rest.Resource): qx.io.rest.Resource;

/// actionName
    var actionName(get, set): std.String;
    inline function get_actionName(): std.String { return getActionName(); }
    inline function set_actionName(value: std.String): std.String { setActionName(value); return value; }
    function resetActionName(): Void;
    function getActionName(): std.String;
    function setActionName(value: std.String): Void;

  /// model
    var model(get, set): Dynamic;
    inline function get_model(): Dynamic { return getModel(); }
    inline function set_model(value: Dynamic): Dynamic { setModel(value); return value; }
    function resetModel(): Void;
    function getModel(): Dynamic;
    function setModel(value: Dynamic): Dynamic;

    /// marshaler
    var _marshaler(default, default): Dynamic;

    /// delegate
    var _delegate(default, default): Dynamic;    
}
