/// Module for [UnionDataType] class
module gid_apache.arrow25.union_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.data_type;
import gid_apache.arrow25.field;
import gid_apache.arrow25.types;

/** */
class UnionDataType : gid_apache.arrow25.data_type.DataType
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
    return cast(void function())garrow_union_data_type_get_type != &gidSymbolNotFound ? garrow_union_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUnionDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override UnionDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.union_data_type.UnionDataType]
      Returns: New builder object
  */
  static UnionDataTypeGidBuilder builder() nothrow
  {
    return new UnionDataTypeGidBuilder;
  }

  /** */
  gid_apache.arrow25.field.Field getField(int i) nothrow
  {
    GArrowField* _cretval;
    _cretval = garrow_union_data_type_get_field(cast(GArrowUnionDataType*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow25.field.Field[] getFields() nothrow
  {
    GList* _cretval;
    _cretval = garrow_union_data_type_get_fields(cast(GArrowUnionDataType*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow25.field.Field, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }

  /** */
  int getNFields() nothrow
  {
    int _retval;
    _retval = garrow_union_data_type_get_n_fields(cast(GArrowUnionDataType*)this._cPtr);
    return _retval;
  }

  /** */
  byte[] getTypeCodes() nothrow
  {
    byte* _cretval;
    size_t _cretlength;
    _cretval = garrow_union_data_type_get_type_codes(cast(GArrowUnionDataType*)this._cPtr, &_cretlength);
    byte[] _retval;

    if (_cretval)
    {
      _retval = cast(byte[])_cretval[0 .. _cretlength].dup;
      gFree(cast(void*)_cretval);
    }
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.union_data_type.UnionDataType]
class UnionDataTypeGidBuilderImpl(T) : gid_apache.arrow25.data_type.DataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.union_data_type.UnionDataType]
final class UnionDataTypeGidBuilder : UnionDataTypeGidBuilderImpl!UnionDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UnionDataType build() nothrow
  {
    return new UnionDataType(cast(void*)createGObject(UnionDataType._getGType), Yes.Take);
  }
}
