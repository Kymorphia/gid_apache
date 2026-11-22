/// Module for [DataType] class
module gid_apache.arrow23.data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.types;

/** */
class DataType : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_data_type_get_type != &gidSymbolNotFound ? garrow_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override DataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.data_type.DataType]
      Returns: New builder object
  */
  static DataTypeGidBuilder builder() nothrow
  {
    return new DataTypeGidBuilder;
  }

  /** */
  static gid_apache.arrow23.data_type.DataType import_(void* cAbiSchema)
  {
    GArrowDataType* _cretval;
    GError *_err;
    _cretval = garrow_data_type_import(cAbiSchema, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow23.data_type.DataType otherDataType) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_data_type_equal(cast(GArrowDataType*)this._cPtr, otherDataType ? cast(GArrowDataType*)otherDataType._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  void* export_()
  {
    GError *_err;
    auto _retval = garrow_data_type_export(cast(GArrowDataType*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.types.Type getId() nothrow
  {
    GArrowType _cretval;
    _cretval = garrow_data_type_get_id(cast(GArrowDataType*)this._cPtr);
    gid_apache.arrow23.types.Type _retval = cast(gid_apache.arrow23.types.Type)_cretval;
    return _retval;
  }

  /** */
  string getName() nothrow
  {
    char* _cretval;
    _cretval = garrow_data_type_get_name(cast(GArrowDataType*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = garrow_data_type_to_string(cast(GArrowDataType*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.data_type.DataType]
class DataTypeGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T dataType(void* propval) nothrow
  {
    return setProperty("data-type", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.data_type.DataType]
final class DataTypeGidBuilder : DataTypeGidBuilderImpl!DataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DataType build() nothrow
  {
    return new DataType(cast(void*)createGObject(DataType._getGType), Yes.Take);
  }
}
