/// Module for [StructFieldOptions] class
module gid_apache.arrow23.struct_field_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.function_options;
import gid_apache.arrow23.types;

/** */
class StructFieldOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_struct_field_options_get_type != &gidSymbolNotFound ? garrow_struct_field_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowStructFieldOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override StructFieldOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.struct_field_options.StructFieldOptions]
      Returns: New builder object
  */
  static StructFieldOptionsGidBuilder builder() nothrow
  {
    return new StructFieldOptionsGidBuilder;
  }

  /** */
  @property string fieldRef() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("field-ref");
  }

  /** */
  this() nothrow
  {
    GArrowStructFieldOptions* _cretval;
    _cretval = garrow_struct_field_options_new();
    this(_cretval, Yes.Take);
  }

  /** */
  void setFieldRef(string fieldRef)
  {
    const(char)* _fieldRef = fieldRef.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    garrow_struct_field_options_set_field_ref(cast(GArrowStructFieldOptions*)this._cPtr, _fieldRef, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.struct_field_options.StructFieldOptions]
class StructFieldOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.struct_field_options.StructFieldOptions]
final class StructFieldOptionsGidBuilder : StructFieldOptionsGidBuilderImpl!StructFieldOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  StructFieldOptions build() nothrow
  {
    return new StructFieldOptions(cast(void*)createGObject(StructFieldOptions._getGType), Yes.Take);
  }
}
