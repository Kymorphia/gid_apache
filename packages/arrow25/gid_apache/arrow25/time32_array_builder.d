/// Module for [Time32ArrayBuilder] class
module gid_apache.arrow25.time32_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.array_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.time32_data_type;
import gid_apache.arrow25.types;

/** */
class Time32ArrayBuilder : gid_apache.arrow25.array_builder.ArrayBuilder
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
    return cast(void function())garrow_time32_array_builder_get_type != &gidSymbolNotFound ? garrow_time32_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTime32ArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override Time32ArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.time32_array_builder.Time32ArrayBuilder]
      Returns: New builder object
  */
  static Time32ArrayBuilderGidBuilder builder() nothrow
  {
    return new Time32ArrayBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow25.time32_data_type.Time32DataType dataType) nothrow
  {
    GArrowTime32ArrayBuilder* _cretval;
    _cretval = garrow_time32_array_builder_new(dataType ? cast(GArrowTime32DataType*)dataType._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  bool append(int value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_time32_array_builder_append(cast(GArrowTime32ArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendValue(int value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_time32_array_builder_append_value(cast(GArrowTime32ArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        values = The array of
            the number of days since UNIX epoch in signed 32bit integer.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth `is_valids` is true, the Nth `values` is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendValues(int[] values, bool[] isValids = null)
  {
    bool _retval;
    long _valuesLength;
    if (values)
      _valuesLength = cast(long)values.length;

    auto _values = cast(int*)values.ptr;
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_time32_array_builder_append_values(cast(GArrowTime32ArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.time32_array_builder.Time32ArrayBuilder]
class Time32ArrayBuilderGidBuilderImpl(T) : gid_apache.arrow25.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.time32_array_builder.Time32ArrayBuilder]
final class Time32ArrayBuilderGidBuilder : Time32ArrayBuilderGidBuilderImpl!Time32ArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Time32ArrayBuilder build() nothrow
  {
    return new Time32ArrayBuilder(cast(void*)createGObject(Time32ArrayBuilder._getGType), Yes.Take);
  }
}
