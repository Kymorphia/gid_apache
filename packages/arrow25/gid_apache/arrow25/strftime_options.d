/// Module for [StrftimeOptions] class
module gid_apache.arrow25.strftime_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.function_options;
import gid_apache.arrow25.types;

/** */
class StrftimeOptions : gid_apache.arrow25.function_options.FunctionOptions
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
    return cast(void function())garrow_strftime_options_get_type != &gidSymbolNotFound ? garrow_strftime_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStrftimeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override StrftimeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.strftime_options.StrftimeOptions]
      Returns: New builder object
  */
  static StrftimeOptionsGidBuilder builder() nothrow
  {
    return new StrftimeOptionsGidBuilder;
  }

  /**
      Get `format` property.
      Returns: The desired format string.
  */
  @property string format() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("format");
  }

  /**
      Set `format` property.
      Params:
        propval = The desired format string.
  */
  @property void format(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("format", propval);
  }

  /**
      Get `locale` property.
      Returns: The desired output locale string.
  */
  @property string locale() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("locale");
  }

  /**
      Set `locale` property.
      Params:
        propval = The desired output locale string.
  */
  @property void locale(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("locale", propval);
  }

  /** */
  this() nothrow
  {
    GArrowStrftimeOptions* _cretval;
    _cretval = garrow_strftime_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.strftime_options.StrftimeOptions]
class StrftimeOptionsGidBuilderImpl(T) : gid_apache.arrow25.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `format` property.
      Params:
        propval = The desired format string.
      Returns: Builder instance for fluent chaining
  */
  T format(string propval) nothrow
  {
    return setProperty("format", propval);
  }

  /**
      Set `locale` property.
      Params:
        propval = The desired output locale string.
      Returns: Builder instance for fluent chaining
  */
  T locale(string propval) nothrow
  {
    return setProperty("locale", propval);
  }
}

/// Fluent builder for [gid_apache.arrow25.strftime_options.StrftimeOptions]
final class StrftimeOptionsGidBuilder : StrftimeOptionsGidBuilderImpl!StrftimeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StrftimeOptions build() nothrow
  {
    return new StrftimeOptions(cast(void*)createGObject(StrftimeOptions._getGType), Yes.Take);
  }
}
