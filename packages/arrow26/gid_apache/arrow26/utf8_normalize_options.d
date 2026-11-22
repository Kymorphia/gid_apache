/// Module for [UTF8NormalizeOptions] class
module gid_apache.arrow26.utf8_normalize_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.function_options;
import gid_apache.arrow26.types;

/** */
class UTF8NormalizeOptions : gid_apache.arrow26.function_options.FunctionOptions
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
    return cast(void function())garrow_utf8_normalize_options_get_type != &gidSymbolNotFound ? garrow_utf8_normalize_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUTF8NormalizeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override UTF8NormalizeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.utf8_normalize_options.UTF8NormalizeOptions]
      Returns: New builder object
  */
  static UTF8NormalizeOptionsGidBuilder builder() nothrow
  {
    return new UTF8NormalizeOptionsGidBuilder;
  }

  /**
      Get `form` property.
      Returns: The Unicode normalization form to apply.
  */
  @property gid_apache.arrow26.types.UTF8NormalizeForm form() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.types.UTF8NormalizeForm)("form");
  }

  /**
      Set `form` property.
      Params:
        propval = The Unicode normalization form to apply.
  */
  @property void form(gid_apache.arrow26.types.UTF8NormalizeForm propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow26.types.UTF8NormalizeForm)("form", propval);
  }

  /** */
  this() nothrow
  {
    GArrowUTF8NormalizeOptions* _cretval;
    _cretval = garrow_utf8_normalize_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.utf8_normalize_options.UTF8NormalizeOptions]
class UTF8NormalizeOptionsGidBuilderImpl(T) : gid_apache.arrow26.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `form` property.
      Params:
        propval = The Unicode normalization form to apply.
      Returns: Builder instance for fluent chaining
  */
  T form(gid_apache.arrow26.types.UTF8NormalizeForm propval) nothrow
  {
    return setProperty("form", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.utf8_normalize_options.UTF8NormalizeOptions]
final class UTF8NormalizeOptionsGidBuilder : UTF8NormalizeOptionsGidBuilderImpl!UTF8NormalizeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UTF8NormalizeOptions build() nothrow
  {
    return new UTF8NormalizeOptions(cast(void*)createGObject(UTF8NormalizeOptions._getGType), Yes.Take);
  }
}
