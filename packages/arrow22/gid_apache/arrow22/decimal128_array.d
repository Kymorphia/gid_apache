/// Module for [Decimal128Array] class
module gid_apache.arrow22.decimal128_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.decimal128;
import gid_apache.arrow22.fixed_size_binary_array;
import gid_apache.arrow22.types;

/** */
class Decimal128Array : gid_apache.arrow22.fixed_size_binary_array.FixedSizeBinaryArray
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
    return cast(void function())garrow_decimal128_array_get_type != &gidSymbolNotFound ? garrow_decimal128_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal128Array";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal128Array self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.decimal128_array.Decimal128Array]
      Returns: New builder object
  */
  static Decimal128ArrayGidBuilder builder() nothrow
  {
    return new Decimal128ArrayGidBuilder;
  }

  /** */
  string formatValue(long i) nothrow
  {
    char* _cretval;
    _cretval = garrow_decimal128_array_format_value(cast(GArrowDecimal128Array*)this._cPtr, i);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  alias getValue = gid_apache.arrow22.fixed_size_binary_array.FixedSizeBinaryArray.getValue;

  /** */
  gid_apache.arrow22.decimal128.Decimal128 getValue(long i) nothrow
  {
    GArrowDecimal128* _cretval;
    _cretval = garrow_decimal128_array_get_value(cast(GArrowDecimal128Array*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.decimal128.Decimal128)(cast(GArrowDecimal128*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.decimal128_array.Decimal128Array]
class Decimal128ArrayGidBuilderImpl(T) : gid_apache.arrow22.fixed_size_binary_array.FixedSizeBinaryArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.decimal128_array.Decimal128Array]
final class Decimal128ArrayGidBuilder : Decimal128ArrayGidBuilderImpl!Decimal128ArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal128Array build() nothrow
  {
    return new Decimal128Array(cast(void*)createGObject(Decimal128Array._getGType), Yes.Take);
  }
}
