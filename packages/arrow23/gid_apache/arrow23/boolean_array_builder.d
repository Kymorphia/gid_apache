/// Module for [BooleanArrayBuilder] class
module gid_apache.arrow23.boolean_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.array_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.types;

/** */
class BooleanArrayBuilder : gid_apache.arrow23.array_builder.ArrayBuilder
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
    return cast(void function())garrow_boolean_array_builder_get_type != &gidSymbolNotFound ? garrow_boolean_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBooleanArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override BooleanArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.boolean_array_builder.BooleanArrayBuilder]
      Returns: New builder object
  */
  static BooleanArrayBuilderGidBuilder builder() nothrow
  {
    return new BooleanArrayBuilderGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowBooleanArrayBuilder* _cretval;
    _cretval = garrow_boolean_array_builder_new();
    this(_cretval, Yes.Take);
  }

  /** */
  bool append(bool value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_boolean_array_builder_append(cast(GArrowBooleanArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendValue(bool value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_boolean_array_builder_append_value(cast(GArrowBooleanArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        values = The array of boolean.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth `is_valids` is true, the Nth `values` is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendValues(bool[] values, bool[] isValids = null)
  {
    bool _retval;
    long _valuesLength;
    if (values)
      _valuesLength = cast(long)values.length;

    auto _values_arr = new gboolean[](values.length);
    auto _values = _values_arr.ptr;
    foreach (i, b; values) _values[i] = cast(gboolean)b;
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_boolean_array_builder_append_values(cast(GArrowBooleanArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.boolean_array_builder.BooleanArrayBuilder]
class BooleanArrayBuilderGidBuilderImpl(T) : gid_apache.arrow23.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.boolean_array_builder.BooleanArrayBuilder]
final class BooleanArrayBuilderGidBuilder : BooleanArrayBuilderGidBuilderImpl!BooleanArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BooleanArrayBuilder build() nothrow
  {
    return new BooleanArrayBuilder(cast(void*)createGObject(BooleanArrayBuilder._getGType), Yes.Take);
  }
}
