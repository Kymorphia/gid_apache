/// Module for [NumericArray] class
module gid_apache.arrow20.numeric_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.primitive_array;
import gid_apache.arrow20.types;

/** */
class NumericArray : gid_apache.arrow20.primitive_array.PrimitiveArray
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
    return cast(void function())garrow_numeric_array_get_type != &gidSymbolNotFound ? garrow_numeric_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowNumericArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override NumericArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.numeric_array.NumericArray]
      Returns: New builder object
  */
  static NumericArrayGidBuilder builder() nothrow
  {
    return new NumericArrayGidBuilder;
  }

  /** */
  double mean()
  {
    double _retval;
    GError *_err;
    _retval = garrow_numeric_array_mean(cast(GArrowNumericArray*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.numeric_array.NumericArray]
class NumericArrayGidBuilderImpl(T) : gid_apache.arrow20.primitive_array.PrimitiveArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.numeric_array.NumericArray]
final class NumericArrayGidBuilder : NumericArrayGidBuilderImpl!NumericArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  NumericArray build() nothrow
  {
    return new NumericArray(cast(void*)createGObject(NumericArray._getGType), Yes.Take);
  }
}
