package qx.data.store;
import haxe.extern.EitherType;
import haxe.extern.Rest;

@:native("qx.data.store.Offline")
extern class Offline
extends qx.core.Object
{
  /**
   * @param key {String} A unique key which is used to store the data.
   * @param storage {String?} Either "local" or "session" to determinate which
   *   storage should be used. Default: "local"
   * @param delegate {Object} An object containing one of the methods described
   *   in {@link qx.data.marshal.IMarshalerDelegate}.
   */
  public function new(key: std.String, ?storage: std.String, ?delegate: Dynamic);

    /// model
    var model(get, set): Dynamic;
    inline function get_model(): Dynamic { return getModel(); }
    inline function set_model(value: Dynamic): Dynamic { setModel(value); return value; }
    function resetModel(): Void;
    function getModel(): Dynamic;
    function setModel(value: Dynamic): Dynamic;


   /**
     * Defines the delay between the requested and actuale execution of the setItem method
     */
    static var STORE_MODEL_DELAY(default, default): Int; // 400

    var _storage(default, default): Dynamic;


    // property apply
    function _applyModel(value: Dynamic, old: Dynamic): Void;


    /**
     * Helper for writing the set model to the browser storage.
     *
     * @signature function()
     */
    function _storeModel(): Void;


    /**
     * Helper for reading the model from the browser storage.
     */
    function _initializeModel(): Void;


    /**
     * Responsible for creating the model read from the brwoser storage.
     * @param data {var} The data read from the storage.
     */
    function _setModel(data: Dynamic): Void;


    /**
     * Accessor for the unique key used to store the data.
     * @return {String} The key.
     */
    public function getKey(): Void;

}
