package qx.data.store;
import haxe.extern.EitherType;
import haxe.extern.Rest;

@:native("qx.data.store.Json")
extern class Json
extends qx.core.Object
{
 /**
   * @param url {String|null} The url where to find the data. The store starts
   *   loading as soon as the URL is give. If you want to change some details
   *   concerning the request, add null here and set the URL as soon as
   *   everything is set up.
   * @param delegate {Object?null} The delegate containing one of the methods
   *   specified in {@link qx.data.store.IStoreDelegate}.
   */
    public function new(url: Null<std.String>, ?delegate: Dynamic);

    /**
     * Data event fired after the model has been created. The data will be the
     * created model.
     */
    public var event_loaded(get, never): qx.event.type.SInfo;
    inline function get_event_loaded(): qx.event.type.SInfo { return { name: "loaded", type: "qx.event.type.Data" } }; 
    
    /**
     * Fired when an error (aborted, timeout or failed) occurred
     * during the load. The data contains the respons of the request.
     * If you want more details, use the {@link #changeState} event.
     */
    public var event_error(get, never): qx.event.type.SInfo;
    inline function get_event_error(): qx.event.type.SInfo { return { name: "error", type: "qx.event.type.Data" } };

    /// model
    var model(get, set): Dynamic;
    inline function get_model(): Dynamic { return getModel(); }
    inline function set_model(value: Dynamic): Dynamic { setModel(value); return value; }
    function resetModel(): Void;
    function getModel(): Dynamic;
    function setModel(value: Dynamic): Dynamic;

    /// state
    var state(get, set): std.String;
    inline function get_state(): std.String { return getState(); }
    inline function set_state(value: std.String): std.String { setState(value); return value; }
    function resetState(): Void;
    function getState(): std.String;
    function setState(value: std.String): Void;

    /// url
    var url(get, set): std.String;
    inline function get_url(): std.String { return getUrl(); }
    inline function set_url(value: std.String): std.String { setUrl(value); return value; }
    function resetUrl(): Void;
    function getUrl(): std.String;
    function setUrl(value: std.String): Void;


    // marshaleler
    var _marshaler(default, default): Dynamic;


    // delegate
    var _delegate(default, default): Dynamic;


    // apply function
    function _applyUrl(value: Null<std.String>, old: Null<std.String>): Void;


    /**
     * Get request
     *
     * @return {Object} The request.
     */
    function _getRequest(): Dynamic;


    /**
     * Set request.
     *
     * @param request {Object} The request.
     */
    function _setRequest(request: Dynamic): Void;


    /**
     * Creates and sends a GET request with the given url.
     *
     * Listeners will be added to respond to the request’s "success",
     * "changePhase" and "fail" event.
     *
     * @param url {String} The url for the request.
     */
    function _createRequest(url: Null<std.String>): Void;

    /**
     * Handler called when request phase changes.
     *
     * Sets the store’s state.
     *
     * @param ev {qx.event.type.Data} The request’s changePhase event.
     */
    function _onChangePhase(ev: qx.event.type.Data): Void;


    /**
     * Handler called when not completing the request successfully.
     *
     * @param ev {qx.event.type.Event} The request’s fail event.
     */
    function _onFail(ev: qx.event.type.Event): Void;


    /**
     * Handler for the completion of the requests. It invokes the creation of
     * the needed classes and instances for the fetched data using
     * {@link qx.data.marshal.Json}.
     *
     * @param ev {qx.event.type.Event} The request’s success event.
     */
    function _onSuccess(ev: qx.event.type.Event): Void;
    

    /**
     * Reloads the data with the url set in the {@link #url} property.
     */
    function reload(): Void;    

}
