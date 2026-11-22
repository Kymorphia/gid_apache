/// Module for [BinaryViewArray] class
module gid_apache.arrow24.binary_view_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.gobject2.gid_builder;
import gid_apache.arrow24.array;
import gid_apache.arrow24.buffer;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.types;

/** */
class BinaryViewArray : gid_apache.arrow24.array.Array
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
    return cast(void function())garrow_binary_view_array_get_type != &gidSymbolNotFound ? garrow_binary_view_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBinaryViewArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override BinaryViewArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.binary_view_array.BinaryViewArray]
      Returns: New builder object
  */
  static BinaryViewArrayGidBuilder builder() nothrow
  {
    return new BinaryViewArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow24.buffer.Buffer views, gid_apache.arrow24.buffer.Buffer[] dataBuffers, gid_apache.arrow24.buffer.Buffer nullBitmap, long nNulls, long offset) nothrow
  {
    GArrowBinaryViewArray* _cretval;
    auto _dataBuffers = gListFromD!(gid_apache.arrow24.buffer.Buffer)(dataBuffers);
    scope(exit) containerFree!(GList*, gid_apache.arrow24.buffer.Buffer, GidOwnership.None)(_dataBuffers);
    _cretval = garrow_binary_view_array_new(length, views ? cast(GArrowBuffer*)views._cPtr(No.Dup) : null, _dataBuffers, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls, offset);
    this(_cretval, Yes.Take);
  }

  /** */
  gid.glib2.bytes.Bytes getValue(long i) nothrow
  {
    GBytes* _cretval;
    _cretval = garrow_binary_view_array_get_value(cast(GArrowBinaryViewArray*)this._cPtr, i);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.binary_view_array.BinaryViewArray]
class BinaryViewArrayGidBuilderImpl(T) : gid_apache.arrow24.array.ArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.binary_view_array.BinaryViewArray]
final class BinaryViewArrayGidBuilder : BinaryViewArrayGidBuilderImpl!BinaryViewArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BinaryViewArray build() nothrow
  {
    return new BinaryViewArray(cast(void*)createGObject(BinaryViewArray._getGType), Yes.Take);
  }
}
