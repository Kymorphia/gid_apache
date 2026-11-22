/// Module for [FixedSizeBinaryScalar] class
module gid_apache.arrow20.fixed_size_binary_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.base_binary_scalar;
import gid_apache.arrow20.buffer;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.fixed_size_binary_data_type;
import gid_apache.arrow20.types;

/** */
class FixedSizeBinaryScalar : gid_apache.arrow20.base_binary_scalar.BaseBinaryScalar
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
    return cast(void function())garrow_fixed_size_binary_scalar_get_type != &gidSymbolNotFound ? garrow_fixed_size_binary_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFixedSizeBinaryScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override FixedSizeBinaryScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.fixed_size_binary_scalar.FixedSizeBinaryScalar]
      Returns: New builder object
  */
  static FixedSizeBinaryScalarGidBuilder builder() nothrow
  {
    return new FixedSizeBinaryScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow20.fixed_size_binary_data_type.FixedSizeBinaryDataType dataType, gid_apache.arrow20.buffer.Buffer value) nothrow
  {
    GArrowFixedSizeBinaryScalar* _cretval;
    _cretval = garrow_fixed_size_binary_scalar_new(dataType ? cast(GArrowFixedSizeBinaryDataType*)dataType._cPtr(No.Dup) : null, value ? cast(GArrowBuffer*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.fixed_size_binary_scalar.FixedSizeBinaryScalar]
class FixedSizeBinaryScalarGidBuilderImpl(T) : gid_apache.arrow20.base_binary_scalar.BaseBinaryScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.fixed_size_binary_scalar.FixedSizeBinaryScalar]
final class FixedSizeBinaryScalarGidBuilder : FixedSizeBinaryScalarGidBuilderImpl!FixedSizeBinaryScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FixedSizeBinaryScalar build() nothrow
  {
    return new FixedSizeBinaryScalar(cast(void*)createGObject(FixedSizeBinaryScalar._getGType), Yes.Take);
  }
}
