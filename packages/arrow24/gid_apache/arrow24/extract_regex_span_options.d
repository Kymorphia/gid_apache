/// Module for [ExtractRegexSpanOptions] class
module gid_apache.arrow24.extract_regex_span_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.function_options;
import gid_apache.arrow24.types;

/** */
class ExtractRegexSpanOptions : gid_apache.arrow24.function_options.FunctionOptions
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
    return cast(void function())garrow_extract_regex_span_options_get_type != &gidSymbolNotFound ? garrow_extract_regex_span_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowExtractRegexSpanOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override ExtractRegexSpanOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.extract_regex_span_options.ExtractRegexSpanOptions]
      Returns: New builder object
  */
  static ExtractRegexSpanOptionsGidBuilder builder() nothrow
  {
    return new ExtractRegexSpanOptionsGidBuilder;
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
    GArrowExtractRegexSpanOptions* _cretval;
    _cretval = garrow_extract_regex_span_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.extract_regex_span_options.ExtractRegexSpanOptions]
class ExtractRegexSpanOptionsGidBuilderImpl(T) : gid_apache.arrow24.function_options.FunctionOptionsGidBuilderImpl!T
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

/// Fluent builder for [gid_apache.arrow24.extract_regex_span_options.ExtractRegexSpanOptions]
final class ExtractRegexSpanOptionsGidBuilder : ExtractRegexSpanOptionsGidBuilderImpl!ExtractRegexSpanOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ExtractRegexSpanOptions build() nothrow
  {
    return new ExtractRegexSpanOptions(cast(void*)createGObject(ExtractRegexSpanOptions._getGType), Yes.Take);
  }
}
