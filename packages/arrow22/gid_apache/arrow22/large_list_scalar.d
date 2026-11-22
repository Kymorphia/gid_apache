/// Module for [LargeListScalar] class
module gid_apache.arrow22.large_list_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.base_list_scalar;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.large_list_array;
import gid_apache.arrow22.types;

/** */
class LargeListScalar : gid_apache.arrow22.base_list_scalar.BaseListScalar
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
    return cast(void function())garrow_large_list_scalar_get_type != &gidSymbolNotFound ? garrow_large_list_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowLargeListScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override LargeListScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.large_list_scalar.LargeListScalar]
      Returns: New builder object
  */
  static LargeListScalarGidBuilder builder() nothrow
  {
    return new LargeListScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow22.large_list_array.LargeListArray value) nothrow
  {
    GArrowLargeListScalar* _cretval;
    _cretval = garrow_large_list_scalar_new(value ? cast(GArrowLargeListArray*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.large_list_scalar.LargeListScalar]
class LargeListScalarGidBuilderImpl(T) : gid_apache.arrow22.base_list_scalar.BaseListScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.large_list_scalar.LargeListScalar]
final class LargeListScalarGidBuilder : LargeListScalarGidBuilderImpl!LargeListScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  LargeListScalar build() nothrow
  {
    return new LargeListScalar(cast(void*)createGObject(LargeListScalar._getGType), Yes.Take);
  }
}
