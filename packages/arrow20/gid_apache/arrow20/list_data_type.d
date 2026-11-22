/// Module for [ListDataType] class
module gid_apache.arrow20.list_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.data_type;
import gid_apache.arrow20.field;
import gid_apache.arrow20.types;

/** */
class ListDataType : gid_apache.arrow20.data_type.DataType
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
    return cast(void function())garrow_list_data_type_get_type != &gidSymbolNotFound ? garrow_list_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowListDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override ListDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.list_data_type.ListDataType]
      Returns: New builder object
  */
  static ListDataTypeGidBuilder builder() nothrow
  {
    return new ListDataTypeGidBuilder;
  }

  /** */
  this(gid_apache.arrow20.field.Field field) nothrow
  {
    GArrowListDataType* _cretval;
    _cretval = garrow_list_data_type_new(field ? cast(GArrowField*)field._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow20.field.Field getField() nothrow
  {
    GArrowField* _cretval;
    _cretval = garrow_list_data_type_get_field(cast(GArrowListDataType*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow20.field.Field getValueField() nothrow
  {
    GArrowField* _cretval;
    _cretval = garrow_list_data_type_get_value_field(cast(GArrowListDataType*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.list_data_type.ListDataType]
class ListDataTypeGidBuilderImpl(T) : gid_apache.arrow20.data_type.DataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.list_data_type.ListDataType]
final class ListDataTypeGidBuilder : ListDataTypeGidBuilderImpl!ListDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ListDataType build() nothrow
  {
    return new ListDataType(cast(void*)createGObject(ListDataType._getGType), Yes.Take);
  }
}
