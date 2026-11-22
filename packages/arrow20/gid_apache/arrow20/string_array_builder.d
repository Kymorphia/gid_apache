/// Module for [StringArrayBuilder] class
module gid_apache.arrow20.string_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.binary_array_builder;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.types;

/** */
class StringArrayBuilder : gid_apache.arrow20.binary_array_builder.BinaryArrayBuilder
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
    return cast(void function())garrow_string_array_builder_get_type != &gidSymbolNotFound ? garrow_string_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStringArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override StringArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.string_array_builder.StringArrayBuilder]
      Returns: New builder object
  */
  static StringArrayBuilderGidBuilder builder() nothrow
  {
    return new StringArrayBuilderGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowStringArrayBuilder* _cretval;
    _cretval = garrow_string_array_builder_new();
    this(_cretval, Yes.Take);
  }

  alias append = gid_apache.arrow20.binary_array_builder.BinaryArrayBuilder.append;

  /** */
  bool append(string value)
  {
    bool _retval;
    const(char)* _value = value.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _retval = cast(bool)garrow_string_array_builder_append(cast(GArrowStringArrayBuilder*)this._cPtr, _value, &_err);
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
    _retval = cast(bool)garrow_string_array_builder_append_string(cast(GArrowStringArrayBuilder*)this._cPtr, _value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendStringLen(string value, int length)
  {
    bool _retval;
    const(char)* _value = value.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _retval = cast(bool)garrow_string_array_builder_append_string_len(cast(GArrowStringArrayBuilder*)this._cPtr, _value, length, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        values = The array of strings.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth is_valids is true, the Nth values is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendStrings(string[] values, bool[] isValids = null)
  {
    bool _retval;
    long _valuesLength;
    if (values)
      _valuesLength = cast(long)values.length;

    auto _values_arr = new char*[](values.length);
    auto _values = cast(char**)_values_arr.ptr;
    foreach (i, s; values) _values[i] = s.toCString!(No.Malloc);
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_string_array_builder_append_strings(cast(GArrowStringArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.string_array_builder.StringArrayBuilder]
class StringArrayBuilderGidBuilderImpl(T) : gid_apache.arrow20.binary_array_builder.BinaryArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.string_array_builder.StringArrayBuilder]
final class StringArrayBuilderGidBuilder : StringArrayBuilderGidBuilderImpl!StringArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StringArrayBuilder build() nothrow
  {
    return new StringArrayBuilder(cast(void*)createGObject(StringArrayBuilder._getGType), Yes.Take);
  }
}
