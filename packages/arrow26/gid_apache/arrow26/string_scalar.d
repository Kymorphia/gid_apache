/// Module for [StringScalar] class
module gid_apache.arrow26.string_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.base_binary_scalar;
import gid_apache.arrow26.buffer;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.types;

/** */
class StringScalar : gid_apache.arrow26.base_binary_scalar.BaseBinaryScalar
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
    return cast(void function())garrow_string_scalar_get_type != &gidSymbolNotFound ? garrow_string_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStringScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override StringScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.string_scalar.StringScalar]
      Returns: New builder object
  */
  static StringScalarGidBuilder builder() nothrow
  {
    return new StringScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.buffer.Buffer value) nothrow
  {
    GArrowStringScalar* _cretval;
    _cretval = garrow_string_scalar_new(value ? cast(GArrowBuffer*)value._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.string_scalar.StringScalar]
class StringScalarGidBuilderImpl(T) : gid_apache.arrow26.base_binary_scalar.BaseBinaryScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.string_scalar.StringScalar]
final class StringScalarGidBuilder : StringScalarGidBuilderImpl!StringScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StringScalar build() nothrow
  {
    return new StringScalar(cast(void*)createGObject(StringScalar._getGType), Yes.Take);
  }
}
