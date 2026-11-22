/// Module for [SparseUnionArrayBuilder] class
module gid_apache.arrow26.sparse_union_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.sparse_union_data_type;
import gid_apache.arrow26.types;
import gid_apache.arrow26.union_array_builder;

/** */
class SparseUnionArrayBuilder : gid_apache.arrow26.union_array_builder.UnionArrayBuilder
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
    return cast(void function())garrow_sparse_union_array_builder_get_type != &gidSymbolNotFound ? garrow_sparse_union_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSparseUnionArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override SparseUnionArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.sparse_union_array_builder.SparseUnionArrayBuilder]
      Returns: New builder object
  */
  static SparseUnionArrayBuilderGidBuilder builder() nothrow
  {
    return new SparseUnionArrayBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.sparse_union_data_type.SparseUnionDataType dataType = null)
  {
    GArrowSparseUnionArrayBuilder* _cretval;
    GError *_err;
    _cretval = garrow_sparse_union_array_builder_new(dataType ? cast(GArrowSparseUnionDataType*)dataType._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.sparse_union_array_builder.SparseUnionArrayBuilder]
class SparseUnionArrayBuilderGidBuilderImpl(T) : gid_apache.arrow26.union_array_builder.UnionArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.sparse_union_array_builder.SparseUnionArrayBuilder]
final class SparseUnionArrayBuilderGidBuilder : SparseUnionArrayBuilderGidBuilderImpl!SparseUnionArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SparseUnionArrayBuilder build() nothrow
  {
    return new SparseUnionArrayBuilder(cast(void*)createGObject(SparseUnionArrayBuilder._getGType), Yes.Take);
  }
}
