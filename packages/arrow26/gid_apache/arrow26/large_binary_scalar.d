/// Module for [LargeBinaryScalar] class
module gid_apache.arrow26.large_binary_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.base_binary_scalar;
import gid_apache.arrow26.buffer;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.types;

/** */
class LargeBinaryScalar : gid_apache.arrow26.base_binary_scalar.BaseBinaryScalar
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
    return cast(void function())garrow_large_binary_scalar_get_type != &gidSymbolNotFound ? garrow_large_binary_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowLargeBinaryScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override LargeBinaryScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.large_binary_scalar.LargeBinaryScalar]
      Returns: New builder object
  */
  static LargeBinaryScalarGidBuilder builder() nothrow
  {
    return new LargeBinaryScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.buffer.Buffer value) nothrow
  {
    GArrowLargeBinaryScalar* _cretval;
    _cretval = garrow_large_binary_scalar_new(value ? cast(GArrowBuffer*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.large_binary_scalar.LargeBinaryScalar]
class LargeBinaryScalarGidBuilderImpl(T) : gid_apache.arrow26.base_binary_scalar.BaseBinaryScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.large_binary_scalar.LargeBinaryScalar]
final class LargeBinaryScalarGidBuilder : LargeBinaryScalarGidBuilderImpl!LargeBinaryScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  LargeBinaryScalar build() nothrow
  {
    return new LargeBinaryScalar(cast(void*)createGObject(LargeBinaryScalar._getGType), Yes.Take);
  }
}
