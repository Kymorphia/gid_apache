/// Module for [SplitPatternOptions] class
module gid_apache.arrow23.split_pattern_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.function_options;
import gid_apache.arrow23.types;

/** */
class SplitPatternOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_split_pattern_options_get_type != &gidSymbolNotFound ? garrow_split_pattern_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSplitPatternOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override SplitPatternOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.split_pattern_options.SplitPatternOptions]
      Returns: New builder object
  */
  static SplitPatternOptionsGidBuilder builder() nothrow
  {
    return new SplitPatternOptionsGidBuilder;
  }

  /** */
  @property long maxSplits() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("max-splits");
  }

  /** */
  @property void maxSplits(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("max-splits", propval);
  }

  /**
      Get `pattern` property.
      Returns: The exact substring to split on.
  */
  @property string pattern() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("pattern");
  }

  /**
      Set `pattern` property.
      Params:
        propval = The exact substring to split on.
  */
  @property void pattern(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("pattern", propval);
  }

  /**
      Get `reverse` property.
      Returns: Start splitting from the end of the string (only relevant when
        max_splits != -1)
  */
  @property bool reverse() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("reverse");
  }

  /**
      Set `reverse` property.
      Params:
        propval = Start splitting from the end of the string (only relevant when
          max_splits != -1)
  */
  @property void reverse(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("reverse", propval);
  }

  /** */
  this() nothrow
  {
    GArrowSplitPatternOptions* _cretval;
    _cretval = garrow_split_pattern_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.split_pattern_options.SplitPatternOptions]
class SplitPatternOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{

  /** */
  T maxSplits(long propval) nothrow
  {
    return setProperty("max-splits", propval);
  }

  /**
      Set `pattern` property.
      Params:
        propval = The exact substring to split on.
      Returns: Builder instance for fluent chaining
  */
  T pattern(string propval) nothrow
  {
    return setProperty("pattern", propval);
  }

  /**
      Set `reverse` property.
      Params:
        propval = Start splitting from the end of the string (only relevant when
          max_splits != -1)
      Returns: Builder instance for fluent chaining
  */
  T reverse(bool propval) nothrow
  {
    return setProperty("reverse", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.split_pattern_options.SplitPatternOptions]
final class SplitPatternOptionsGidBuilder : SplitPatternOptionsGidBuilderImpl!SplitPatternOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SplitPatternOptions build() nothrow
  {
    return new SplitPatternOptions(cast(void*)createGObject(SplitPatternOptions._getGType), Yes.Take);
  }
}
