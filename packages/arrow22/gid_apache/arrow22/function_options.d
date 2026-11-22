/// Module for [FunctionOptions] class
module gid_apache.arrow22.function_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.types;

/** */
class FunctionOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_function_options_get_type != &gidSymbolNotFound ? garrow_function_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFunctionOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override FunctionOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.function_options.FunctionOptions]
      Returns: New builder object
  */
  static FunctionOptionsGidBuilder builder() nothrow
  {
    return new FunctionOptionsGidBuilder;
  }

  /** */
  bool equal(gid_apache.arrow22.function_options.FunctionOptions otherOptions = null) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_function_options_equal(cast(GArrowFunctionOptions*)this._cPtr, otherOptions ? cast(GArrowFunctionOptions*)otherOptions._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = garrow_function_options_to_string(cast(GArrowFunctionOptions*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.function_options.FunctionOptions]
class FunctionOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.function_options.FunctionOptions]
final class FunctionOptionsGidBuilder : FunctionOptionsGidBuilderImpl!FunctionOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FunctionOptions build() nothrow
  {
    return new FunctionOptions(cast(void*)createGObject(FunctionOptions._getGType), Yes.Take);
  }
}
