/// Module for [Function] class
module gid_apache.arrow24.function_;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid.gobject2.types;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.datum;
import gid_apache.arrow24.execute_context;
import gid_apache.arrow24.function_doc;
import gid_apache.arrow24.function_options;
import gid_apache.arrow24.types;

/** */
class Function : gid.gobject2.object.ObjectWrap
{

  /** */
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(ptr, take);
  }

  /** */
  static GType _getGType() nothrow
  {
    import gid.core.loader : gidSymbolNotFound;
    return cast(void function())garrow_function_get_type != &gidSymbolNotFound ? garrow_function_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFunction";
  }

  /** Returns `this`, for use in `with` statements. */
  override Function self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.function_.Function]
      Returns: New builder object
  */
  static FunctionGidBuilder builder() nothrow
  {
    return new FunctionGidBuilder;
  }

  /** */
  static gid_apache.arrow24.function_.Function[] all() nothrow
  {
    GList* _cretval;
    _cretval = garrow_function_all();
    auto _retval = gListToD!(gid_apache.arrow24.function_.Function, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }

  /** */
  static gid_apache.arrow24.function_.Function find(string name) nothrow
  {
    GArrowFunction* _cretval;
    const(char)* _name = name.toCString!(No.Malloc, No.Nullable);
    _cretval = garrow_function_find(_name);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.function_.Function)(cast(GArrowFunction*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow24.function_.Function otherFunction) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_function_equal(cast(GArrowFunction*)this._cPtr, otherFunction ? cast(GArrowFunction*)otherFunction._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow24.datum.Datum execute(gid_apache.arrow24.datum.Datum[] args, gid_apache.arrow24.function_options.FunctionOptions options = null, gid_apache.arrow24.execute_context.ExecuteContext context = null)
  {
    GArrowDatum* _cretval;
    auto _args = gListFromD!(gid_apache.arrow24.datum.Datum)(args);
    scope(exit) containerFree!(GList*, gid_apache.arrow24.datum.Datum, GidOwnership.None)(_args);
    GError *_err;
    _cretval = garrow_function_execute(cast(GArrowFunction*)this._cPtr, _args, options ? cast(GArrowFunctionOptions*)options._cPtr(No.Dup) : null, context ? cast(GArrowExecuteContext*)context._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.datum.Datum)(cast(GArrowDatum*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow24.function_options.FunctionOptions getDefaultOptions() nothrow
  {
    GArrowFunctionOptions* _cretval;
    _cretval = garrow_function_get_default_options(cast(GArrowFunction*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.function_options.FunctionOptions)(cast(GArrowFunctionOptions*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow24.function_doc.FunctionDoc getDoc() nothrow
  {
    GArrowFunctionDoc* _cretval;
    _cretval = garrow_function_get_doc(cast(GArrowFunction*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.function_doc.FunctionDoc)(cast(GArrowFunctionDoc*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string getName() nothrow
  {
    const(char)* _cretval;
    _cretval = garrow_function_get_name(cast(GArrowFunction*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(No.Free);
    return _retval;
  }

  /** */
  gid.gobject2.types.GType getOptionsType() nothrow
  {
    gid.gobject2.types.GType _retval;
    _retval = garrow_function_get_options_type(cast(GArrowFunction*)this._cPtr);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = garrow_function_to_string(cast(GArrowFunction*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.function_.Function]
class FunctionGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T function_(void* propval) nothrow
  {
    return setProperty("function", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.function_.Function]
final class FunctionGidBuilder : FunctionGidBuilderImpl!FunctionGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Function build() nothrow
  {
    return new Function(cast(void*)createGObject(Function._getGType), Yes.Take);
  }
}
