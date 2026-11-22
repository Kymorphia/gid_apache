/// Module for [Date64DataType] class
module gid_apache.arrow21.date64_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.temporal_data_type;
import gid_apache.arrow21.types;

/** */
class Date64DataType : gid_apache.arrow21.temporal_data_type.TemporalDataType
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
    return cast(void function())garrow_date64_data_type_get_type != &gidSymbolNotFound ? garrow_date64_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDate64DataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override Date64DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.date64_data_type.Date64DataType]
      Returns: New builder object
  */
  static Date64DataTypeGidBuilder builder() nothrow
  {
    return new Date64DataTypeGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowDate64DataType* _cretval;
    _cretval = garrow_date64_data_type_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.date64_data_type.Date64DataType]
class Date64DataTypeGidBuilderImpl(T) : gid_apache.arrow21.temporal_data_type.TemporalDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.date64_data_type.Date64DataType]
final class Date64DataTypeGidBuilder : Date64DataTypeGidBuilderImpl!Date64DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Date64DataType build() nothrow
  {
    return new Date64DataType(cast(void*)createGObject(Date64DataType._getGType), Yes.Take);
  }
}
