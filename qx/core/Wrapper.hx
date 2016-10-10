package qx.core;

/**
 * Generic wrapper instance which wrapps a set of objects and forwards the API of
 * the first object to all objects in the array.
 */
@:native("qx.core.Wrapper")
extern class Wrapper
extends std.Array<Dynamic>
{

	/** Construct. */
	public function new();
	
}
