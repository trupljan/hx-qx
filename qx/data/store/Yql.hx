package qx.data.store;
import haxe.extern.EitherType;
import haxe.extern.Rest;

@:native("qx.data.store.Yql")
extern class Yql
extends qx.data.store.Jsonp
{

  /**
   * @param query {String} The query for YQL.
   * @param delegate {Object?null} The delegate containing one of the methods
   *   specified in {@link qx.data.store.IStoreDelegate}.
   * @param https {Boolean?null} If https should be used.
   */
    public function new(query: std.String, ?delegate: Dynamic, ?https: Bool);
    
}
