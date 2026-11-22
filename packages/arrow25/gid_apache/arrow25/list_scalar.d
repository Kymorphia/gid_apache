/// Module for [ListScalar] class
module gid_apache.arrow25.list_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.base_list_scalar;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.list_array;
import gid_apache.arrow25.types;

/** */
class ListScalar : gid_apache.arrow25.base_list_scalar.BaseListScalar
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
    return cast(void function())garrow_list_scalar_get_type != &gidSymbolNotFound ? garrow_list_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowListScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override ListScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.list_scalar.ListScalar]
      Returns: New builder object
  */
  static ListScalarGidBuilder builder() nothrow
  {
    return new ListScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow25.list_array.ListArray value) nothrow
  {
    GArrowListScalar* _cretval;
    _cretval = garrow_list_scalar_new(value ? cast(GArrowListArray*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.list_scalar.ListScalar]
class ListScalarGidBuilderImpl(T) : gid_apache.arrow25.base_list_scalar.BaseListScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.list_scalar.ListScalar]
final class ListScalarGidBuilder : ListScalarGidBuilderImpl!ListScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ListScalar build() nothrow
  {
    return new ListScalar(cast(void*)createGObject(ListScalar._getGType), Yes.Take);
  }
}
