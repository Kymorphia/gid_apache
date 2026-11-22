/// Module for [TrimOptions] class
module gid_apache.arrow23.trim_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.function_options;
import gid_apache.arrow23.types;

/** */
class TrimOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_trim_options_get_type != &gidSymbolNotFound ? garrow_trim_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTrimOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override TrimOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.trim_options.TrimOptions]
      Returns: New builder object
  */
  static TrimOptionsGidBuilder builder() nothrow
  {
    return new TrimOptionsGidBuilder;
  }

  /**
      Get `characters` property.
      Returns: The individual characters to be trimmed from the string.
  */
  @property string characters() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("characters");
  }

  /**
      Set `characters` property.
      Params:
        propval = The individual characters to be trimmed from the string.
  */
  @property void characters(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("characters", propval);
  }

  /** */
  this() nothrow
  {
    GArrowTrimOptions* _cretval;
    _cretval = garrow_trim_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.trim_options.TrimOptions]
class TrimOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `characters` property.
      Params:
        propval = The individual characters to be trimmed from the string.
      Returns: Builder instance for fluent chaining
  */
  T characters(string propval) nothrow
  {
    return setProperty("characters", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.trim_options.TrimOptions]
final class TrimOptionsGidBuilder : TrimOptionsGidBuilderImpl!TrimOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  TrimOptions build() nothrow
  {
    return new TrimOptions(cast(void*)createGObject(TrimOptions._getGType), Yes.Take);
  }
}
