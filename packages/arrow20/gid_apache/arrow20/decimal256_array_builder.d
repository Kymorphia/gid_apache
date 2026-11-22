/// Module for [Decimal256ArrayBuilder] class
module gid_apache.arrow20.decimal256_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.decimal256;
import gid_apache.arrow20.decimal256_data_type;
import gid_apache.arrow20.fixed_size_binary_array_builder;
import gid_apache.arrow20.types;

/** */
class Decimal256ArrayBuilder : gid_apache.arrow20.fixed_size_binary_array_builder.FixedSizeBinaryArrayBuilder
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
    return cast(void function())garrow_decimal256_array_builder_get_type != &gidSymbolNotFound ? garrow_decimal256_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal256ArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal256ArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.decimal256_array_builder.Decimal256ArrayBuilder]
      Returns: New builder object
  */
  static Decimal256ArrayBuilderGidBuilder builder() nothrow
  {
    return new Decimal256ArrayBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow20.decimal256_data_type.Decimal256DataType dataType) nothrow
  {
    GArrowDecimal256ArrayBuilder* _cretval;
    _cretval = garrow_decimal256_array_builder_new(dataType ? cast(GArrowDecimal256DataType*)dataType._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  alias appendValue = gid_apache.arrow20.fixed_size_binary_array_builder.FixedSizeBinaryArrayBuilder.appendValue;

  /** */
  bool appendValue(gid_apache.arrow20.decimal256.Decimal256 value = null)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_decimal256_array_builder_append_value(cast(GArrowDecimal256ArrayBuilder*)this._cPtr, value ? cast(GArrowDecimal256*)value._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  alias appendValues = gid_apache.arrow20.fixed_size_binary_array_builder.FixedSizeBinaryArrayBuilder.appendValues;

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        values = The array of #GArrowDecimal256.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth is_valids is true, the Nth values is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendValues(gid_apache.arrow20.decimal256.Decimal256[] values, bool[] isValids = null)
  {
    bool _retval;
    long _valuesLength;
    if (values)
      _valuesLength = cast(long)values.length;

    auto _values_arr = new GArrowDecimal256*[](values.length);
    auto _values = cast(GArrowDecimal256**)_values_arr.ptr;
    foreach (i, obj; values) _values[i] = obj ? cast(GArrowDecimal256*)obj._cPtr(No.Dup) : null;
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_decimal256_array_builder_append_values(cast(GArrowDecimal256ArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.decimal256_array_builder.Decimal256ArrayBuilder]
class Decimal256ArrayBuilderGidBuilderImpl(T) : gid_apache.arrow20.fixed_size_binary_array_builder.FixedSizeBinaryArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.decimal256_array_builder.Decimal256ArrayBuilder]
final class Decimal256ArrayBuilderGidBuilder : Decimal256ArrayBuilderGidBuilderImpl!Decimal256ArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal256ArrayBuilder build() nothrow
  {
    return new Decimal256ArrayBuilder(cast(void*)createGObject(Decimal256ArrayBuilder._getGType), Yes.Take);
  }
}
