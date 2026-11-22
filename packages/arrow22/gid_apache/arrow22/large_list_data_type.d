/// Module for [LargeListDataType] class
module gid_apache.arrow22.large_list_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.data_type;
import gid_apache.arrow22.field;
import gid_apache.arrow22.types;

/** */
class LargeListDataType : gid_apache.arrow22.data_type.DataType
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
    return cast(void function())garrow_large_list_data_type_get_type != &gidSymbolNotFound ? garrow_large_list_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowLargeListDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override LargeListDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.large_list_data_type.LargeListDataType]
      Returns: New builder object
  */
  static LargeListDataTypeGidBuilder builder() nothrow
  {
    return new LargeListDataTypeGidBuilder;
  }

  /** */
  this(gid_apache.arrow22.field.Field field) nothrow
  {
    GArrowLargeListDataType* _cretval;
    _cretval = garrow_large_list_data_type_new(field ? cast(GArrowField*)field._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow22.field.Field getField() nothrow
  {
    GArrowField* _cretval;
    _cretval = garrow_large_list_data_type_get_field(cast(GArrowLargeListDataType*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.large_list_data_type.LargeListDataType]
class LargeListDataTypeGidBuilderImpl(T) : gid_apache.arrow22.data_type.DataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.large_list_data_type.LargeListDataType]
final class LargeListDataTypeGidBuilder : LargeListDataTypeGidBuilderImpl!LargeListDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  LargeListDataType build() nothrow
  {
    return new LargeListDataType(cast(void*)createGObject(LargeListDataType._getGType), Yes.Take);
  }
}
