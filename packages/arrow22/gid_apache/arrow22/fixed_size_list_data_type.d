/// Module for [FixedSizeListDataType] class
module gid_apache.arrow22.fixed_size_list_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.base_list_data_type;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.data_type;
import gid_apache.arrow22.field;
import gid_apache.arrow22.types;

/** */
class FixedSizeListDataType : gid_apache.arrow22.base_list_data_type.BaseListDataType
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
    return cast(void function())garrow_fixed_size_list_data_type_get_type != &gidSymbolNotFound ? garrow_fixed_size_list_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFixedSizeListDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override FixedSizeListDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.fixed_size_list_data_type.FixedSizeListDataType]
      Returns: New builder object
  */
  static FixedSizeListDataTypeGidBuilder builder() nothrow
  {
    return new FixedSizeListDataTypeGidBuilder;
  }

  /** */
  @property int listSize() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(int)("list-size");
  }

  /** */
  static gid_apache.arrow22.fixed_size_list_data_type.FixedSizeListDataType newDataType(gid_apache.arrow22.data_type.DataType valueType, int listSize) nothrow
  {
    GArrowFixedSizeListDataType* _cretval;
    _cretval = garrow_fixed_size_list_data_type_new_data_type(valueType ? cast(GArrowDataType*)valueType._cPtr(No.Dup) : null, listSize);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.fixed_size_list_data_type.FixedSizeListDataType)(cast(GArrowFixedSizeListDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static gid_apache.arrow22.fixed_size_list_data_type.FixedSizeListDataType newField(gid_apache.arrow22.field.Field field, int listSize) nothrow
  {
    GArrowFixedSizeListDataType* _cretval;
    _cretval = garrow_fixed_size_list_data_type_new_field(field ? cast(GArrowField*)field._cPtr(No.Dup) : null, listSize);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.fixed_size_list_data_type.FixedSizeListDataType)(cast(GArrowFixedSizeListDataType*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.fixed_size_list_data_type.FixedSizeListDataType]
class FixedSizeListDataTypeGidBuilderImpl(T) : gid_apache.arrow22.base_list_data_type.BaseListDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.fixed_size_list_data_type.FixedSizeListDataType]
final class FixedSizeListDataTypeGidBuilder : FixedSizeListDataTypeGidBuilderImpl!FixedSizeListDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FixedSizeListDataType build() nothrow
  {
    return new FixedSizeListDataType(cast(void*)createGObject(FixedSizeListDataType._getGType), Yes.Take);
  }
}
