package qx.type;
import haxe.extern.EitherType;
import haxe.extern.Rest;

// TODO: Fix array types
/**
 * An extended array class which adds a lot of often used
 * convenience methods to the regular array like <code>remove</code> or
 * <code>contains</code>.
 */
@:native("qx.type.Array")
extern class Array extends BaseArray
{
  /**
   * Creates a new Array with the given length or the listed items.
   *
   * <pre class="javascript">
   * var arr1 = new qx.type.Array(length);
   * var arr2 = new qx.type.Array(elem0, elem1, ..., elemN);
   * </pre>
   *
   * * <code>length</code>: The initial length of the array.
   * * <code>item1, item2. .. itemN</code>:  the items that will make up the newly created array
   *
   * @param length_or_items {Integer|var?null} The initial size of the collection
   *        OR an argument list of elements.
   */
	function new(length_or_items: Rest<Dynamic>);
	
    /**
     * Returns a clone of the array. Primitive values are copied.
     * Others are referenced.
     *
     * @return {Array} Cloned array instance
     * @signature function()
     */
    function clone(): qx.type.BaseArray;


    /**
     * Insert an element at a given position
     *
     * @param obj {var} the element to insert
     * @param i {Integer} position where to insert the element into the arr
     * @return {Array} the array
     */
    function insertAt(obj: Dynamic, i: Int): qx.type.Array;


    /**
     * Insert an element before a given second element
     *
     * @param obj {var} object to be inserted
     * @param obj2 {var} insert obj1 before this object
     * @return {Array} the array
     */
    function insertBefore(obj: Dynamic, obj2: Dynamic): qx.type.Array;


    /**
     * Insert an element after a given second element
     *
     * @param obj {var} object to be inserted
     * @param obj2 {var} insert obj1 after this object
     * @return {Array} the array
     */
    function insertAfter(obj: Dynamic, obj2: Dynamic): qx.type.Array;


    /**
     * Remove an element at the given index
     *
     * @param i {Integer} index of the element to be removed
     * @return {var} The removed element.
     */
    function removeAt(i: Int): Dynamic;


    /**
     * Remove all elements
     *
     * @return {Array} empty array
     */
    function removeAll(): qx.type.Array;


    /**
     * Append the elements of the given array
     *
     * @param arr {Array} the elements of this array will be appended to other one
     * @return {Array} The modified array.
     * @throws {Error} if one of the arguments is not an array
     */
    function append(arr: qx.type.BaseArray): qx.type.Array;


    /**
     * Prepend the elements of the given array.
     *
     * @param arr {Array} The elements of this array will be prepended to other one
     * @return {Array} The modified array.
     * @throws {Error} if one of the arguments is not an array
     */
    function prepend(arr: qx.type.BaseArray): qx.type.Array;


    /**
     * Remove an element
     *
     * @param obj {var} element to be removed from the array
     * @return {var} the removed element
     */
    function remove(obj: Dynamic): Dynamic;


    /**
     * Whether the array contains the given element
     *
     * @param obj {var} object to look for
     * @return {Boolean} whether the array contains the element
     */
    function contains(obj: Dynamic): Bool;
	
}