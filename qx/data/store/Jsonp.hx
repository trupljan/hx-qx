package qx.data.store;
import haxe.extern.EitherType;
import haxe.extern.Rest;

@:native("qx.data.store.Jsonp")
extern class Jsonp
extends qx.data.store.Json
{
  /**
   * @param url {String?} URL of the JSONP service.
   * @param delegate {Object?null} The delegate containing one of the methods
   *   specified in {@link qx.data.store.IStoreDelegate}.
   * @param callbackParam {String?} The name of the callback param. See
   *   {@link qx.bom.request.Jsonp#setCallbackParam} for more details.
   */
  public function new(?url: Null<std.String>, ?delegate: Dynamic, ?callbackParam: std.String);

    /// callbackParam
    var callbackParam(get, set): String;
    inline function get_callbackParam(): String { return getCallbackParam(); }
    inline function set_callbackParam(value: String): String { setCallbackParam(value); return value; }
    function resetCallbackParam(): Void;
    function getCallbackParam(): String;
    function setCallbackParam(value: String): Void;

     /// callbackName
    var callbackName(get, set): String;
    inline function get_callbackName(): String { return getCallbackName(); }
    inline function set_callbackName(value: String): String { setCallbackName(value); return value; }
    function resetCallbackName(): Void;
    function getCallbackName(): String;
    function setCallbackName(value: String): Void;


    /// overridden
    override function _createRequest(url: std.String): Void;    
}