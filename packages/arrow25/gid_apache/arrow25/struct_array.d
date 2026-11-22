/// Module for [StructArray] class
module gid_apache.arrow25.struct_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.array;
import gid_apache.arrow25.buffer;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.data_type;
import gid_apache.arrow25.types;

/** */
class StructArray : gid_apache.arrow25.array.Array
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
    return cast(void function())garrow_struct_array_get_type != &gidSymbolNotFound ? garrow_struct_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStructArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override StructArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.struct_array.StructArray]
      Returns: New builder object
  */
  static StructArrayGidBuilder builder() nothrow
  {
    return new StructArrayGidBuilder;
  }

  /** */
  this(gid_apache.arrow25.data_type.DataType dataType, long length, gid_apache.arrow25.array.Array[] fields, gid_apache.arrow25.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowStructArray* _cretval;
    auto _fields = gListFromD!(gid_apache.arrow25.array.Array)(fields);
    scope(exit) containerFree!(GList*, gid_apache.arrow25.array.Array, GidOwnership.None)(_fields);
    _cretval = garrow_struct_array_new(dataType ? cast(GArrowDataType*)dataType._cPtr(No.Dup) : null, length, _fields, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow25.array.Array[] flatten()
  {
    GList* _cretval;
    GError *_err;
    _cretval = garrow_struct_array_flatten(cast(GArrowStructArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gListToD!(gid_apache.arrow25.array.Array, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }

  /** */
  gid_apache.arrow25.array.Array getField(int i) nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_struct_array_get_field(cast(GArrowStructArray*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow25.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow25.array.Array[] getFields() nothrow
  {
    GList* _cretval;
    _cretval = garrow_struct_array_get_fields(cast(GArrowStructArray*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow25.array.Array, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.struct_array.StructArray]
class StructArrayGidBuilderImpl(T) : gid_apache.arrow25.array.ArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.struct_array.StructArray]
final class StructArrayGidBuilder : StructArrayGidBuilderImpl!StructArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StructArray build() nothrow
  {
    return new StructArray(cast(void*)createGObject(StructArray._getGType), Yes.Take);
  }
}
