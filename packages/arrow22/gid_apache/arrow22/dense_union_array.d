/// Module for [DenseUnionArray] class
module gid_apache.arrow22.dense_union_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.array;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.dense_union_data_type;
import gid_apache.arrow22.int32_array;
import gid_apache.arrow22.int8_array;
import gid_apache.arrow22.types;
import gid_apache.arrow22.union_array;

/** */
class DenseUnionArray : gid_apache.arrow22.union_array.UnionArray
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
    return cast(void function())garrow_dense_union_array_get_type != &gidSymbolNotFound ? garrow_dense_union_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDenseUnionArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override DenseUnionArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.dense_union_array.DenseUnionArray]
      Returns: New builder object
  */
  static DenseUnionArrayGidBuilder builder() nothrow
  {
    return new DenseUnionArrayGidBuilder;
  }

  /** */
  @property gid_apache.arrow22.int32_array.Int32Array valueOffsets() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow22.int32_array.Int32Array)("value-offsets");
  }

  /** */
  this(gid_apache.arrow22.int8_array.Int8Array typeIds, gid_apache.arrow22.int32_array.Int32Array valueOffsets, gid_apache.arrow22.array.Array[] fields)
  {
    GArrowDenseUnionArray* _cretval;
    auto _fields = gListFromD!(gid_apache.arrow22.array.Array)(fields);
    scope(exit) containerFree!(GList*, gid_apache.arrow22.array.Array, GidOwnership.None)(_fields);
    GError *_err;
    _cretval = garrow_dense_union_array_new(typeIds ? cast(GArrowInt8Array*)typeIds._cPtr(No.Dup) : null, valueOffsets ? cast(GArrowInt32Array*)valueOffsets._cPtr(No.Dup) : null, _fields, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  static gid_apache.arrow22.dense_union_array.DenseUnionArray newDataType(gid_apache.arrow22.dense_union_data_type.DenseUnionDataType dataType, gid_apache.arrow22.int8_array.Int8Array typeIds, gid_apache.arrow22.int32_array.Int32Array valueOffsets, gid_apache.arrow22.array.Array[] fields)
  {
    GArrowDenseUnionArray* _cretval;
    auto _fields = gListFromD!(gid_apache.arrow22.array.Array)(fields);
    scope(exit) containerFree!(GList*, gid_apache.arrow22.array.Array, GidOwnership.None)(_fields);
    GError *_err;
    _cretval = garrow_dense_union_array_new_data_type(dataType ? cast(GArrowDenseUnionDataType*)dataType._cPtr(No.Dup) : null, typeIds ? cast(GArrowInt8Array*)typeIds._cPtr(No.Dup) : null, valueOffsets ? cast(GArrowInt32Array*)valueOffsets._cPtr(No.Dup) : null, _fields, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.dense_union_array.DenseUnionArray)(cast(GArrowDenseUnionArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  int getValueOffset(long i) nothrow
  {
    int _retval;
    _retval = garrow_dense_union_array_get_value_offset(cast(GArrowDenseUnionArray*)this._cPtr, i);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.dense_union_array.DenseUnionArray]
class DenseUnionArrayGidBuilderImpl(T) : gid_apache.arrow22.union_array.UnionArrayGidBuilderImpl!T
{

  /** */
  T valueOffsets(gid_apache.arrow22.int32_array.Int32Array propval) nothrow
  {
    return setProperty("value-offsets", propval);
  }
}

/// Fluent builder for [gid_apache.arrow22.dense_union_array.DenseUnionArray]
final class DenseUnionArrayGidBuilder : DenseUnionArrayGidBuilderImpl!DenseUnionArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DenseUnionArray build() nothrow
  {
    return new DenseUnionArray(cast(void*)createGObject(DenseUnionArray._getGType), Yes.Take);
  }
}
