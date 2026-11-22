/// Module for [Decimal64Array] class
module gid_apache.arrow23.decimal64_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.decimal64;
import gid_apache.arrow23.fixed_size_binary_array;
import gid_apache.arrow23.types;

/** */
class Decimal64Array : gid_apache.arrow23.fixed_size_binary_array.FixedSizeBinaryArray
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
    return cast(void function())garrow_decimal64_array_get_type != &gidSymbolNotFound ? garrow_decimal64_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal64Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal64Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.decimal64_array.Decimal64Array]
      Returns: New builder object
  */
  static Decimal64ArrayGidBuilder builder() nothrow
  {
    return new Decimal64ArrayGidBuilder;
  }

  /** */
  string formatValue(long i) nothrow
  {
    char* _cretval;
    _cretval = garrow_decimal64_array_format_value(cast(GArrowDecimal64Array*)this._cPtr, i);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  alias getValue = gid_apache.arrow23.fixed_size_binary_array.FixedSizeBinaryArray.getValue;

  /** */
  gid_apache.arrow23.decimal64.Decimal64 getValue(long i) nothrow
  {
    GArrowDecimal64* _cretval;
    _cretval = garrow_decimal64_array_get_value(cast(GArrowDecimal64Array*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.decimal64.Decimal64)(cast(GArrowDecimal64*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.decimal64_array.Decimal64Array]
class Decimal64ArrayGidBuilderImpl(T) : gid_apache.arrow23.fixed_size_binary_array.FixedSizeBinaryArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.decimal64_array.Decimal64Array]
final class Decimal64ArrayGidBuilder : Decimal64ArrayGidBuilderImpl!Decimal64ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal64Array build() nothrow
  {
    return new Decimal64Array(cast(void*)createGObject(Decimal64Array._getGType), Yes.Take);
  }
}
