/// Module for [DenseUnionScalar] class
module gid_apache.arrow23.dense_union_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.dense_union_data_type;
import gid_apache.arrow23.scalar;
import gid_apache.arrow23.types;
import gid_apache.arrow23.union_scalar;

/** */
class DenseUnionScalar : gid_apache.arrow23.union_scalar.UnionScalar
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
    return cast(void function())garrow_dense_union_scalar_get_type != &gidSymbolNotFound ? garrow_dense_union_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDenseUnionScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override DenseUnionScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.dense_union_scalar.DenseUnionScalar]
      Returns: New builder object
  */
  static DenseUnionScalarGidBuilder builder() nothrow
  {
    return new DenseUnionScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow23.dense_union_data_type.DenseUnionDataType dataType, byte typeCode, gid_apache.arrow23.scalar.Scalar value) nothrow
  {
    GArrowDenseUnionScalar* _cretval;
    _cretval = garrow_dense_union_scalar_new(dataType ? cast(GArrowDenseUnionDataType*)dataType._cPtr(No.Dup) : null, typeCode, value ? cast(GArrowScalar*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.dense_union_scalar.DenseUnionScalar]
class DenseUnionScalarGidBuilderImpl(T) : gid_apache.arrow23.union_scalar.UnionScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.dense_union_scalar.DenseUnionScalar]
final class DenseUnionScalarGidBuilder : DenseUnionScalarGidBuilderImpl!DenseUnionScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DenseUnionScalar build() nothrow
  {
    return new DenseUnionScalar(cast(void*)createGObject(DenseUnionScalar._getGType), Yes.Take);
  }
}
