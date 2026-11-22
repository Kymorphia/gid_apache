/// Module for [BaseListDataType] class
module gid_apache.arrow21.base_list_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.data_type;
import gid_apache.arrow21.field;
import gid_apache.arrow21.types;

/** */
class BaseListDataType : gid_apache.arrow21.data_type.DataType
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
    return cast(void function())garrow_base_list_data_type_get_type != &gidSymbolNotFound ? garrow_base_list_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBaseListDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override BaseListDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.base_list_data_type.BaseListDataType]
      Returns: New builder object
  */
  static BaseListDataTypeGidBuilder builder() nothrow
  {
    return new BaseListDataTypeGidBuilder;
  }

  /** */
  gid_apache.arrow21.field.Field getField() nothrow
  {
    GArrowField* _cretval;
    _cretval = garrow_base_list_data_type_get_field(cast(GArrowBaseListDataType*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.base_list_data_type.BaseListDataType]
class BaseListDataTypeGidBuilderImpl(T) : gid_apache.arrow21.data_type.DataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.base_list_data_type.BaseListDataType]
final class BaseListDataTypeGidBuilder : BaseListDataTypeGidBuilderImpl!BaseListDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BaseListDataType build() nothrow
  {
    return new BaseListDataType(cast(void*)createGObject(BaseListDataType._getGType), Yes.Take);
  }
}
