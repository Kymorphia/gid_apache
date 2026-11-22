/// Module for [StructDataType] class
module gid_apache.arrow19.struct_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.data_type;
import gid_apache.arrow19.field;
import gid_apache.arrow19.types;

/** */
class StructDataType : gid_apache.arrow19.data_type.DataType
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
    return cast(void function())garrow_struct_data_type_get_type != &gidSymbolNotFound ? garrow_struct_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStructDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override StructDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.struct_data_type.StructDataType]
      Returns: New builder object
  */
  static StructDataTypeGidBuilder builder() nothrow
  {
    return new StructDataTypeGidBuilder;
  }

  /** */
  this(gid_apache.arrow19.field.Field[] fields) nothrow
  {
    GArrowStructDataType* _cretval;
    auto _fields = gListFromD!(gid_apache.arrow19.field.Field)(fields);
    scope(exit) containerFree!(GList*, gid_apache.arrow19.field.Field, GidOwnership.None)(_fields);
    _cretval = garrow_struct_data_type_new(_fields);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow19.field.Field getField(int i) nothrow
  {
    GArrowField* _cretval;
    _cretval = garrow_struct_data_type_get_field(cast(GArrowStructDataType*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.field.Field getFieldByName(string name) nothrow
  {
    GArrowField* _cretval;
    const(char)* _name = name.toCString!(No.Malloc, No.Nullable);
    _cretval = garrow_struct_data_type_get_field_by_name(cast(GArrowStructDataType*)this._cPtr, _name);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  int getFieldIndex(string name) nothrow
  {
    int _retval;
    const(char)* _name = name.toCString!(No.Malloc, No.Nullable);
    _retval = garrow_struct_data_type_get_field_index(cast(GArrowStructDataType*)this._cPtr, _name);
    return _retval;
  }

  /** */
  gid_apache.arrow19.field.Field[] getFields() nothrow
  {
    GList* _cretval;
    _cretval = garrow_struct_data_type_get_fields(cast(GArrowStructDataType*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow19.field.Field, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }

  /** */
  int getNFields() nothrow
  {
    int _retval;
    _retval = garrow_struct_data_type_get_n_fields(cast(GArrowStructDataType*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.struct_data_type.StructDataType]
class StructDataTypeGidBuilderImpl(T) : gid_apache.arrow19.data_type.DataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.struct_data_type.StructDataType]
final class StructDataTypeGidBuilder : StructDataTypeGidBuilderImpl!StructDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StructDataType build() nothrow
  {
    return new StructDataType(cast(void*)createGObject(StructDataType._getGType), Yes.Take);
  }
}
