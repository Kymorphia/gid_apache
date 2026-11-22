/// Module for [BinaryDictionaryArrayBuilder] class
module gid_apache.arrow20.binary_dictionary_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.array;
import gid_apache.arrow20.array_builder;
import gid_apache.arrow20.binary_array;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.types;

/** */
class BinaryDictionaryArrayBuilder : gid_apache.arrow20.array_builder.ArrayBuilder
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
    return cast(void function())garrow_binary_dictionary_array_builder_get_type != &gidSymbolNotFound ? garrow_binary_dictionary_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowBinaryDictionaryArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override BinaryDictionaryArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.binary_dictionary_array_builder.BinaryDictionaryArrayBuilder]
      Returns: New builder object
  */
  static BinaryDictionaryArrayBuilderGidBuilder builder() nothrow
  {
    return new BinaryDictionaryArrayBuilderGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowBinaryDictionaryArrayBuilder* _cretval;
    _cretval = garrow_binary_dictionary_array_builder_new();
    this(_cretval, Yes.Take);
  }

  /** */
  bool appendArray(gid_apache.arrow20.binary_array.BinaryArray array)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_binary_dictionary_array_builder_append_array(cast(GArrowBinaryDictionaryArrayBuilder*)this._cPtr, array ? cast(GArrowBinaryArray*)array._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append dictionary indices directly without modifying the internal memo.
  
      Params:
        values = The array of indices.
        isValids = The array of
            true or false that shows whether the Nth value is valid or not. If the
            Nth `is_valids` is true, the Nth `values` is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendIndices(long[] values, bool[] isValids = null)
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
    _retval = cast(bool)garrow_binary_dictionary_array_builder_append_indices(cast(GArrowBinaryDictionaryArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
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
    _retval = cast(bool)garrow_binary_dictionary_array_builder_append_value(cast(GArrowBinaryDictionaryArrayBuilder*)this._cPtr, _value, _length, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendValueBytes(gid.glib2.bytes.Bytes value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_binary_dictionary_array_builder_append_value_bytes(cast(GArrowBinaryDictionaryArrayBuilder*)this._cPtr, value ? cast(GBytes*)value._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool finishDelta(out gid_apache.arrow20.array.Array outIndices, out gid_apache.arrow20.array.Array outDelta)
  {
    bool _retval;
    GArrowArray* _outIndices;
    GArrowArray* _outDelta;
    GError *_err;
    _retval = cast(bool)garrow_binary_dictionary_array_builder_finish_delta(cast(GArrowBinaryDictionaryArrayBuilder*)this._cPtr, &_outIndices, &_outDelta, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    outIndices = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.array.Array)(_outIndices, Yes.Take);
    outDelta = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.array.Array)(_outDelta, Yes.Take);
    return _retval;
  }

  /** */
  long getDictionaryLength() nothrow
  {
    long _retval;
    _retval = garrow_binary_dictionary_array_builder_get_dictionary_length(cast(GArrowBinaryDictionaryArrayBuilder*)this._cPtr);
    return _retval;
  }

  /** */
  bool insertMemoValues(gid_apache.arrow20.binary_array.BinaryArray values)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_binary_dictionary_array_builder_insert_memo_values(cast(GArrowBinaryDictionaryArrayBuilder*)this._cPtr, values ? cast(GArrowBinaryArray*)values._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Reset and also clear accumulated dictionary values in memo table.
  */
  void resetFull() nothrow
  {
    garrow_binary_dictionary_array_builder_reset_full(cast(GArrowBinaryDictionaryArrayBuilder*)this._cPtr);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.binary_dictionary_array_builder.BinaryDictionaryArrayBuilder]
class BinaryDictionaryArrayBuilderGidBuilderImpl(T) : gid_apache.arrow20.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.binary_dictionary_array_builder.BinaryDictionaryArrayBuilder]
final class BinaryDictionaryArrayBuilderGidBuilder : BinaryDictionaryArrayBuilderGidBuilderImpl!BinaryDictionaryArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  BinaryDictionaryArrayBuilder build() nothrow
  {
    return new BinaryDictionaryArrayBuilder(cast(void*)createGObject(BinaryDictionaryArrayBuilder._getGType), Yes.Take);
  }
}
