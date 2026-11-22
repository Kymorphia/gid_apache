/// Module for [Date32DataType] class
module gid_apache.arrow21.date32_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.temporal_data_type;
import gid_apache.arrow21.types;

/** */
class Date32DataType : gid_apache.arrow21.temporal_data_type.TemporalDataType
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
    return cast(void function())garrow_date32_data_type_get_type != &gidSymbolNotFound ? garrow_date32_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDate32DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override Date32DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.date32_data_type.Date32DataType]
      Returns: New builder object
  */
  static Date32DataTypeGidBuilder builder() nothrow
  {
    return new Date32DataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowDate32DataType* _cretval;
    _cretval = garrow_date32_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.date32_data_type.Date32DataType]
class Date32DataTypeGidBuilderImpl(T) : gid_apache.arrow21.temporal_data_type.TemporalDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.date32_data_type.Date32DataType]
final class Date32DataTypeGidBuilder : Date32DataTypeGidBuilderImpl!Date32DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Date32DataType build() nothrow
  {
    return new Date32DataType(cast(void*)createGObject(Date32DataType._getGType), Yes.Take);
  }
}
