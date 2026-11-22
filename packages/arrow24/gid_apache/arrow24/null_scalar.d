/// Module for [NullScalar] class
module gid_apache.arrow24.null_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.scalar;
import gid_apache.arrow24.types;

/** */
class NullScalar : gid_apache.arrow24.scalar.Scalar
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
    return cast(void function())garrow_null_scalar_get_type != &gidSymbolNotFound ? garrow_null_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowNullScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override NullScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.null_scalar.NullScalar]
      Returns: New builder object
  */
  static NullScalarGidBuilder builder() nothrow
  {
    return new NullScalarGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowNullScalar* _cretval;
    _cretval = garrow_null_scalar_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.null_scalar.NullScalar]
class NullScalarGidBuilderImpl(T) : gid_apache.arrow24.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.null_scalar.NullScalar]
final class NullScalarGidBuilder : NullScalarGidBuilderImpl!NullScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  NullScalar build() nothrow
  {
    return new NullScalar(cast(void*)createGObject(NullScalar._getGType), Yes.Take);
  }
}
