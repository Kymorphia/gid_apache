/// Module for [UIntArrayBuilder] class
module gid_apache.arrow24.uint_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow24.array_builder;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.types;

/** */
class UIntArrayBuilder : gid_apache.arrow24.array_builder.ArrayBuilder
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
    return cast(void function())garrow_uint_array_builder_get_type != &gidSymbolNotFound ? garrow_uint_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUIntArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override UIntArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.uint_array_builder.UIntArrayBuilder]
      Returns: New builder object
  */
  static UIntArrayBuilderGidBuilder builder() nothrow
  {
    return new UIntArrayBuilderGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowUIntArrayBuilder* _cretval;
    _cretval = garrow_uint_array_builder_new();
    this(_cretval, Yes.Take);
  }

  /** */
  bool append(ulong value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_uint_array_builder_append(cast(GArrowUIntArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendValue(ulong value)
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_uint_array_builder_append_value(cast(GArrowUIntArrayBuilder*)this._cPtr, value, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /**
      Append multiple values at once. It's more efficient than multiple
      `append` and `append_null` calls.
  
      Params:
        values = The array of unsigned int.
        isValids = The array of
            boolean that shows whether the Nth value is valid or not. If the
            Nth `is_valids` is true, the Nth `values` is valid value. Otherwise
            the Nth value is null value.
      Returns: true on success, false if there was an error.
      Throws: [ErrorWrap]
  */
  bool appendValues(ulong[] values, bool[] isValids = null)
  {
    bool _retval;
    long _valuesLength;
    if (values)
      _valuesLength = cast(long)values.length;

    auto _values = cast(ulong*)values.ptr;
    long _isValidsLength;
    if (isValids)
      _isValidsLength = cast(long)isValids.length;

    auto _isValids_arr = new gboolean[](isValids.length);
    auto _isValids = _isValids_arr.ptr;
    foreach (i, b; isValids) _isValids[i] = cast(gboolean)b;
    GError *_err;
    _retval = cast(bool)garrow_uint_array_builder_append_values(cast(GArrowUIntArrayBuilder*)this._cPtr, _values, _valuesLength, _isValids, _isValidsLength, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.uint_array_builder.UIntArrayBuilder]
class UIntArrayBuilderGidBuilderImpl(T) : gid_apache.arrow24.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.uint_array_builder.UIntArrayBuilder]
final class UIntArrayBuilderGidBuilder : UIntArrayBuilderGidBuilderImpl!UIntArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UIntArrayBuilder build() nothrow
  {
    return new UIntArrayBuilder(cast(void*)createGObject(UIntArrayBuilder._getGType), Yes.Take);
  }
}
