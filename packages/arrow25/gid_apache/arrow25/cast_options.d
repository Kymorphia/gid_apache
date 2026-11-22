/// Module for [CastOptions] class
module gid_apache.arrow25.cast_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.data_type;
import gid_apache.arrow25.function_options;
import gid_apache.arrow25.types;

/** */
class CastOptions : gid_apache.arrow25.function_options.FunctionOptions
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
    return cast(void function())garrow_cast_options_get_type != &gidSymbolNotFound ? garrow_cast_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowCastOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override CastOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.cast_options.CastOptions]
      Returns: New builder object
  */
  static CastOptionsGidBuilder builder() nothrow
  {
    return new CastOptionsGidBuilder;
  }

  /**
      Get `allowDecimalTruncate` property.
      Returns: Whether truncating decimal value is allowed or not.
  */
  @property bool allowDecimalTruncate() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("allow-decimal-truncate");
  }

  /**
      Set `allowDecimalTruncate` property.
      Params:
        propval = Whether truncating decimal value is allowed or not.
  */
  @property void allowDecimalTruncate(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("allow-decimal-truncate", propval);
  }

  /**
      Get `allowFloatTruncate` property.
      Returns: Whether truncating float value is allowed or not.
  */
  @property bool allowFloatTruncate() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("allow-float-truncate");
  }

  /**
      Set `allowFloatTruncate` property.
      Params:
        propval = Whether truncating float value is allowed or not.
  */
  @property void allowFloatTruncate(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("allow-float-truncate", propval);
  }

  /**
      Get `allowIntOverflow` property.
      Returns: Whether integer overflow is allowed or not.
  */
  @property bool allowIntOverflow() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("allow-int-overflow");
  }

  /**
      Set `allowIntOverflow` property.
      Params:
        propval = Whether integer overflow is allowed or not.
  */
  @property void allowIntOverflow(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("allow-int-overflow", propval);
  }

  /**
      Get `allowInvalidUtf8` property.
      Returns: Whether invalid UTF-8 string value is allowed or not.
  */
  @property bool allowInvalidUtf8() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("allow-invalid-utf8");
  }

  /**
      Set `allowInvalidUtf8` property.
      Params:
        propval = Whether invalid UTF-8 string value is allowed or not.
  */
  @property void allowInvalidUtf8(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("allow-invalid-utf8", propval);
  }

  /**
      Get `allowTimeOverflow` property.
      Returns: Whether time overflow is allowed or not.
  */
  @property bool allowTimeOverflow() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("allow-time-overflow");
  }

  /**
      Set `allowTimeOverflow` property.
      Params:
        propval = Whether time overflow is allowed or not.
  */
  @property void allowTimeOverflow(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("allow-time-overflow", propval);
  }

  /**
      Get `allowTimeTruncate` property.
      Returns: Whether truncating time value is allowed or not.
  */
  @property bool allowTimeTruncate() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("allow-time-truncate");
  }

  /**
      Set `allowTimeTruncate` property.
      Params:
        propval = Whether truncating time value is allowed or not.
  */
  @property void allowTimeTruncate(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("allow-time-truncate", propval);
  }

  /**
      Get `toDataType` property.
      Returns: The #GArrowDataType being casted to.
  */
  @property gid_apache.arrow25.data_type.DataType toDataType() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow25.data_type.DataType)("to-data-type");
  }

  /**
      Set `toDataType` property.
      Params:
        propval = The #GArrowDataType being casted to.
  */
  @property void toDataType(gid_apache.arrow25.data_type.DataType propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow25.data_type.DataType)("to-data-type", propval);
  }

  /** */
  this() nothrow
  {
    GArrowCastOptions* _cretval;
    _cretval = garrow_cast_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.cast_options.CastOptions]
class CastOptionsGidBuilderImpl(T) : gid_apache.arrow25.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `allowDecimalTruncate` property.
      Params:
        propval = Whether truncating decimal value is allowed or not.
      Returns: Builder instance for fluent chaining
  */
  T allowDecimalTruncate(bool propval) nothrow
  {
    return setProperty("allow-decimal-truncate", propval);
  }

  /**
      Set `allowFloatTruncate` property.
      Params:
        propval = Whether truncating float value is allowed or not.
      Returns: Builder instance for fluent chaining
  */
  T allowFloatTruncate(bool propval) nothrow
  {
    return setProperty("allow-float-truncate", propval);
  }

  /**
      Set `allowIntOverflow` property.
      Params:
        propval = Whether integer overflow is allowed or not.
      Returns: Builder instance for fluent chaining
  */
  T allowIntOverflow(bool propval) nothrow
  {
    return setProperty("allow-int-overflow", propval);
  }

  /**
      Set `allowInvalidUtf8` property.
      Params:
        propval = Whether invalid UTF-8 string value is allowed or not.
      Returns: Builder instance for fluent chaining
  */
  T allowInvalidUtf8(bool propval) nothrow
  {
    return setProperty("allow-invalid-utf8", propval);
  }

  /**
      Set `allowTimeOverflow` property.
      Params:
        propval = Whether time overflow is allowed or not.
      Returns: Builder instance for fluent chaining
  */
  T allowTimeOverflow(bool propval) nothrow
  {
    return setProperty("allow-time-overflow", propval);
  }

  /**
      Set `allowTimeTruncate` property.
      Params:
        propval = Whether truncating time value is allowed or not.
      Returns: Builder instance for fluent chaining
  */
  T allowTimeTruncate(bool propval) nothrow
  {
    return setProperty("allow-time-truncate", propval);
  }

  /**
      Set `toDataType` property.
      Params:
        propval = The #GArrowDataType being casted to.
      Returns: Builder instance for fluent chaining
  */
  T toDataType(gid_apache.arrow25.data_type.DataType propval) nothrow
  {
    return setProperty("to-data-type", propval);
  }
}

/// Fluent builder for [gid_apache.arrow25.cast_options.CastOptions]
final class CastOptionsGidBuilder : CastOptionsGidBuilderImpl!CastOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  CastOptions build() nothrow
  {
    return new CastOptions(cast(void*)createGObject(CastOptions._getGType), Yes.Take);
  }
}
