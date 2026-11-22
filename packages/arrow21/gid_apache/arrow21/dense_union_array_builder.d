/// Module for [DenseUnionArrayBuilder] class
module gid_apache.arrow21.dense_union_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.dense_union_data_type;
import gid_apache.arrow21.types;
import gid_apache.arrow21.union_array_builder;

/** */
class DenseUnionArrayBuilder : gid_apache.arrow21.union_array_builder.UnionArrayBuilder
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
    return cast(void function())garrow_dense_union_array_builder_get_type != &gidSymbolNotFound ? garrow_dense_union_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDenseUnionArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override DenseUnionArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.dense_union_array_builder.DenseUnionArrayBuilder]
      Returns: New builder object
  */
  static DenseUnionArrayBuilderGidBuilder builder() nothrow
  {
    return new DenseUnionArrayBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow21.dense_union_data_type.DenseUnionDataType dataType = null)
  {
    GArrowDenseUnionArrayBuilder* _cretval;
    GError *_err;
    _cretval = garrow_dense_union_array_builder_new(dataType ? cast(GArrowDenseUnionDataType*)dataType._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.dense_union_array_builder.DenseUnionArrayBuilder]
class DenseUnionArrayBuilderGidBuilderImpl(T) : gid_apache.arrow21.union_array_builder.UnionArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.dense_union_array_builder.DenseUnionArrayBuilder]
final class DenseUnionArrayBuilderGidBuilder : DenseUnionArrayBuilderGidBuilderImpl!DenseUnionArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DenseUnionArrayBuilder build() nothrow
  {
    return new DenseUnionArrayBuilder(cast(void*)createGObject(DenseUnionArrayBuilder._getGType), Yes.Take);
  }
}
