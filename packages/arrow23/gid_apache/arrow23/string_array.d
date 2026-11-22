/// Module for [StringArray] class
module gid_apache.arrow23.string_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.binary_array;
import gid_apache.arrow23.buffer;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.types;

/** */
class StringArray : gid_apache.arrow23.binary_array.BinaryArray
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
    return cast(void function())garrow_string_array_get_type != &gidSymbolNotFound ? garrow_string_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStringArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override StringArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.string_array.StringArray]
      Returns: New builder object
  */
  static StringArrayGidBuilder builder() nothrow
  {
    return new StringArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow23.buffer.Buffer valueOffsets, gid_apache.arrow23.buffer.Buffer valueData, gid_apache.arrow23.buffer.Buffer nullBitmap, long nNulls) nothrow
  {
    GArrowStringArray* _cretval;
    _cretval = garrow_string_array_new(length, valueOffsets ? cast(GArrowBuffer*)valueOffsets._cPtr(No.Dup) : null, valueData ? cast(GArrowBuffer*)valueData._cPtr(No.Dup) : null, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls);
    this(_cretval, Yes.Take);
  }

  /** */
  string getString(long i) nothrow
  {
    char* _cretval;
    _cretval = garrow_string_array_get_string(cast(GArrowStringArray*)this._cPtr, i);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.string_array.StringArray]
class StringArrayGidBuilderImpl(T) : gid_apache.arrow23.binary_array.BinaryArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.string_array.StringArray]
final class StringArrayGidBuilder : StringArrayGidBuilderImpl!StringArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StringArray build() nothrow
  {
    return new StringArray(cast(void*)createGObject(StringArray._getGType), Yes.Take);
  }
}
