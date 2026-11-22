/// Module for [ListArrayBuilder] class
module gid_apache.arrow19.list_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.array_builder;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.list_data_type;
import gid_apache.arrow19.types;

/** */
class ListArrayBuilder : gid_apache.arrow19.array_builder.ArrayBuilder
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
    return cast(void function())garrow_list_array_builder_get_type != &gidSymbolNotFound ? garrow_list_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowListArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override ListArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.list_array_builder.ListArrayBuilder]
      Returns: New builder object
  */
  static ListArrayBuilderGidBuilder builder() nothrow
  {
    return new ListArrayBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow19.list_data_type.ListDataType dataType)
  {
    GArrowListArrayBuilder* _cretval;
    GError *_err;
    _cretval = garrow_list_array_builder_new(dataType ? cast(GArrowListDataType*)dataType._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  bool append()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_list_array_builder_append(cast(GArrowListArrayBuilder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendValue()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_list_array_builder_append_value(cast(GArrowListArrayBuilder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow19.array_builder.ArrayBuilder getValueBuilder() nothrow
  {
    GArrowArrayBuilder* _cretval;
    _cretval = garrow_list_array_builder_get_value_builder(cast(GArrowListArrayBuilder*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow19.array_builder.ArrayBuilder)(cast(GArrowArrayBuilder*)_cretval, No.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.list_array_builder.ListArrayBuilder]
class ListArrayBuilderGidBuilderImpl(T) : gid_apache.arrow19.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow19.list_array_builder.ListArrayBuilder]
final class ListArrayBuilderGidBuilder : ListArrayBuilderGidBuilderImpl!ListArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ListArrayBuilder build() nothrow
  {
    return new ListArrayBuilder(cast(void*)createGObject(ListArrayBuilder._getGType), Yes.Take);
  }
}
