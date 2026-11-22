/// Module for [MatchSubstringOptions] class
module gid_apache.arrow26.match_substring_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.function_options;
import gid_apache.arrow26.types;

/** */
class MatchSubstringOptions : gid_apache.arrow26.function_options.FunctionOptions
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
    return cast(void function())garrow_match_substring_options_get_type != &gidSymbolNotFound ? garrow_match_substring_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMatchSubstringOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override MatchSubstringOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.match_substring_options.MatchSubstringOptions]
      Returns: New builder object
  */
  static MatchSubstringOptionsGidBuilder builder() nothrow
  {
    return new MatchSubstringOptionsGidBuilder;
  }

  /**
      Get `ignoreCase` property.
      Returns: Whether to perform a case-insensitive match.
  */
  @property bool ignoreCase() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("ignore-case");
  }

  /**
      Set `ignoreCase` property.
      Params:
        propval = Whether to perform a case-insensitive match.
  */
  @property void ignoreCase(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("ignore-case", propval);
  }

  /**
      Get `pattern` property.
      Returns: The exact substring (or regex, depending on kernel) to look for
        inside input values.
  */
  @property string pattern() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("pattern");
  }

  /**
      Set `pattern` property.
      Params:
        propval = The exact substring (or regex, depending on kernel) to look for
          inside input values.
  */
  @property void pattern(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("pattern", propval);
  }

  /** */
  this() nothrow
  {
    GArrowMatchSubstringOptions* _cretval;
    _cretval = garrow_match_substring_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.match_substring_options.MatchSubstringOptions]
class MatchSubstringOptionsGidBuilderImpl(T) : gid_apache.arrow26.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `ignoreCase` property.
      Params:
        propval = Whether to perform a case-insensitive match.
      Returns: Builder instance for fluent chaining
  */
  T ignoreCase(bool propval) nothrow
  {
    return setProperty("ignore-case", propval);
  }

  /**
      Set `pattern` property.
      Params:
        propval = The exact substring (or regex, depending on kernel) to look for
          inside input values.
      Returns: Builder instance for fluent chaining
  */
  T pattern(string propval) nothrow
  {
    return setProperty("pattern", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.match_substring_options.MatchSubstringOptions]
final class MatchSubstringOptionsGidBuilder : MatchSubstringOptionsGidBuilderImpl!MatchSubstringOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MatchSubstringOptions build() nothrow
  {
    return new MatchSubstringOptions(cast(void*)createGObject(MatchSubstringOptions._getGType), Yes.Take);
  }
}
