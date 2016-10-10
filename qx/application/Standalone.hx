package qx.application;

/**
 * For a GUI application that looks & feels like native desktop application
 * (often called "RIA" - Rich Internet Application).
 *
 * Such a stand-alone application typically creates and updates all content
 * dynamically. Often it is called a "single-page application", since the
 * document itself is never reloaded or changed. Communication with the server
 * is done with AJAX.
 *
 * @require(qx.core.Init)
 */
@:native("qx.application.Standalone")
extern class Standalone
extends AbstractGui
{
	
	/** Create root widget */
	@:native("_createRootWidget")
	function _createRootApplication(): qx.ui.root.Application;
	
}