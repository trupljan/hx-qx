package qx.data.store;
import haxe.extern.EitherType;
import haxe.extern.Rest;

/**
 * Objects, which are used as delegates for a data binding store may
 * implement any of the methods described in this interface. The delegate does
 * not need implement all of the methods of this interface. If a method is not
 * implemented the store provides a default implementation.
 *
 * Note: This interface is meant to document the delegate but should not be
 * listed in the <code>implement</code> key of a class unless all methods are
 * really implemented.
 */
@:native("qx.data.store.IStoreDelegate")
extern interface IStoreDelegate {
    /**
     * This method manipulates the data from the request and returns the
     * manipulated data.
     *
     * @param data {Object} The data received by the request.
     * @return {Object} The manipulated data.
     */
    function manipulateData(data: Dynamic): Dynamic;


    /**
     * This method can change the settings on the used request by the store.
     *
     * @param request {var} The created request, depending on the implementation
     *   of the data store.
     */
    function configureRequest(request: Dynamic): Void;
}