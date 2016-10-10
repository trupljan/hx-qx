package qx;

import js.Browser;
import haxe.extern.EitherType;
import haxe.extern.Rest;

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

        
        trace(str);
    }
}
