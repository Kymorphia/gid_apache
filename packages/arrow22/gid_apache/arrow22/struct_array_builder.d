/// Module for [StructArrayBuilder] class
module gid_apache.arrow22.struct_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.array_builder;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.struct_data_type;
import gid_apache.arrow22.types;

/** */
class StructArrayBuilder : gid_apache.arrow22.array_builder.ArrayBuilder
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
    return cast(void function())garrow_struct_array_builder_get_type != &gidSymbolNotFound ? garrow_struct_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStructArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override StructArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.struct_array_builder.StructArrayBuilder]
      Returns: New builder object
  */
  static StructArrayBuilderGidBuilder builder() nothrow
  {
    return new StructArrayBuilderGidBuilder;
  }

  /** */
  this(gid_apache.arrow22.struct_data_type.StructDataType dataType)
  {
    GArrowStructArrayBuilder* _cretval;
    GError *_err;
    _cretval = garrow_struct_array_builder_new(dataType ? cast(GArrowStructDataType*)dataType._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  bool append()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_struct_array_builder_append(cast(GArrowStructArrayBuilder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  bool appendValue()
  {
    bool _retval;
    GError *_err;
    _retval = cast(bool)garrow_struct_array_builder_append_value(cast(GArrowStructArrayBuilder*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.array_builder.ArrayBuilder getFieldBuilder(int i) nothrow
  {
    GArrowArrayBuilder* _cretval;
    _cretval = garrow_struct_array_builder_get_field_builder(cast(GArrowStructArrayBuilder*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow22.array_builder.ArrayBuilder)(cast(GArrowArrayBuilder*)_cretval, No.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow22.array_builder.ArrayBuilder[] getFieldBuilders() nothrow
  {
    GList* _cretval;
    _cretval = garrow_struct_array_builder_get_field_builders(cast(GArrowStructArrayBuilder*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow22.array_builder.ArrayBuilder, GidOwnership.None)(cast(GList*)_cretval);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.struct_array_builder.StructArrayBuilder]
class StructArrayBuilderGidBuilderImpl(T) : gid_apache.arrow22.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow22.struct_array_builder.StructArrayBuilder]
final class StructArrayBuilderGidBuilder : StructArrayBuilderGidBuilderImpl!StructArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StructArrayBuilder build() nothrow
  {
    return new StructArrayBuilder(cast(void*)createGObject(StructArrayBuilder._getGType), Yes.Take);
  }
}
