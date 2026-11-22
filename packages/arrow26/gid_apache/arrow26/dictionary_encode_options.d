/// Module for [DictionaryEncodeOptions] class
module gid_apache.arrow26.dictionary_encode_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.function_options;
import gid_apache.arrow26.types;

/** */
class DictionaryEncodeOptions : gid_apache.arrow26.function_options.FunctionOptions
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
    return cast(void function())garrow_dictionary_encode_options_get_type != &gidSymbolNotFound ? garrow_dictionary_encode_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDictionaryEncodeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override DictionaryEncodeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.dictionary_encode_options.DictionaryEncodeOptions]
      Returns: New builder object
  */
  static DictionaryEncodeOptionsGidBuilder builder() nothrow
  {
    return new DictionaryEncodeOptionsGidBuilder;
  }

  /**
      Get `nullEncodingBehavior` property.
      Returns: How null values will be encoded.
  */
  @property gid_apache.arrow26.types.DictionaryEncodeNullEncodingBehavior nullEncodingBehavior() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.types.DictionaryEncodeNullEncodingBehavior)("null-encoding-behavior");
  }

  /**
      Set `nullEncodingBehavior` property.
      Params:
        propval = How null values will be encoded.
  */
  @property void nullEncodingBehavior(gid_apache.arrow26.types.DictionaryEncodeNullEncodingBehavior propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow26.types.DictionaryEncodeNullEncodingBehavior)("null-encoding-behavior", propval);
  }

  /** */
  this() nothrow
  {
    GArrowDictionaryEncodeOptions* _cretval;
    _cretval = garrow_dictionary_encode_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.dictionary_encode_options.DictionaryEncodeOptions]
class DictionaryEncodeOptionsGidBuilderImpl(T) : gid_apache.arrow26.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `nullEncodingBehavior` property.
      Params:
        propval = How null values will be encoded.
      Returns: Builder instance for fluent chaining
  */
  T nullEncodingBehavior(gid_apache.arrow26.types.DictionaryEncodeNullEncodingBehavior propval) nothrow
  {
    return setProperty("null-encoding-behavior", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.dictionary_encode_options.DictionaryEncodeOptions]
final class DictionaryEncodeOptionsGidBuilder : DictionaryEncodeOptionsGidBuilderImpl!DictionaryEncodeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DictionaryEncodeOptions build() nothrow
  {
    return new DictionaryEncodeOptions(cast(void*)createGObject(DictionaryEncodeOptions._getGType), Yes.Take);
  }
}
