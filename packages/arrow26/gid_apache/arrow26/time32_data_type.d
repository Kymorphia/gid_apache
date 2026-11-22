/// Module for [Time32DataType] class
module gid_apache.arrow26.time32_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.time_data_type;
import gid_apache.arrow26.types;

/** */
class Time32DataType : gid_apache.arrow26.time_data_type.TimeDataType
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
    return cast(void function())garrow_time32_data_type_get_type != &gidSymbolNotFound ? garrow_time32_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTime32DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override Time32DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.time32_data_type.Time32DataType]
      Returns: New builder object
  */
  static Time32DataTypeGidBuilder builder() nothrow
  {
    return new Time32DataTypeGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.types.TimeUnit unit)
  {
    GArrowTime32DataType* _cretval;
    GError *_err;
    _cretval = garrow_time32_data_type_new(unit, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.time32_data_type.Time32DataType]
class Time32DataTypeGidBuilderImpl(T) : gid_apache.arrow26.time_data_type.TimeDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.time32_data_type.Time32DataType]
final class Time32DataTypeGidBuilder : Time32DataTypeGidBuilderImpl!Time32DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Time32DataType build() nothrow
  {
    return new Time32DataType(cast(void*)createGObject(Time32DataType._getGType), Yes.Take);
  }
}
