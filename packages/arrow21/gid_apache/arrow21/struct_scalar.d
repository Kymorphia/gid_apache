/// Module for [StructScalar] class
module gid_apache.arrow21.struct_scalar;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.scalar;
import gid_apache.arrow21.struct_data_type;
import gid_apache.arrow21.types;

/** */
class StructScalar : gid_apache.arrow21.scalar.Scalar
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
    return cast(void function())garrow_struct_scalar_get_type != &gidSymbolNotFound ? garrow_struct_scalar_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStructScalar";
  }

  /** Returns `this`, for use in `with` statements. */
  override StructScalar self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.struct_scalar.StructScalar]
      Returns: New builder object
  */
  static StructScalarGidBuilder builder() nothrow
  {
    return new StructScalarGidBuilder;
  }

  /** */
  this(gid_apache.arrow21.struct_data_type.StructDataType dataType, gid_apache.arrow21.scalar.Scalar[] value) nothrow
  {
    GArrowStructScalar* _cretval;
    auto _value = gListFromD!(gid_apache.arrow21.scalar.Scalar)(value);
    scope(exit) containerFree!(GList*, gid_apache.arrow21.scalar.Scalar, GidOwnership.None)(_value);
    _cretval = garrow_struct_scalar_new(dataType ? cast(GArrowStructDataType*)dataType._cPtr(No.Dup) : null, _value);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow21.scalar.Scalar[] getValue() nothrow
  {
    GList* _cretval;
    _cretval = garrow_struct_scalar_get_value(cast(GArrowStructScalar*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow21.scalar.Scalar, GidOwnership.None)(cast(GList*)_cretval);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.struct_scalar.StructScalar]
class StructScalarGidBuilderImpl(T) : gid_apache.arrow21.scalar.ScalarGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.struct_scalar.StructScalar]
final class StructScalarGidBuilder : StructScalarGidBuilderImpl!StructScalarGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StructScalar build() nothrow
  {
    return new StructScalar(cast(void*)createGObject(StructScalar._getGType), Yes.Take);
  }
}
