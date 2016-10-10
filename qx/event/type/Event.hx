package qx.event.type;

@:native("qx.event.type.Event")
extern class Event
extends qx.core.Object
{

	/** The current event phase is the capturing phase. */
    static var CAPTURING_PHASE(default, null): Int; // = 1,

    /** The event is currently being evaluated at the target */
    static var AT_TARGET(default, null): Int; // = 2,

    /** The current event phase is the bubbling phase. */
    static var BUBBLING_PHASE(default, null): Int; // = 3
	
	/**
     * Initialize the fields of the event. The event must be initialized before
     * it can be dispatched.
     *
     * @param canBubble {Boolean?false} Whether or not the event is a bubbling event.
     *     If the event is bubbling, the bubbling can be stopped using
     *     {@link #stopPropagation}
     * @param cancelable {Boolean?false} Whether or not an event can have its default
     *     action prevented. The default action can either be the browser's
     *     default action of a native event (e.g. open the context menu on a
     *     right click) or the default action of a qooxdoo class (e.g. close
     *     the window widget). The default action can be prevented by calling
     *     {@link #preventDefault}
     * @return {qx.event.type.Event} The initialized event instance
     */
    function init(?canBubble: Bool, ?cancelable: Bool): qx.event.type.Event;
	
	
	/**
     * Create a clone of the event object, which is not automatically disposed
     * or pooled after an event dispatch.
     *
     * @param embryo {qx.event.type.Event?null} Optional event class, which will
     *     be configured using the data of this event instance. The event must be
     *     an instance of this event class. If the value is <code>null</code>,
     *     a new pooled instance is created.
     * @return {qx.event.type.Event} a clone of this class.
     */
	@:native("clone")
	function cloneEvent(?embryo: qx.event.type.Event): qx.event.type.Event;
	
	
	/**
     * Stops event from all further processing. Execute this when the
     * current handler should have "exclusive rights" to the event
     * and no further reaction by anyone else should happen.
     */
    function stop(): Void;
	
	/**
     * This method is used to prevent further propagation of an event during event
     * flow. If this method is called by any event listener the event will cease
     * propagating through the tree. The event will complete dispatch to all listeners
     * on the current event target before event flow stops.
     *
     */
    function stopPropagation(): Void;
	
	/**
     * Get whether further event propagation has been stopped.
     *
     * @return {Boolean} Whether further propagation has been stopped.
     */
    function getPropagationStopped(): Bool;
	
	/**
     * Prevent the default action of cancelable events, e.g. opening the context
     * menu, ...
     *
     */
    function preventDefault(): Void;
	
	
	/**
     * Get whether the default action has been prevented
     *
     * @return {Boolean} Whether the default action has been prevented
     */
    function getDefaultPrevented(): Bool;
	
	/**
     * The name of the event
     *
     * @return {String} name of the event
     */
    function getType(): String;

	/**
     * Override the event type
     *
     * @param type {String} new event type
     */
    function setType(type: String): Void;
	
	/**
     * Used to indicate which phase of event flow is currently being evaluated.
     *
     * @return {Integer} The current event phase. Possible values are
     *         {@link #CAPTURING_PHASE}, {@link #AT_TARGET} and {@link #BUBBLING_PHASE}.
     */
    function getEventPhase(): Int;
	
	
	/**
     * Override the event phase
     *
     * @param eventPhase {Integer} new event phase
     */
    function setEventPhase(eventPhase: Int): Void;
	
	
	/**
     * The time (in milliseconds relative to the epoch) at which the event was created.
     *
     * @return {Integer} the timestamp the event was created.
     */
    function getTimeStamp(): Int;
	
	
	/**
     * Returns the event target to which the event was originally
     * dispatched.
     *
     * @return {Element} target to which the event was originally
     *       dispatched.
     */
    function getTarget(): js.html.EventTarget; // TODO: type
	
	
	/**
     * Override event target.
     *
     * @param target {Element} new event target
     */
    function setTarget(target: js.html.EventTarget): Void; // TODO: type
	
	/**
     * Get the event target node whose event listeners are currently being
     * processed. This is particularly useful during event capturing and
     * bubbling.
     *
     * @return {Element} The target the event listener is currently
     *       dispatched on.
     */
    function getCurrentTarget(): js.html.EventTarget; // TODO: type
	
	/**
     * Override current target.
     *
     * @param currentTarget {Element} new current target
     */
    function setCurrentTarget(currentTarget: js.html.EventTarget): Void;
	
	/**
     * Get the related event target. This is only configured for
     * events which also had an influences on another element e.g.
     * mouseover/mouseout, focus/blur, ...
     *
     * @return {Element} The related target
     */
    function getRelatedTarget(): js.html.EventTarget;
	
	/**
     * Override related target.
     *
     * @param relatedTarget {Element} new related target
     */
    function setRelatedTarget(relatedTarget: js.html.EventTarget): Void;
	
	/**
     * Get the original event target. This is only configured
     * for events which are fired by another event (often when
     * the target should be reconfigured for another view) e.g.
     * low-level DOM event to widget event.
     *
     * @return {Element} The original target
     */
    function getOriginalTarget(): js.html.EventTarget;
	
	/**
     * Override original target.
     *
     * @param originalTarget {Element} new original target
     */
    function setOriginalTarget(originalTarget: js.html.EventTarget): Void;
	
	/**
     * Check whether or not the event is a bubbling event. If the event can
     * bubble the value is true, else the value is false.
     *
     * @return {Boolean} Whether the event bubbles
     */
    function getBubbles(): Bool;
	
	/**
     * Set whether the event bubbles.
     *
     * @param bubbles {Boolean} Whether the event bubbles
     */
    function setBubbles(bubbles: Bool): Void;
	
	/**
     * Get whether the event is cancelable
     *
     * @return {Boolean} Whether the event is cancelable
     */
    function isCancelable(): Bool;
	
	/**
     * Set whether the event is cancelable
     *
     * @param cancelable {Boolean} Whether the event is cancelable
     */
    function setCancelable(cancelable: Bool): Void;
	
} 