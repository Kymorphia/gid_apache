/// Module for [Decimal256Array] class
module gid_apache.arrow26.decimal256_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.decimal256;
import gid_apache.arrow26.fixed_size_binary_array;
import gid_apache.arrow26.types;

/** */
class Decimal256Array : gid_apache.arrow26.fixed_size_binary_array.FixedSizeBinaryArray
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
    return cast(void function())garrow_decimal256_array_get_type != &gidSymbolNotFound ? garrow_decimal256_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal256Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal256Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.decimal256_array.Decimal256Array]
      Returns: New builder object
  */
  static Decimal256ArrayGidBuilder builder() nothrow
  {
    return new Decimal256ArrayGidBuilder;
  }

  /** */
  string formatValue(long i) nothrow
  {
    char* _cretval;
    _cretval = garrow_decimal256_array_format_value(cast(GArrowDecimal256Array*)this._cPtr, i);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  alias getValue = gid_apache.arrow26.fixed_size_binary_array.FixedSizeBinaryArray.getValue;

  /** */
  gid_apache.arrow26.decimal256.Decimal256 getValue(long i) nothrow
  {
    GArrowDecimal256* _cretval;
    _cretval = garrow_decimal256_array_get_value(cast(GArrowDecimal256Array*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.decimal256.Decimal256)(cast(GArrowDecimal256*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.decimal256_array.Decimal256Array]
class Decimal256ArrayGidBuilderImpl(T) : gid_apache.arrow26.fixed_size_binary_array.FixedSizeBinaryArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.decimal256_array.Decimal256Array]
final class Decimal256ArrayGidBuilder : Decimal256ArrayGidBuilderImpl!Decimal256ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal256Array build() nothrow
  {
    return new Decimal256Array(cast(void*)createGObject(Decimal256Array._getGType), Yes.Take);
  }
}
