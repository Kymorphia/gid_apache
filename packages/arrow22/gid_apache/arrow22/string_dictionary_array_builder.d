/// Module for [StringDictionaryArrayBuilder] class
module gid_apache.arrow22.string_dictionary_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.array;
import gid_apache.arrow22.array_builder;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.string_array;
import gid_apache.arrow22.types;

/** */
class StringDictionaryArrayBuilder : gid_apache.arrow22.array_builder.ArrayBuilder
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
    return cast(void function())garrow_string_dictionary_array_builder_get_type != &gidSymbolNotFound ? garrow_string_dictionary_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStringDictionaryArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override StringDictionaryArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.string_dictionary_array_builder.StringDictionaryArrayBuilder]
      Returns: New builder object
  */
  static StringDictionaryArrayBuilderGidBuilder builder() nothrow
  {
    return new StringDictionaryArrayBuilderGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowStringDictionaryArrayBuilder* _cretval;
    _cretval = garrow_string_dictionary_array_builder_new();
    this(_cretval, Yes.Take);
  }

  /** */
  bool appendArray(gid_apache.arrow22.string_array.StringArray array)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_string_dictionary_array_builder_append_array(cast(GArrowStringDictionaryArrayBuilder*)this._cPtr, array ? cast(GArrowStringArray*)array._cPtr(No.Dup) : null, &_err);
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
    _retval = cast(bool)garrow_string_dictionary_array_builder_append_indices(cast(GArrowStringDictionaryArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendString(string value)
  {
    bool _retval;
    const(char)* _value = value.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _retval = cast(bool)garrow_string_dictionary_array_builder_append_string(cast(GArrowStringDictionaryArrayBuilder*)this._cPtr, _value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool finishDelta(out gid_apache.arrow22.array.Array outIndices, out gid_apache.arrow22.array.Array outDelta)
  {
    bool _retval;
    GArrowArray* _outIndices;
    GArrowArray* _outDelta;
    GError *_err;
    _retval = cast(bool)garrow_string_dictionary_array_builder_finish_delta(cast(GArrowStringDictionaryArrayBuilder*)this._cPtr, &_outIndices, &_outDelta, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    outIndices = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.array.Array)(_outIndices, Yes.Take);
    outDelta = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.array.Array)(_outDelta, Yes.Take);
    return _retval;
  }

  /** */
  long getDictionaryLength() nothrow
  {
    long _retval;
    _retval = garrow_string_dictionary_array_builder_get_dictionary_length(cast(GArrowStringDictionaryArrayBuilder*)this._cPtr);
    return _retval;
  }

  /** */
  bool insertMemoValues(gid_apache.arrow22.string_array.StringArray values)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_string_dictionary_array_builder_insert_memo_values(cast(GArrowStringDictionaryArrayBuilder*)this._cPtr, values ? cast(GArrowStringArray*)values._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Reset and also clear accumulated dictionary values in memo table.
  */
  void resetFull() nothrow
  {
    garrow_string_dictionary_array_builder_reset_full(cast(GArrowStringDictionaryArrayBuilder*)this._cPtr);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.string_dictionary_array_builder.StringDictionaryArrayBuilder]
class StringDictionaryArrayBuilderGidBuilderImpl(T) : gid_apache.arrow22.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.string_dictionary_array_builder.StringDictionaryArrayBuilder]
final class StringDictionaryArrayBuilderGidBuilder : StringDictionaryArrayBuilderGidBuilderImpl!StringDictionaryArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StringDictionaryArrayBuilder build() nothrow
  {
    return new StringDictionaryArrayBuilder(cast(void*)createGObject(StringDictionaryArrayBuilder._getGType), Yes.Take);
  }
}
