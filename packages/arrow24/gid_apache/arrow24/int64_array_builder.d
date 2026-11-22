/// Module for [Int64ArrayBuilder] class
module gid_apache.arrow24.int64_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow24.array_builder;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.types;

/** */
class Int64ArrayBuilder : gid_apache.arrow24.array_builder.ArrayBuilder
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
    return cast(void function())garrow_int64_array_builder_get_type != &gidSymbolNotFound ? garrow_int64_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt64ArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int64ArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.int64_array_builder.Int64ArrayBuilder]
      Returns: New builder object
  */
  static Int64ArrayBuilderGidBuilder builder() nothrow
  {
    return new Int64ArrayBuilderGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowInt64ArrayBuilder* _cretval;
    _cretval = garrow_int64_array_builder_new();
    this(_cretval, Yes.Take);
  }

  /** */
  bool append(long value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_int64_array_builder_append(cast(GArrowInt64ArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendValue(long value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_int64_array_builder_append_value(cast(GArrowInt64ArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        values = The array of int64.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth `is_valids` is true, the Nth `values` is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendValues(long[] values, bool[] isValids = null)
  {
    bool _retval;
    long _valuesLength;
    if (values)
      _valuesLength = cast(long)values.length;

    auto _values = cast(long*)values.ptr;
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_int64_array_builder_append_values(cast(GArrowInt64ArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.int64_array_builder.Int64ArrayBuilder]
class Int64ArrayBuilderGidBuilderImpl(T) : gid_apache.arrow24.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.int64_array_builder.Int64ArrayBuilder]
final class Int64ArrayBuilderGidBuilder : Int64ArrayBuilderGidBuilderImpl!Int64ArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int64ArrayBuilder build() nothrow
  {
    return new Int64ArrayBuilder(cast(void*)createGObject(Int64ArrayBuilder._getGType), Yes.Take);
  }
}
