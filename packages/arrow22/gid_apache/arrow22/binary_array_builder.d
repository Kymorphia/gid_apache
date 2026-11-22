/// Module for [BinaryArrayBuilder] class
module gid_apache.arrow22.binary_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow22.array_builder;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.types;

/** */
class BinaryArrayBuilder : gid_apache.arrow22.array_builder.ArrayBuilder
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
    return cast(void function())garrow_binary_array_builder_get_type != &gidSymbolNotFound ? garrow_binary_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBinaryArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override BinaryArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.binary_array_builder.BinaryArrayBuilder]
      Returns: New builder object
  */
  static BinaryArrayBuilderGidBuilder builder() nothrow
  {
    return new BinaryArrayBuilderGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowBinaryArrayBuilder* _cretval;
    _cretval = garrow_binary_array_builder_new();
    this(_cretval, Yes.Take);
  }

  /** */
  bool append(ubyte[] value)
  {
    bool _retval;
    int _length;
    if (value)
      _length = cast(int)value.length;

    auto _value = cast(ubyte*)value.ptr;
    GError *_err;
    _retval = cast(bool)garrow_binary_array_builder_append(cast(GArrowBinaryArrayBuilder*)this._cPtr, _value, _length, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendValue(ubyte[] value)
  {
    bool _retval;
    int _length;
    if (value)
      _length = cast(int)value.length;

    auto _value = cast(ubyte*)value.ptr;
    GError *_err;
    _retval = cast(bool)garrow_binary_array_builder_append_value(cast(GArrowBinaryArrayBuilder*)this._cPtr, _value, _length, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendValueBytes(gid.glib2.bytes.Bytes value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_binary_array_builder_append_value_bytes(cast(GArrowBinaryArrayBuilder*)this._cPtr, value ? cast(GBytes*)value._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        values = The array of #GBytes.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth is_valids is true, the Nth values is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendValues(gid.glib2.bytes.Bytes[] values, bool[] isValids = null)
  {
    bool _retval;
    long _valuesLength;
    if (values)
      _valuesLength = cast(long)values.length;

    auto _values_arr = new GBytes*[](values.length);
    auto _values = _values_arr.ptr;
    foreach (i, obj; values) _values[i] = obj ? cast(GBytes*)obj._cPtr(No.Dup) : null;
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_binary_array_builder_append_values(cast(GArrowBinaryArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.binary_array_builder.BinaryArrayBuilder]
class BinaryArrayBuilderGidBuilderImpl(T) : gid_apache.arrow22.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.binary_array_builder.BinaryArrayBuilder]
final class BinaryArrayBuilderGidBuilder : BinaryArrayBuilderGidBuilderImpl!BinaryArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BinaryArrayBuilder build() nothrow
  {
    return new BinaryArrayBuilder(cast(void*)createGObject(BinaryArrayBuilder._getGType), Yes.Take);
  }
}
