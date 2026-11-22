/// Module for [FixedSizeBinaryArray] class
module gid_apache.arrow22.fixed_size_binary_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.buffer;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.fixed_size_binary_data_type;
import gid_apache.arrow22.primitive_array;
import gid_apache.arrow22.types;

/** */
class FixedSizeBinaryArray : gid_apache.arrow22.primitive_array.PrimitiveArray
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
    return cast(void function())garrow_fixed_size_binary_array_get_type != &gidSymbolNotFound ? garrow_fixed_size_binary_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFixedSizeBinaryArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override FixedSizeBinaryArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.fixed_size_binary_array.FixedSizeBinaryArray]
      Returns: New builder object
  */
  static FixedSizeBinaryArrayGidBuilder builder() nothrow
  {
    return new FixedSizeBinaryArrayGidBuilder;
  }

  /** */
  this(gid_apache.arrow22.fixed_size_binary_data_type.FixedSizeBinaryDataType dataType, long length, gid_apache.arrow22.buffer.Buffer data, gid_apache.arrow22.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowFixedSizeBinaryArray* _cretval;
    _cretval = garrow_fixed_size_binary_array_new(dataType ? cast(GArrowFixedSizeBinaryDataType*)dataType._cPtr(No.Dup) : null, length, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  int getByteWidth() nothrow
  {
    int _retval;
    _retval = garrow_fixed_size_binary_array_get_byte_width(cast(GArrowFixedSizeBinaryArray*)this._cPtr);
    return _retval;
  }

  /** */
  gid.glib2.bytes.Bytes getValue(long i) nothrow
  {
    GBytes* _cretval;
    _cretval = garrow_fixed_size_binary_array_get_value(cast(GArrowFixedSizeBinaryArray*)this._cPtr, i);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }

  /** */
  gid.glib2.bytes.Bytes getValuesBytes() nothrow
  {
    GBytes* _cretval;
    _cretval = garrow_fixed_size_binary_array_get_values_bytes(cast(GArrowFixedSizeBinaryArray*)this._cPtr);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.fixed_size_binary_array.FixedSizeBinaryArray]
class FixedSizeBinaryArrayGidBuilderImpl(T) : gid_apache.arrow22.primitive_array.PrimitiveArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.fixed_size_binary_array.FixedSizeBinaryArray]
final class FixedSizeBinaryArrayGidBuilder : FixedSizeBinaryArrayGidBuilderImpl!FixedSizeBinaryArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FixedSizeBinaryArray build() nothrow
  {
    return new FixedSizeBinaryArray(cast(void*)createGObject(FixedSizeBinaryArray._getGType), Yes.Take);
  }
}
