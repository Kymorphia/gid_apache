/// Module for [Decimal64ArrayBuilder] class
module gid_apache.arrow21.decimal64_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.decimal64;
import gid_apache.arrow21.decimal64_data_type;
import gid_apache.arrow21.fixed_size_binary_array_builder;
import gid_apache.arrow21.types;

/** */
class Decimal64ArrayBuilder : gid_apache.arrow21.fixed_size_binary_array_builder.FixedSizeBinaryArrayBuilder
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
    return cast(void function())garrow_decimal64_array_builder_get_type != &gidSymbolNotFound ? garrow_decimal64_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDecimal64ArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override Decimal64ArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.decimal64_array_builder.Decimal64ArrayBuilder]
      Returns: New builder object
  */
  static Decimal64ArrayBuilderGidBuilder builder() nothrow
  {
    return new Decimal64ArrayBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow21.decimal64_data_type.Decimal64DataType dataType) nothrow
  {
    GArrowDecimal64ArrayBuilder* _cretval;
    _cretval = garrow_decimal64_array_builder_new(dataType ? cast(GArrowDecimal64DataType*)dataType._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  alias appendValue = gid_apache.arrow21.fixed_size_binary_array_builder.FixedSizeBinaryArrayBuilder.appendValue;

  /** */
  bool appendValue(gid_apache.arrow21.decimal64.Decimal64 value = null)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_decimal64_array_builder_append_value(cast(GArrowDecimal64ArrayBuilder*)this._cPtr, value ? cast(GArrowDecimal64*)value._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  alias appendValues = gid_apache.arrow21.fixed_size_binary_array_builder.FixedSizeBinaryArrayBuilder.appendValues;

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        values = The array of #GArrowDecimal64.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth is_valids is true, the Nth values is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendValues(gid_apache.arrow21.decimal64.Decimal64[] values, bool[] isValids = null)
  {
    bool _retval;
    long _valuesLength;
    if (values)
      _valuesLength = cast(long)values.length;

    auto _values_arr = new GArrowDecimal64*[](values.length);
    auto _values = cast(GArrowDecimal64**)_values_arr.ptr;
    foreach (i, obj; values) _values[i] = obj ? cast(GArrowDecimal64*)obj._cPtr(No.Dup) : null;
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_decimal64_array_builder_append_values(cast(GArrowDecimal64ArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.decimal64_array_builder.Decimal64ArrayBuilder]
class Decimal64ArrayBuilderGidBuilderImpl(T) : gid_apache.arrow21.fixed_size_binary_array_builder.FixedSizeBinaryArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow21.decimal64_array_builder.Decimal64ArrayBuilder]
final class Decimal64ArrayBuilderGidBuilder : Decimal64ArrayBuilderGidBuilderImpl!Decimal64ArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Decimal64ArrayBuilder build() nothrow
  {
    return new Decimal64ArrayBuilder(cast(void*)createGObject(Decimal64ArrayBuilder._getGType), Yes.Take);
  }
}
