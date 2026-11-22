/// Module for [Time64DataType] class
module gid_apache.arrow24.time64_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.time_data_type;
import gid_apache.arrow24.types;

/** */
class Time64DataType : gid_apache.arrow24.time_data_type.TimeDataType
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
    return cast(void function())garrow_time64_data_type_get_type != &gidSymbolNotFound ? garrow_time64_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTime64DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override Time64DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.time64_data_type.Time64DataType]
      Returns: New builder object
  */
  static Time64DataTypeGidBuilder builder() nothrow
  {
    return new Time64DataTypeGidBuilder;
  }

  /** */
  this(gid_apache.arrow24.types.TimeUnit unit)
  {
    GArrowTime64DataType* _cretval;
    GError *_err;
    _cretval = garrow_time64_data_type_new(unit, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.time64_data_type.Time64DataType]
class Time64DataTypeGidBuilderImpl(T) : gid_apache.arrow24.time_data_type.TimeDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.time64_data_type.Time64DataType]
final class Time64DataTypeGidBuilder : Time64DataTypeGidBuilderImpl!Time64DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Time64DataType build() nothrow
  {
    return new Time64DataType(cast(void*)createGObject(Time64DataType._getGType), Yes.Take);
  }
}
