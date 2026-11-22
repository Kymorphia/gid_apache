/// Module for [BinaryScalar] class
module gid_apache.arrow21.binary_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.base_binary_scalar;
import gid_apache.arrow21.buffer;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.types;

/** */
class BinaryScalar : gid_apache.arrow21.base_binary_scalar.BaseBinaryScalar
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
    return cast(void function())garrow_binary_scalar_get_type != &gidSymbolNotFound ? garrow_binary_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBinaryScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override BinaryScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.binary_scalar.BinaryScalar]
      Returns: New builder object
  */
  static BinaryScalarGidBuilder builder() nothrow
  {
    return new BinaryScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow21.buffer.Buffer value) nothrow
  {
    GArrowBinaryScalar* _cretval;
    _cretval = garrow_binary_scalar_new(value ? cast(GArrowBuffer*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.binary_scalar.BinaryScalar]
class BinaryScalarGidBuilderImpl(T) : gid_apache.arrow21.base_binary_scalar.BaseBinaryScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.binary_scalar.BinaryScalar]
final class BinaryScalarGidBuilder : BinaryScalarGidBuilderImpl!BinaryScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BinaryScalar build() nothrow
  {
    return new BinaryScalar(cast(void*)createGObject(BinaryScalar._getGType), Yes.Take);
  }
}
