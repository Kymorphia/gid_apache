/// Module for [Time64ArrayBuilder] class
module gid_apache.arrow25.time64_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.array_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.time64_data_type;
import gid_apache.arrow25.types;

/** */
class Time64ArrayBuilder : gid_apache.arrow25.array_builder.ArrayBuilder
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
    return cast(void function())garrow_time64_array_builder_get_type != &gidSymbolNotFound ? garrow_time64_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTime64ArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override Time64ArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.time64_array_builder.Time64ArrayBuilder]
      Returns: New builder object
  */
  static Time64ArrayBuilderGidBuilder builder() nothrow
  {
    return new Time64ArrayBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow25.time64_data_type.Time64DataType dataType) nothrow
  {
    GArrowTime64ArrayBuilder* _cretval;
    _cretval = garrow_time64_array_builder_new(dataType ? cast(GArrowTime64DataType*)dataType._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  bool append(long value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_time64_array_builder_append(cast(GArrowTime64ArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendValue(long value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_time64_array_builder_append_value(cast(GArrowTime64ArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        values = The array of
            the number of milliseconds since UNIX epoch in signed 64bit integer.
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
    _retval = cast(bool)garrow_time64_array_builder_append_values(cast(GArrowTime64ArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.time64_array_builder.Time64ArrayBuilder]
class Time64ArrayBuilderGidBuilderImpl(T) : gid_apache.arrow25.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.time64_array_builder.Time64ArrayBuilder]
final class Time64ArrayBuilderGidBuilder : Time64ArrayBuilderGidBuilderImpl!Time64ArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Time64ArrayBuilder build() nothrow
  {
    return new Time64ArrayBuilder(cast(void*)createGObject(Time64ArrayBuilder._getGType), Yes.Take);
  }
}
