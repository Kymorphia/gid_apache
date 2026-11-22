/// Module for [Decimal32Array] class
module gid_apache.arrow26.decimal32_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.decimal32;
import gid_apache.arrow26.fixed_size_binary_array;
import gid_apache.arrow26.types;

/** */
class Decimal32Array : gid_apache.arrow26.fixed_size_binary_array.FixedSizeBinaryArray
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
    return cast(void function())garrow_decimal32_array_get_type != &gidSymbolNotFound ? garrow_decimal32_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal32Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal32Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.decimal32_array.Decimal32Array]
      Returns: New builder object
  */
  static Decimal32ArrayGidBuilder builder() nothrow
  {
    return new Decimal32ArrayGidBuilder;
  }

  /** */
  string formatValue(long i) nothrow
  {
    char* _cretval;
    _cretval = garrow_decimal32_array_format_value(cast(GArrowDecimal32Array*)this._cPtr, i);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  alias getValue = gid_apache.arrow26.fixed_size_binary_array.FixedSizeBinaryArray.getValue;

  /** */
  gid_apache.arrow26.decimal32.Decimal32 getValue(long i) nothrow
  {
    GArrowDecimal32* _cretval;
    _cretval = garrow_decimal32_array_get_value(cast(GArrowDecimal32Array*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.decimal32.Decimal32)(cast(GArrowDecimal32*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.decimal32_array.Decimal32Array]
class Decimal32ArrayGidBuilderImpl(T) : gid_apache.arrow26.fixed_size_binary_array.FixedSizeBinaryArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.decimal32_array.Decimal32Array]
final class Decimal32ArrayGidBuilder : Decimal32ArrayGidBuilderImpl!Decimal32ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal32Array build() nothrow
  {
    return new Decimal32Array(cast(void*)createGObject(Decimal32Array._getGType), Yes.Take);
  }
}
