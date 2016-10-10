package qx;

import js.Browser;
import haxe.extern.EitherType;
import haxe.extern.Rest;

import qx.core.Aspect;
import qx.core.BaseInit;
import qx.core.Init;
import qx.core.MAssert;
import qx.core.MBindTo;
import qx.core.MEvent;
import qx.core.MLogging;
import qx.core.MProperty;
import qx.core.Object;

import qx.event.type.Event;

import qx.type.Array;
import qx.type.BaseArray;
import qx.type.BaseError;
import qx.type.BaseString;

import qx.event.type.Event;

import qx.application.Routing;
import qx.application.IApplication;
import qx.application.AbstractGui;
import qx.application.Basic;
import qx.application.Inline;
import qx.application.Mobile;
import qx.application.Native;
import qx.application.Standalone;

import qx.ui.core.Widget;

import qx.ui.mobile.core.Widget;

import qx.ui.root.Application;
import qx.ui.root.Page;



import qx.util.Base64;

class TestClass extends qx.core.Object {
    override public function toHashCode(): Int {
        //return super.toHashCode();
        return this.baseNoArgs();
    }
}

// Test class for writing externs.
class Main {
    static function main() {
        var obj = new qx.core.Object();
        obj.Event.addListener('test', function() { trace('test'); });

        obj.baseArgs('test');
        obj.baseNoArgs();
        obj.self.test();

        obj.Logging.debug('Test');

        obj.Property.set( { a : 5, b : 'xxx' } );
		
		

        obj.dispose();
        var str:String = qx.util.Base64.encode('abcde');
		
		qx.core.Init.getApplication();
		
		var app:qx.application.Standalone = null;
		var aux = app._createRootApplication();

        
        trace(str);
    }
}
