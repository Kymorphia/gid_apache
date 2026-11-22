/// Module for [RunEndEncodedArray] class
module gid_apache.arrow22.run_end_encoded_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.array;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.data_type;
import gid_apache.arrow22.types;

/** */
class RunEndEncodedArray : gid_apache.arrow22.array.Array
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
    return cast(void function())garrow_run_end_encoded_array_get_type != &gidSymbolNotFound ? garrow_run_end_encoded_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRunEndEncodedArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override RunEndEncodedArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.run_end_encoded_array.RunEndEncodedArray]
      Returns: New builder object
  */
  static RunEndEncodedArrayGidBuilder builder() nothrow
  {
    return new RunEndEncodedArrayGidBuilder;
  }

  /** */
  @property gid_apache.arrow22.array.Array runEnds() nothrow
  {
    return getRunEnds();
  }

  /** */
  @property gid_apache.arrow22.array.Array values() nothrow
  {
    return getValues();
  }

  /** */
  this(gid_apache.arrow22.data_type.DataType dataType, long logicalLength, gid_apache.arrow22.array.Array runEnds, gid_apache.arrow22.array.Array values, long logicalOffset)
  {
    GArrowRunEndEncodedArray* _cretval;
    GError *_err;
    _cretval = garrow_run_end_encoded_array_new(dataType ? cast(GArrowDataType*)dataType._cPtr(No.Dup) : null, logicalLength, runEnds ? cast(GArrowArray*)runEnds._cPtr(No.Dup) : null, values ? cast(GArrowArray*)values._cPtr(No.Dup) : null, logicalOffset, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow22.array.Array decode()
  {
    GArrowArray* _cretval;
    GError *_err;
    _cretval = garrow_run_end_encoded_array_decode(cast(GArrowRunEndEncodedArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  long findPhysicalLength() nothrow
  {
    long _retval;
    _retval = garrow_run_end_encoded_array_find_physical_length(cast(GArrowRunEndEncodedArray*)this._cPtr);
    return _retval;
  }

  /** */
  long findPhysicalOffset() nothrow
  {
    long _retval;
    _retval = garrow_run_end_encoded_array_find_physical_offset(cast(GArrowRunEndEncodedArray*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow22.array.Array getLogicalRunEnds()
  {
    GArrowArray* _cretval;
    GError *_err;
    _cretval = garrow_run_end_encoded_array_get_logical_run_ends(cast(GArrowRunEndEncodedArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.array.Array getLogicalValues() nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_run_end_encoded_array_get_logical_values(cast(GArrowRunEndEncodedArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.array.Array getRunEnds() nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_run_end_encoded_array_get_run_ends(cast(GArrowRunEndEncodedArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.array.Array getValues() nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_run_end_encoded_array_get_values(cast(GArrowRunEndEncodedArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.run_end_encoded_array.RunEndEncodedArray]
class RunEndEncodedArrayGidBuilderImpl(T) : gid_apache.arrow22.array.ArrayGidBuilderImpl!T
{

  /** */
  T runEnds(gid_apache.arrow22.array.Array propval) nothrow
  {
    return setProperty("run-ends", propval);
  }

  /** */
  T values(gid_apache.arrow22.array.Array propval) nothrow
  {
    return setProperty("values", propval);
  }
}

/// Fluent builder for [gid_apache.arrow22.run_end_encoded_array.RunEndEncodedArray]
final class RunEndEncodedArrayGidBuilder : RunEndEncodedArrayGidBuilderImpl!RunEndEncodedArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RunEndEncodedArray build() nothrow
  {
    return new RunEndEncodedArray(cast(void*)createGObject(RunEndEncodedArray._getGType), Yes.Take);
  }
}
