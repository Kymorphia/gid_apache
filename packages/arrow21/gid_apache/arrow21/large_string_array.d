/// Module for [LargeStringArray] class
module gid_apache.arrow21.large_string_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.buffer;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.large_binary_array;
import gid_apache.arrow21.types;

/** */
class LargeStringArray : gid_apache.arrow21.large_binary_array.LargeBinaryArray
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
    return cast(void function())garrow_large_string_array_get_type != &gidSymbolNotFound ? garrow_large_string_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowLargeStringArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override LargeStringArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.large_string_array.LargeStringArray]
      Returns: New builder object
  */
  static LargeStringArrayGidBuilder builder() nothrow
  {
    return new LargeStringArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow21.buffer.Buffer valueOffsets, gid_apache.arrow21.buffer.Buffer valueData, gid_apache.arrow21.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowLargeStringArray* _cretval;
    _cretval = garrow_large_string_array_new(length, valueOffsets ? cast(GArrowBuffer*)valueOffsets._cPtr(No.Dup) : null, valueData ? cast(GArrowBuffer*)valueData._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  string getString(long i) nothrow
  {
    char* _cretval;
    _cretval = garrow_large_string_array_get_string(cast(GArrowLargeStringArray*)this._cPtr, i);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.large_string_array.LargeStringArray]
class LargeStringArrayGidBuilderImpl(T) : gid_apache.arrow21.large_binary_array.LargeBinaryArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.large_string_array.LargeStringArray]
final class LargeStringArrayGidBuilder : LargeStringArrayGidBuilderImpl!LargeStringArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  LargeStringArray build() nothrow
  {
    return new LargeStringArray(cast(void*)createGObject(LargeStringArray._getGType), Yes.Take);
  }
}
