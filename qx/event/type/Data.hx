package qx.event.type;

/**
 * Event object for data holding event or data changes.
 */
@:native("qx.event.type.Data")
extern class Data
extends qx.event.type.Event
{

	/**
     * The new data of the event sending this data event.
     * The return data type is the same as the event data type.
     *
     * @return {var} The new data of the event
     */
    function getData(): Dynamic;
	
	
	/**
     * The old data of the event sending this data event.
     * The return data type is the same as the event data type.
     *
     * @return {var} The old data of the event
     */
    function getOldData(): Dynamic;
	
}