/// Module for [Decimal128ArrayBuilder] class
module gid_apache.arrow25.decimal128_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.decimal128;
import gid_apache.arrow25.decimal128_data_type;
import gid_apache.arrow25.fixed_size_binary_array_builder;
import gid_apache.arrow25.types;

/** */
class Decimal128ArrayBuilder : gid_apache.arrow25.fixed_size_binary_array_builder.FixedSizeBinaryArrayBuilder
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
    return cast(void function())garrow_decimal128_array_builder_get_type != &gidSymbolNotFound ? garrow_decimal128_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal128ArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal128ArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.decimal128_array_builder.Decimal128ArrayBuilder]
      Returns: New builder object
  */
  static Decimal128ArrayBuilderGidBuilder builder() nothrow
  {
    return new Decimal128ArrayBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow25.decimal128_data_type.Decimal128DataType dataType) nothrow
  {
    GArrowDecimal128ArrayBuilder* _cretval;
    _cretval = garrow_decimal128_array_builder_new(dataType ? cast(GArrowDecimal128DataType*)dataType._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  bool append(gid_apache.arrow25.decimal128.Decimal128 value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_decimal128_array_builder_append(cast(GArrowDecimal128ArrayBuilder*)this._cPtr, value ? cast(GArrowDecimal128*)value._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  alias appendValue = gid_apache.arrow25.fixed_size_binary_array_builder.FixedSizeBinaryArrayBuilder.appendValue;

  /** */
  bool appendValue(gid_apache.arrow25.decimal128.Decimal128 value = null)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_decimal128_array_builder_append_value(cast(GArrowDecimal128ArrayBuilder*)this._cPtr, value ? cast(GArrowDecimal128*)value._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  alias appendValues = gid_apache.arrow25.fixed_size_binary_array_builder.FixedSizeBinaryArrayBuilder.appendValues;

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        values = The array of #GArrowDecimal128.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth is_valids is true, the Nth values is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendValues(gid_apache.arrow25.decimal128.Decimal128[] values, bool[] isValids = null)
  {
    bool _retval;
    long _valuesLength;
    if (values)
      _valuesLength = cast(long)values.length;

    auto _values_arr = new GArrowDecimal128*[](values.length);
    auto _values = cast(GArrowDecimal128**)_values_arr.ptr;
    foreach (i, obj; values) _values[i] = obj ? cast(GArrowDecimal128*)obj._cPtr(No.Dup) : null;
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_decimal128_array_builder_append_values(cast(GArrowDecimal128ArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.decimal128_array_builder.Decimal128ArrayBuilder]
class Decimal128ArrayBuilderGidBuilderImpl(T) : gid_apache.arrow25.fixed_size_binary_array_builder.FixedSizeBinaryArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.decimal128_array_builder.Decimal128ArrayBuilder]
final class Decimal128ArrayBuilderGidBuilder : Decimal128ArrayBuilderGidBuilderImpl!Decimal128ArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal128ArrayBuilder build() nothrow
  {
    return new Decimal128ArrayBuilder(cast(void*)createGObject(Decimal128ArrayBuilder._getGType), Yes.Take);
  }
}
