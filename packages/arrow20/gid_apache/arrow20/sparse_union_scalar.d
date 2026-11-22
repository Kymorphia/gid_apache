/// Module for [SparseUnionScalar] class
module gid_apache.arrow20.sparse_union_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.scalar;
import gid_apache.arrow20.sparse_union_data_type;
import gid_apache.arrow20.types;
import gid_apache.arrow20.union_scalar;

/** */
class SparseUnionScalar : gid_apache.arrow20.union_scalar.UnionScalar
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
    return cast(void function())garrow_sparse_union_scalar_get_type != &gidSymbolNotFound ? garrow_sparse_union_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSparseUnionScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override SparseUnionScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.sparse_union_scalar.SparseUnionScalar]
      Returns: New builder object
  */
  static SparseUnionScalarGidBuilder builder() nothrow
  {
    return new SparseUnionScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow20.sparse_union_data_type.SparseUnionDataType dataType, byte typeCode, gid_apache.arrow20.scalar.Scalar value) nothrow
  {
    GArrowSparseUnionScalar* _cretval;
    _cretval = garrow_sparse_union_scalar_new(dataType ? cast(GArrowSparseUnionDataType*)dataType._cPtr(No.Dup) : null, typeCode, value ? cast(GArrowScalar*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.sparse_union_scalar.SparseUnionScalar]
class SparseUnionScalarGidBuilderImpl(T) : gid_apache.arrow20.union_scalar.UnionScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.sparse_union_scalar.SparseUnionScalar]
final class SparseUnionScalarGidBuilder : SparseUnionScalarGidBuilderImpl!SparseUnionScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SparseUnionScalar build() nothrow
  {
    return new SparseUnionScalar(cast(void*)createGObject(SparseUnionScalar._getGType), Yes.Take);
  }
}
