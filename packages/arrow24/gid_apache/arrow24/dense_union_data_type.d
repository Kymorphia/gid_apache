/// Module for [DenseUnionDataType] class
module gid_apache.arrow24.dense_union_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.field;
import gid_apache.arrow24.types;
import gid_apache.arrow24.union_data_type;

/** */
class DenseUnionDataType : gid_apache.arrow24.union_data_type.UnionDataType
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
    return cast(void function())garrow_dense_union_data_type_get_type != &gidSymbolNotFound ? garrow_dense_union_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDenseUnionDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override DenseUnionDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.dense_union_data_type.DenseUnionDataType]
      Returns: New builder object
  */
  static DenseUnionDataTypeGidBuilder builder() nothrow
  {
    return new DenseUnionDataTypeGidBuilder;
  }

  /** */
  this(gid_apache.arrow24.field.Field[] fields, byte[] typeCodes) nothrow
  {
    GArrowDenseUnionDataType* _cretval;
    auto _fields = gListFromD!(gid_apache.arrow24.field.Field)(fields);
    scope(exit) containerFree!(GList*, gid_apache.arrow24.field.Field, GidOwnership.None)(_fields);
    size_t _nTypeCodes;
    if (typeCodes)
      _nTypeCodes = cast(size_t)typeCodes.length;

    auto _typeCodes = cast(byte*)typeCodes.ptr;
    _cretval = garrow_dense_union_data_type_new(_fields, _typeCodes, _nTypeCodes);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.dense_union_data_type.DenseUnionDataType]
class DenseUnionDataTypeGidBuilderImpl(T) : gid_apache.arrow24.union_data_type.UnionDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.dense_union_data_type.DenseUnionDataType]
final class DenseUnionDataTypeGidBuilder : DenseUnionDataTypeGidBuilderImpl!DenseUnionDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DenseUnionDataType build() nothrow
  {
    return new DenseUnionDataType(cast(void*)createGObject(DenseUnionDataType._getGType), Yes.Take);
  }
}
