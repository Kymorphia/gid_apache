/// Module for [UInt32ArrayBuilder] class
module gid_apache.arrow20.uint32_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow20.array_builder;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.types;

/** */
class UInt32ArrayBuilder : gid_apache.arrow20.array_builder.ArrayBuilder
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
    return cast(void function())garrow_uint32_array_builder_get_type != &gidSymbolNotFound ? garrow_uint32_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUInt32ArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override UInt32ArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.uint32_array_builder.UInt32ArrayBuilder]
      Returns: New builder object
  */
  static UInt32ArrayBuilderGidBuilder builder() nothrow
  {
    return new UInt32ArrayBuilderGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowUInt32ArrayBuilder* _cretval;
    _cretval = garrow_uint32_array_builder_new();
    this(_cretval, Yes.Take);
  }

  /** */
  bool append(uint value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_uint32_array_builder_append(cast(GArrowUInt32ArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendValue(uint value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_uint32_array_builder_append_value(cast(GArrowUInt32ArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        values = The array of uint32.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth `is_valids` is true, the Nth `values` is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendValues(uint[] values, bool[] isValids = null)
  {
    bool _retval;
    long _valuesLength;
    if (values)
      _valuesLength = cast(long)values.length;

    auto _values = cast(uint*)values.ptr;
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_uint32_array_builder_append_values(cast(GArrowUInt32ArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.uint32_array_builder.UInt32ArrayBuilder]
class UInt32ArrayBuilderGidBuilderImpl(T) : gid_apache.arrow20.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.uint32_array_builder.UInt32ArrayBuilder]
final class UInt32ArrayBuilderGidBuilder : UInt32ArrayBuilderGidBuilderImpl!UInt32ArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UInt32ArrayBuilder build() nothrow
  {
    return new UInt32ArrayBuilder(cast(void*)createGObject(UInt32ArrayBuilder._getGType), Yes.Take);
  }
}
