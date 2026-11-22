/// Module for [SparseUnionDataType] class
module gid_apache.arrow25.sparse_union_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.field;
import gid_apache.arrow25.types;
import gid_apache.arrow25.union_data_type;

/** */
class SparseUnionDataType : gid_apache.arrow25.union_data_type.UnionDataType
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
    return cast(void function())garrow_sparse_union_data_type_get_type != &gidSymbolNotFound ? garrow_sparse_union_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSparseUnionDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override SparseUnionDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.sparse_union_data_type.SparseUnionDataType]
      Returns: New builder object
  */
  static SparseUnionDataTypeGidBuilder builder() nothrow
  {
    return new SparseUnionDataTypeGidBuilder;
  }

  /** */
  this(gid_apache.arrow25.field.Field[] fields, byte[] typeCodes) nothrow
  {
    GArrowSparseUnionDataType* _cretval;
    auto _fields = gListFromD!(gid_apache.arrow25.field.Field)(fields);
    scope(exit) containerFree!(GList*, gid_apache.arrow25.field.Field, GidOwnership.None)(_fields);
    size_t _nTypeCodes;
    if (typeCodes)
      _nTypeCodes = cast(size_t)typeCodes.length;

    auto _typeCodes = cast(byte*)typeCodes.ptr;
    _cretval = garrow_sparse_union_data_type_new(_fields, _typeCodes, _nTypeCodes);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.sparse_union_data_type.SparseUnionDataType]
class SparseUnionDataTypeGidBuilderImpl(T) : gid_apache.arrow25.union_data_type.UnionDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.sparse_union_data_type.SparseUnionDataType]
final class SparseUnionDataTypeGidBuilder : SparseUnionDataTypeGidBuilderImpl!SparseUnionDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SparseUnionDataType build() nothrow
  {
    return new SparseUnionDataType(cast(void*)createGObject(SparseUnionDataType._getGType), Yes.Take);
  }
}
