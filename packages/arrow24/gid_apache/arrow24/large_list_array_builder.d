/// Module for [LargeListArrayBuilder] class
module gid_apache.arrow24.large_list_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.array_builder;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.large_list_data_type;
import gid_apache.arrow24.types;

/** */
class LargeListArrayBuilder : gid_apache.arrow24.array_builder.ArrayBuilder
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
    return cast(void function())garrow_large_list_array_builder_get_type != &gidSymbolNotFound ? garrow_large_list_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowLargeListArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override LargeListArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.large_list_array_builder.LargeListArrayBuilder]
      Returns: New builder object
  */
  static LargeListArrayBuilderGidBuilder builder() nothrow
  {
    return new LargeListArrayBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow24.large_list_data_type.LargeListDataType dataType)
  {
    GArrowLargeListArrayBuilder* _cretval;
    GError *_err;
    _cretval = garrow_large_list_array_builder_new(dataType ? cast(GArrowLargeListDataType*)dataType._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  bool appendValue()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_large_list_array_builder_append_value(cast(GArrowLargeListArrayBuilder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow24.array_builder.ArrayBuilder getValueBuilder() nothrow
  {
    GArrowArrayBuilder* _cretval;
    _cretval = garrow_large_list_array_builder_get_value_builder(cast(GArrowLargeListArrayBuilder*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.array_builder.ArrayBuilder)(cast(GArrowArrayBuilder*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.large_list_array_builder.LargeListArrayBuilder]
class LargeListArrayBuilderGidBuilderImpl(T) : gid_apache.arrow24.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.large_list_array_builder.LargeListArrayBuilder]
final class LargeListArrayBuilderGidBuilder : LargeListArrayBuilderGidBuilderImpl!LargeListArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  LargeListArrayBuilder build() nothrow
  {
    return new LargeListArrayBuilder(cast(void*)createGObject(LargeListArrayBuilder._getGType), Yes.Take);
  }
}
