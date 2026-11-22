/// Module for [LargeBinaryArray] class
module gid_apache.arrow23.large_binary_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.array;
import gid_apache.arrow23.buffer;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.types;

/** */
class LargeBinaryArray : gid_apache.arrow23.array.Array
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
    return cast(void function())garrow_large_binary_array_get_type != &gidSymbolNotFound ? garrow_large_binary_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowLargeBinaryArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override LargeBinaryArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.large_binary_array.LargeBinaryArray]
      Returns: New builder object
  */
  static LargeBinaryArrayGidBuilder builder() nothrow
  {
    return new LargeBinaryArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow23.buffer.Buffer valueOffsets, gid_apache.arrow23.buffer.Buffer valueData, gid_apache.arrow23.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowLargeBinaryArray* _cretval;
    _cretval = garrow_large_binary_array_new(length, valueOffsets ? cast(GArrowBuffer*)valueOffsets._cPtr(No.Dup) : null, valueData ? cast(GArrowBuffer*)valueData._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow23.buffer.Buffer getBuffer() nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_large_binary_array_get_buffer(cast(GArrowLargeBinaryArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.buffer.Buffer getDataBuffer() nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_large_binary_array_get_data_buffer(cast(GArrowLargeBinaryArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.buffer.Buffer getOffsetsBuffer() nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_large_binary_array_get_offsets_buffer(cast(GArrowLargeBinaryArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid.glib2.bytes.Bytes getValue(long i) nothrow
  {
    GBytes* _cretval;
    _cretval = garrow_large_binary_array_get_value(cast(GArrowLargeBinaryArray*)this._cPtr, i);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.large_binary_array.LargeBinaryArray]
class LargeBinaryArrayGidBuilderImpl(T) : gid_apache.arrow23.array.ArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.large_binary_array.LargeBinaryArray]
final class LargeBinaryArrayGidBuilder : LargeBinaryArrayGidBuilderImpl!LargeBinaryArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  LargeBinaryArray build() nothrow
  {
    return new LargeBinaryArray(cast(void*)createGObject(LargeBinaryArray._getGType), Yes.Take);
  }
}
