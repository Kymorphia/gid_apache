/// Module for [SparseUnionArray] class
module gid_apache.arrow21.sparse_union_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.array;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.int8_array;
import gid_apache.arrow21.sparse_union_data_type;
import gid_apache.arrow21.types;
import gid_apache.arrow21.union_array;

/** */
class SparseUnionArray : gid_apache.arrow21.union_array.UnionArray
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
    return cast(void function())garrow_sparse_union_array_get_type != &gidSymbolNotFound ? garrow_sparse_union_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSparseUnionArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override SparseUnionArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.sparse_union_array.SparseUnionArray]
      Returns: New builder object
  */
  static SparseUnionArrayGidBuilder builder() nothrow
  {
    return new SparseUnionArrayGidBuilder;
  }

  /** */
  this(gid_apache.arrow21.int8_array.Int8Array typeIds, gid_apache.arrow21.array.Array[] fields)
  {
    GArrowSparseUnionArray* _cretval;
    auto _fields = gListFromD!(gid_apache.arrow21.array.Array)(fields);
    scope(exit) containerFree!(GList*, gid_apache.arrow21.array.Array, GidOwnership.None)(_fields);
    GError *_err;
    _cretval = garrow_sparse_union_array_new(typeIds ? cast(GArrowInt8Array*)typeIds._cPtr(No.Dup) : null, _fields, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  static gid_apache.arrow21.sparse_union_array.SparseUnionArray newDataType(gid_apache.arrow21.sparse_union_data_type.SparseUnionDataType dataType, gid_apache.arrow21.int8_array.Int8Array typeIds, gid_apache.arrow21.array.Array[] fields)
  {
    GArrowSparseUnionArray* _cretval;
    auto _fields = gListFromD!(gid_apache.arrow21.array.Array)(fields);
    scope(exit) containerFree!(GList*, gid_apache.arrow21.array.Array, GidOwnership.None)(_fields);
    GError *_err;
    _cretval = garrow_sparse_union_array_new_data_type(dataType ? cast(GArrowSparseUnionDataType*)dataType._cPtr(No.Dup) : null, typeIds ? cast(GArrowInt8Array*)typeIds._cPtr(No.Dup) : null, _fields, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.sparse_union_array.SparseUnionArray)(cast(GArrowSparseUnionArray*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.sparse_union_array.SparseUnionArray]
class SparseUnionArrayGidBuilderImpl(T) : gid_apache.arrow21.union_array.UnionArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.sparse_union_array.SparseUnionArray]
final class SparseUnionArrayGidBuilder : SparseUnionArrayGidBuilderImpl!SparseUnionArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SparseUnionArray build() nothrow
  {
    return new SparseUnionArray(cast(void*)createGObject(SparseUnionArray._getGType), Yes.Take);
  }
}
