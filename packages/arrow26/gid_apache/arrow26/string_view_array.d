/// Module for [StringViewArray] class
module gid_apache.arrow26.string_view_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.binary_view_array;
import gid_apache.arrow26.buffer;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.types;

/** */
class StringViewArray : gid_apache.arrow26.binary_view_array.BinaryViewArray
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
    return cast(void function())garrow_string_view_array_get_type != &gidSymbolNotFound ? garrow_string_view_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStringViewArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override StringViewArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.string_view_array.StringViewArray]
      Returns: New builder object
  */
  static StringViewArrayGidBuilder builder() nothrow
  {
    return new StringViewArrayGidBuilder;
  }

  /** */
  this(long length, gid_apache.arrow26.buffer.Buffer views, gid_apache.arrow26.buffer.Buffer[] dataBuffers, gid_apache.arrow26.buffer.Buffer nullBitmap, long nNulls, long offset) nothrow
  {
    GArrowStringViewArray* _cretval;
    auto _dataBuffers = gListFromD!(gid_apache.arrow26.buffer.Buffer)(dataBuffers);
    scope(exit) containerFree!(GList*, gid_apache.arrow26.buffer.Buffer, GidOwnership.None)(_dataBuffers);
    _cretval = garrow_string_view_array_new(length, views ? cast(GArrowBuffer*)views._cPtr(No.Dup) : null, _dataBuffers, nullBitmap ? cast(GArrowBuffer*)nullBitmap._cPtr(No.Dup) : null, nNulls, offset);
    this(_cretval, Yes.Take);
  }

  /** */
  override gid.glib2.bytes.Bytes getValue(long i) nothrow
  {
    GBytes* _cretval;
    _cretval = garrow_string_view_array_get_value(cast(GArrowStringViewArray*)this._cPtr, i);
    auto _retval = _cretval ? new gid.glib2.bytes.Bytes(cast(void*)_cretval, Yes.Take) : null;
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.string_view_array.StringViewArray]
class StringViewArrayGidBuilderImpl(T) : gid_apache.arrow26.binary_view_array.BinaryViewArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.string_view_array.StringViewArray]
final class StringViewArrayGidBuilder : StringViewArrayGidBuilderImpl!StringViewArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StringViewArray build() nothrow
  {
    return new StringViewArray(cast(void*)createGObject(StringViewArray._getGType), Yes.Take);
  }
}
