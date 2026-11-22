/// Module for [StrptimeOptions] class
module gid_apache.arrow22.strptime_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.function_options;
import gid_apache.arrow22.types;

/** */
class StrptimeOptions : gid_apache.arrow22.function_options.FunctionOptions
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
    return cast(void function())garrow_strptime_options_get_type != &gidSymbolNotFound ? garrow_strptime_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStrptimeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override StrptimeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.strptime_options.StrptimeOptions]
      Returns: New builder object
  */
  static StrptimeOptionsGidBuilder builder() nothrow
  {
    return new StrptimeOptionsGidBuilder;
  }

  /**
      Get `errorIsNull` property.
      Returns: Return null on parsing errors if true or raise if false.
  */
  @property bool errorIsNull() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("error-is-null");
  }

  /**
      Set `errorIsNull` property.
      Params:
        propval = Return null on parsing errors if true or raise if false.
  */
  @property void errorIsNull(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("error-is-null", propval);
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
      Get `unit` property.
      Returns: The desired time resolution.
  */
  @property gid_apache.arrow22.types.TimeUnit unit() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow22.types.TimeUnit)("unit");
  }

  /**
      Set `unit` property.
      Params:
        propval = The desired time resolution.
  */
  @property void unit(gid_apache.arrow22.types.TimeUnit propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow22.types.TimeUnit)("unit", propval);
  }

  /** */
  this() nothrow
  {
    GArrowStrptimeOptions* _cretval;
    _cretval = garrow_strptime_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.strptime_options.StrptimeOptions]
class StrptimeOptionsGidBuilderImpl(T) : gid_apache.arrow22.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `errorIsNull` property.
      Params:
        propval = Return null on parsing errors if true or raise if false.
      Returns: Builder instance for fluent chaining
  */
  T errorIsNull(bool propval) nothrow
  {
    return setProperty("error-is-null", propval);
  }

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
      Set `unit` property.
      Params:
        propval = The desired time resolution.
      Returns: Builder instance for fluent chaining
  */
  T unit(gid_apache.arrow22.types.TimeUnit propval) nothrow
  {
    return setProperty("unit", propval);
  }
}

/// Fluent builder for [gid_apache.arrow22.strptime_options.StrptimeOptions]
final class StrptimeOptionsGidBuilder : StrptimeOptionsGidBuilderImpl!StrptimeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StrptimeOptions build() nothrow
  {
    return new StrptimeOptions(cast(void*)createGObject(StrptimeOptions._getGType), Yes.Take);
  }
}
