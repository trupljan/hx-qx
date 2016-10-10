package qx.application;


/**
 * For a GUI application on a traditional, HTML-dominated web page.
 *
 * The ideal environment for typical portal sites which use just a few qooxdoo
 * widgets. {@link qx.ui.root.Inline} can be used to embed qooxdoo widgets
 * into the page flow.
 *
 * @require(qx.core.Init)
 */
@:native("qx.application.Inline")
extern class Inline
extends AbstractGui
{
	/** Create root widget */
	@:native("_createRootWidget")
	function _createRootPage(): qx.ui.root.Page;
}