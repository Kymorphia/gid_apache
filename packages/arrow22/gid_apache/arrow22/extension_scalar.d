/// Module for [ExtensionScalar] class
module gid_apache.arrow22.extension_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.scalar;
import gid_apache.arrow22.types;

/** */
class ExtensionScalar : gid_apache.arrow22.scalar.Scalar
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
    return cast(void function())garrow_extension_scalar_get_type != &gidSymbolNotFound ? garrow_extension_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowExtensionScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override ExtensionScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.extension_scalar.ExtensionScalar]
      Returns: New builder object
  */
  static ExtensionScalarGidBuilder builder() nothrow
  {
    return new ExtensionScalarGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.extension_scalar.ExtensionScalar]
class ExtensionScalarGidBuilderImpl(T) : gid_apache.arrow22.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.extension_scalar.ExtensionScalar]
final class ExtensionScalarGidBuilder : ExtensionScalarGidBuilderImpl!ExtensionScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ExtensionScalar build() nothrow
  {
    return new ExtensionScalar(cast(void*)createGObject(ExtensionScalar._getGType), Yes.Take);
  }
}
