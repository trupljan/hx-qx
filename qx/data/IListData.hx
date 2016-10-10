package qx.data;
import haxe.extern.EitherType;
import haxe.extern.Rest;
import qx.locale.String;

/**
 * This interface defines a data structure compatible with the data binding
 * controllers.
 * It defines a minimum of functionality which the controller need to work.
 */
@:native("qx.data.IListData")
extern interface IListData 
{

    /**
     * The change event which will be fired if there is a change in the array.
     * The data contains a map with five key value pairs:
     * <li>start: The start index of the change.</li>
     * <li>end: The end index of the change.</li>
     * <li>type: The type of the change as a String. This can be 'add',
     * 'remove', 'order' or 'add/remove'</li>
     * <li>added: The items which has been added (as a JavaScript array)</li>
     * <li>removed: The items which has been removed (as a JavaScript array)</li>
     */
    public var event_change(get, never): qx.event.type.SInfo;
    //inline function get_event_change(): qx.event.type.SInfo { return { name: "change", type: "qx.event.type.Data" } }; 


    /**
     * The changeLength event will be fired every time the length of the
     * array changes.
     */
    public var event_changeLength(get, never): qx.event.type.SInfo;
    //inline function get_event_changeLength(): qx.event.type.SInfo { return { name: "changeLength", type: "qx.event.type.Data" } };

      /**
     * Returns the item at the given index
     *
     * @param index {Number} The index requested of the data element.
     *
     * @return {var} The element at the given index.
     */
    function getItem(index: Int): Dynamic;


    /**
     * Sets the given item at the given position in the data structure. A
     * change event has to be fired.
     *
     * @param index {Number} The index of the data element.
     * @param item {var} The new item to set.
     */
    function setItem(index: Int, item: Dynamic): Void;


    /**
     * Method to remove and add new element to the data. For every remove or
     * add a change event should be fired.
     *
     * @param startIndex {Integer} The index where the splice should start
     * @param amount {Integer} Defines number of element which will be removed
     *   at the given position.
     * @param varargs {var} All following parameters will be added at the given
     *   position to the array.
     * @return {qx.data.Array} An array containing the removed elements.
     */
    function splice(startIndex: Int, amount: Int, varargs: Rest<Dynamic>): qx.data.Array;


    /**
     * Check if the given item is in the current data structure.
     *
     * @param item {var} The item which is possibly in the data structure.
     * @return {Boolean} true, if the array contains the given item.
     */
    function contains(item: Dynamic): Bool;


    /**
     * Returns the current length of the data structure.
     *
     * @return {Number} The current length of the data structure.
     */
    function getLength(): Int;


    /**
     * Returns the list data as native array.
     *
     * @return {Array} The native array.
     */
    function toArray(): std.Array<Dynamic>;
}
