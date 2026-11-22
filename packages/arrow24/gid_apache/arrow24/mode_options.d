/// Module for [ModeOptions] class
module gid_apache.arrow24.mode_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.function_options;
import gid_apache.arrow24.types;

/** */
class ModeOptions : gid_apache.arrow24.function_options.FunctionOptions
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
    return cast(void function())garrow_mode_options_get_type != &gidSymbolNotFound ? garrow_mode_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowModeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override ModeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.mode_options.ModeOptions]
      Returns: New builder object
  */
  static ModeOptionsGidBuilder builder() nothrow
  {
    return new ModeOptionsGidBuilder;
  }

  /**
      Get `minCount` property.
      Returns: If less than this many non-null values are observed, emit null.
  */
  @property uint minCount() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(uint)("min-count");
  }

  /**
      Set `minCount` property.
      Params:
        propval = If less than this many non-null values are observed, emit null.
  */
  @property void minCount(uint propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(uint)("min-count", propval);
  }

  /**
      Get `n` property.
      Returns: Number of distinct most-common values to return.
  */
  @property long n() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("n");
  }

  /**
      Set `n` property.
      Params:
        propval = Number of distinct most-common values to return.
  */
  @property void n(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("n", propval);
  }

  /**
      Get `skipNulls` property.
      Returns: Whether NULLs are skipped or not.
  */
  @property bool skipNulls() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("skip-nulls");
  }

  /**
      Set `skipNulls` property.
      Params:
        propval = Whether NULLs are skipped or not.
  */
  @property void skipNulls(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("skip-nulls", propval);
  }

  /** */
  this() nothrow
  {
    GArrowModeOptions* _cretval;
    _cretval = garrow_mode_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.mode_options.ModeOptions]
class ModeOptionsGidBuilderImpl(T) : gid_apache.arrow24.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `minCount` property.
      Params:
        propval = If less than this many non-null values are observed, emit null.
      Returns: Builder instance for fluent chaining
  */
  T minCount(uint propval) nothrow
  {
    return setProperty("min-count", propval);
  }

  /**
      Set `n` property.
      Params:
        propval = Number of distinct most-common values to return.
      Returns: Builder instance for fluent chaining
  */
  T n(long propval) nothrow
  {
    return setProperty("n", propval);
  }

  /**
      Set `skipNulls` property.
      Params:
        propval = Whether NULLs are skipped or not.
      Returns: Builder instance for fluent chaining
  */
  T skipNulls(bool propval) nothrow
  {
    return setProperty("skip-nulls", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.mode_options.ModeOptions]
final class ModeOptionsGidBuilder : ModeOptionsGidBuilderImpl!ModeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ModeOptions build() nothrow
  {
    return new ModeOptions(cast(void*)createGObject(ModeOptions._getGType), Yes.Take);
  }
}
