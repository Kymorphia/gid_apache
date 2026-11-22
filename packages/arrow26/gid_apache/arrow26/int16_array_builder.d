/// Module for [Int16ArrayBuilder] class
module gid_apache.arrow26.int16_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.array_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.types;

/** */
class Int16ArrayBuilder : gid_apache.arrow26.array_builder.ArrayBuilder
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
    return cast(void function())garrow_int16_array_builder_get_type != &gidSymbolNotFound ? garrow_int16_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowInt16ArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override Int16ArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.int16_array_builder.Int16ArrayBuilder]
      Returns: New builder object
  */
  static Int16ArrayBuilderGidBuilder builder() nothrow
  {
    return new Int16ArrayBuilderGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowInt16ArrayBuilder* _cretval;
    _cretval = garrow_int16_array_builder_new();
    this(_cretval, Yes.Take);
  }

  /** */
  bool append(short value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_int16_array_builder_append(cast(GArrowInt16ArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendValue(short value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_int16_array_builder_append_value(cast(GArrowInt16ArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        values = The array of int16.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth `is_valids` is true, the Nth `values` is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendValues(short[] values, bool[] isValids = null)
  {
    bool _retval;
    long _valuesLength;
    if (values)
      _valuesLength = cast(long)values.length;

    auto _values = cast(short*)values.ptr;
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_int16_array_builder_append_values(cast(GArrowInt16ArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.int16_array_builder.Int16ArrayBuilder]
class Int16ArrayBuilderGidBuilderImpl(T) : gid_apache.arrow26.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.int16_array_builder.Int16ArrayBuilder]
final class Int16ArrayBuilderGidBuilder : Int16ArrayBuilderGidBuilderImpl!Int16ArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Int16ArrayBuilder build() nothrow
  {
    return new Int16ArrayBuilder(cast(void*)createGObject(Int16ArrayBuilder._getGType), Yes.Take);
  }
}
