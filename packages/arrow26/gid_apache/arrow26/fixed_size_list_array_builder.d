/// Module for [FixedSizeListArrayBuilder] class
module gid_apache.arrow26.fixed_size_list_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.array_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.fixed_size_list_data_type;
import gid_apache.arrow26.types;

/** */
class FixedSizeListArrayBuilder : gid_apache.arrow26.array_builder.ArrayBuilder
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
    return cast(void function())garrow_fixed_size_list_array_builder_get_type != &gidSymbolNotFound ? garrow_fixed_size_list_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFixedSizeListArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override FixedSizeListArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.fixed_size_list_array_builder.FixedSizeListArrayBuilder]
      Returns: New builder object
  */
  static FixedSizeListArrayBuilderGidBuilder builder() nothrow
  {
    return new FixedSizeListArrayBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.fixed_size_list_data_type.FixedSizeListDataType dataType)
  {
    GArrowFixedSizeListArrayBuilder* _cretval;
    GError *_err;
    _cretval = garrow_fixed_size_list_array_builder_new(dataType ? cast(GArrowFixedSizeListDataType*)dataType._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  bool appendValue()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_fixed_size_list_array_builder_append_value(cast(GArrowFixedSizeListArrayBuilder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow26.array_builder.ArrayBuilder getValueBuilder() nothrow
  {
    GArrowArrayBuilder* _cretval;
    _cretval = garrow_fixed_size_list_array_builder_get_value_builder(cast(GArrowFixedSizeListArrayBuilder*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow26.array_builder.ArrayBuilder)(cast(GArrowArrayBuilder*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.fixed_size_list_array_builder.FixedSizeListArrayBuilder]
class FixedSizeListArrayBuilderGidBuilderImpl(T) : gid_apache.arrow26.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.fixed_size_list_array_builder.FixedSizeListArrayBuilder]
final class FixedSizeListArrayBuilderGidBuilder : FixedSizeListArrayBuilderGidBuilderImpl!FixedSizeListArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FixedSizeListArrayBuilder build() nothrow
  {
    return new FixedSizeListArrayBuilder(cast(void*)createGObject(FixedSizeListArrayBuilder._getGType), Yes.Take);
  }
}
