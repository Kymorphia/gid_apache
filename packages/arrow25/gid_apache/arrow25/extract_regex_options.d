/// Module for [ExtractRegexOptions] class
module gid_apache.arrow25.extract_regex_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.function_options;
import gid_apache.arrow25.types;

/** */
class ExtractRegexOptions : gid_apache.arrow25.function_options.FunctionOptions
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
    return cast(void function())garrow_extract_regex_options_get_type != &gidSymbolNotFound ? garrow_extract_regex_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowExtractRegexOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override ExtractRegexOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.extract_regex_options.ExtractRegexOptions]
      Returns: New builder object
  */
  static ExtractRegexOptionsGidBuilder builder() nothrow
  {
    return new ExtractRegexOptionsGidBuilder;
  }

  /**
      Get `pattern` property.
      Returns: Regular expression with named capture fields.
  */
  @property string pattern() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("pattern");
  }

  /**
      Set `pattern` property.
      Params:
        propval = Regular expression with named capture fields.
  */
  @property void pattern(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("pattern", propval);
  }

  /** */
  this() nothrow
  {
    GArrowExtractRegexOptions* _cretval;
    _cretval = garrow_extract_regex_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.extract_regex_options.ExtractRegexOptions]
class ExtractRegexOptionsGidBuilderImpl(T) : gid_apache.arrow25.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `pattern` property.
      Params:
        propval = Regular expression with named capture fields.
      Returns: Builder instance for fluent chaining
  */
  T pattern(string propval) nothrow
  {
    return setProperty("pattern", propval);
  }
}

/// Fluent builder for [gid_apache.arrow25.extract_regex_options.ExtractRegexOptions]
final class ExtractRegexOptionsGidBuilder : ExtractRegexOptionsGidBuilderImpl!ExtractRegexOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ExtractRegexOptions build() nothrow
  {
    return new ExtractRegexOptions(cast(void*)createGObject(ExtractRegexOptions._getGType), Yes.Take);
  }
}
