package qx.application;
import haxe.extern.EitherType;

/**
*
 * Basic application routing manager.
 *
 * Define routes to react on certain GET / POST / DELETE / PUT operations.
 *
 * * GET is triggered when the hash value of the url is changed. Can be called
 *   manually by calling the {@link #executeGet} method.
 * * POST / DELETE / PUT has to be triggered manually right now (will be changed later)
 *    by calling the {@link #executePost}, {@link #executeDelete}, {@link #executePut} method.
 *
 * This manager can also be used to provide browser history.
 *
 * *Example*
 *
 * Here is a little example of how to use the widget.
 *
 * <pre class='javascript'>
 *   var r = new qx.application.Routing();
 *
 *   // show the start page, when no hash is given or the hash is "#/"
 *   r.onGet("/", function(data) {
 *     startPage.show();
 *   }, this);
 *
 *   // whenever the url /address is called show the address book page.
 *   r.onGet("/address", function(data) {
 *     addressBookPage.show();
 *   }, this);
 *
 *   // address with the parameter "id"
 *   r.onGet("/address/{id}", function(data) {
 *     addressPage.show();
 *     model.loadAddress(data.params.id);
 *   }, this);
 *
 *   // Alternative you can use regExp for a route
 *   r.onGet(/address\/(.*)/, function(data) {
 *     addressPage.show();
 *     model.loadAddress(data.params.0);
 *   }, this);
 *
 *   // make sure that the data is always loaded
 *   r.onGet("/address.*", function(data) {
 *     if (!model.isLoaded()) {
 *       model.loadAddresses();
 *     }
 *   }, this);
 *
 *   // update the address
 *   r.onPost("/address/{id}", function(data) {
 *     model.updateAddress(data.params.id);
 *   }, this);
 *
 *   // delete the address and navigate back
 *   r.onDelete("/address/{id}", function(data) {
 *     model.deleteAddress(data.params.id);
 *     r.executeGet("/address", {reverse:true});
 *   }, this);
 * </pre>
 *
 * This example defines different routes to handle navigation events.
 */
@:native("qx.application.Routing")
extern class Routing
{
	/** Construct. */
	public function new();
	
	/** Default path. */
	var DEFAULT_PATH(default, null): std.String; // "/"
	
	/**
     * Initialization method used to execute the get route for the currently set history path.
     * If no path is set, either the given argument named <code>defaultPath</code>
     * or the {@link #DEFAULT_PATH} will be used for initialization.
     *
     * @param defaultPath {String?} Optional default path for initialization.
     */
    function init(?defaultPath: std.String): Void;
	
	/**
     * Checks if path is valid and registered in channel "get" and then just returns it.
     * If the path is not valid either the <code>defaultPath</code> (if given) or the
     * {@link #DEFAULT_PATH} will be returned.
     *
     * @param path {String} Path which gets checked.
     * @param defaultPath {String?} Optional default path.
     * @return {String} A valid path.
     */
    function _getPathOrFallback(path: std.String, ?defaultPath: std.String): std.String;
	
	
	/**
     * Adds a route handler for the "get" operation. The route gets called
     * when the {@link #executeGet} method found a match.
     *
     * @param route {String|RegExp} The route, used for checking if the executed path matches.
     * @param handler {Function} The handler to call, when the route matches with the executed path.
     * @param scope {Object} The scope of the handler.
     * @return {String} Event listener ID
     */
    function onGet(route: EitherType<std.String, js.RegExp>, handler: haxe.Constraints.Function, scope: Dynamic): std.String;


    /**
     * This is a shorthand for {@link #onGet}.
     *
     * @param route {String|RegExp} The route, used for checking if the executed path matches.
     * @param handler {Function} The handler to call, when the route matches with the executed path.
     * @param scope {Object} The scope of the handler.
     * @return {String} Event listener ID
     */
    function on(route: EitherType<std.String, js.RegExp>, handler: haxe.Constraints.Function, scope: Dynamic): std.String;


    /**
     * Adds a route handler for the "post" operation. The route gets called
     * when the {@link #executePost} method found a match.
     *
     * @param route {String|RegExp} The route, used for checking if the executed path matches.
     * @param handler {Function} The handler to call, when the route matches with the executed path.
     * @param scope {Object} The scope of the handler.
     * @return {String} Event listener ID
     */
    function onPost(route: EitherType<std.String, js.RegExp>, handler: haxe.Constraints.Function, scope: Dynamic): std.String;


    /**
     * Adds a route handler for the "put" operation. The route gets called
     * when the {@link #executePut} method found a match.
     *
     * @param route {String|RegExp} The route, used for checking if the executed path matches
     * @param handler {Function} The handler to call, when the route matches with the executed path
     * @param scope {Object} The scope of the handler
     * @return {String} Event listener ID
     */
    function onPut(route: EitherType<std.String, js.RegExp>, handler: haxe.Constraints.Function, scope: Dynamic): std.String;


    /**
     * Adds a route handler for the "delete" operation. The route gets called
     * when the {@link #executeDelete} method found a match.
     *
     * @param route {String|RegExp} The route, used for checking if the executed path matches
     * @param handler {Function} The handler to call, when the route matches with the executed path
     * @param scope {Object} The scope of the handler
     * @return {String} Event listener ID
     */
    function onDelete(route: EitherType<std.String, js.RegExp>, handler: haxe.Constraints.Function, scope: Dynamic): std.String;


    /**
     * Adds a route handler for the "any" operation. The "any" operation is called
     * before all other operations.
     *
     * @param route {String|RegExp} The route, used for checking if the executed path matches
     * @param handler {Function} The handler to call, when the route matches with the executed path
     * @param scope {Object} The scope of the handler
     * @return {String} Event listener ID
     */
    function onAny(route: EitherType<std.String, js.RegExp>, handler: haxe.Constraints.Function, scope: Dynamic): std.String;


    /**
     * Removes a registered route by the given id.
     *
     * @param id {String} The id of the registered route
     */
    function remove(id: std.String): Void;

    /**
     * Executes the get operation and informs all matching route handler.
     *
     * @param path {String} The path to execute
     * @param customData {var} The given custom data that should be propagated
     * @param fromEvent {var} Determines whether this method was called from history
     *
     */
    function _executeGet(path: std.String, customData:Dynamic, fromEvent: Dynamic): Void;


    /**
     * Executes the get operation and informs all matching route handler.
     *
     * @param path {String} The path to execute
     * @param customData {var} The given custom data that should be propagated
     */
    function executeGet(path: std.String, customData:Dynamic): Void;


    /**
     * This is a shorthand for {@link #executeGet}.
     *
     * @param path {String} The path to execute
     * @param customData {var} The given custom data that should be propagated
     */
    function execute(path: std.String, customData: Dynamic): Void;


    /**
     * Executes the post operation and informs all matching route handler.
     *
     * @param path {String} The path to execute
     * @param params {Map} The given parameters that should be propagated
     * @param customData {var} The given custom data that should be propagated
     */
    function executePost(path: std.String, params: Dynamic, customData: Dynamic): Void;


    /**
     * Executes the put operation and informs all matching route handler.
     *
     * @param path {String} The path to execute
     * @param params {Map} The given parameters that should be propagated
     * @param customData {var} The given custom data that should be propagated
     */
    function executePut(path: std.String, params: Dynamic, customData: Dynamic): Void;


    /**
     * Executes the delete operation and informs all matching route handler.
     *
     * @param path {String} The path to execute
     * @param params {Map} The given parameters that should be propagated
     * @param customData {var} The given custom data that should be propagated
     */
    function executeDelete(path: std.String, params: Dynamic, customData: Dynamic): Void;


    /**
     * Returns state value (history hash) of the navigation handler.
     * @return {String} State of history navigation handler
     */
    function getState(): std.String;

    /**
    * Navigates back to the previously executed path.
    *
    * @param customData {Map?} The given custom data that should be propagated.
    *   If it contains a key <code>defaultPath</code> and no history data is
    *   available, its value is used as a target path. If it does not include
    *   such a key, the routing's default path is used instead (again only for
    *   empty history).
    *   This behavior is useful for instance when reloading a page during
    *   development but expecting the page's back button always to work.
    */
    function back(?customData: Dynamic): Void;

    /**
     * Decouples the Routing from the navigation handler.
     */
    function dispose(): Void;
	
}
