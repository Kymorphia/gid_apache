/// Module for [NullOptions] class
module gid_apache.arrow26.null_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.function_options;
import gid_apache.arrow26.types;

/** */
class NullOptions : gid_apache.arrow26.function_options.FunctionOptions
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
    return cast(void function())garrow_null_options_get_type != &gidSymbolNotFound ? garrow_null_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowNullOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override NullOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.null_options.NullOptions]
      Returns: New builder object
  */
  static NullOptionsGidBuilder builder() nothrow
  {
    return new NullOptionsGidBuilder;
  }

  /**
      Get `nanIsNull` property.
      Returns: Whether floating-point NaN values are considered null.
  */
  @property bool nanIsNull() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("nan-is-null");
  }

  /**
      Set `nanIsNull` property.
      Params:
        propval = Whether floating-point NaN values are considered null.
  */
  @property void nanIsNull(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("nan-is-null", propval);
  }

  /** */
  this() nothrow
  {
    GArrowNullOptions* _cretval;
    _cretval = garrow_null_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.null_options.NullOptions]
class NullOptionsGidBuilderImpl(T) : gid_apache.arrow26.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `nanIsNull` property.
      Params:
        propval = Whether floating-point NaN values are considered null.
      Returns: Builder instance for fluent chaining
  */
  T nanIsNull(bool propval) nothrow
  {
    return setProperty("nan-is-null", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.null_options.NullOptions]
final class NullOptionsGidBuilder : NullOptionsGidBuilderImpl!NullOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  NullOptions build() nothrow
  {
    return new NullOptions(cast(void*)createGObject(NullOptions._getGType), Yes.Take);
  }
}
