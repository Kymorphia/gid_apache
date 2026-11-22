/// Module for [Field] class
module gid_apache.arrow24.field;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.data_type;
import gid_apache.arrow24.types;

/** */
class Field : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_field_get_type != &gidSymbolNotFound ? garrow_field_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowField";
  }

  /** Returns `this`, for use in `with` statements. */
  override Field self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.field.Field]
      Returns: New builder object
  */
  static FieldGidBuilder builder() nothrow
  {
    return new FieldGidBuilder;
  }

  /** */
  this(string name, gid_apache.arrow24.data_type.DataType dataType) nothrow
  {
    GArrowField* _cretval;
    const(char)* _name = name.toCString!(No.Malloc, No.Nullable);
    _cretval = garrow_field_new(_name, dataType ? cast(GArrowDataType*)dataType._cPtr(Yes.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  static gid_apache.arrow24.field.Field newFull(string name, gid_apache.arrow24.data_type.DataType dataType, bool nullable) nothrow
  {
    GArrowField* _cretval;
    const(char)* _name = name.toCString!(No.Malloc, No.Nullable);
    _cretval = garrow_field_new_full(_name, dataType ? cast(GArrowDataType*)dataType._cPtr(No.Dup) : null, nullable);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  static gid_apache.arrow24.field.Field import_(void* cAbiSchema)
  {
    GArrowField* _cretval;
    GError *_err;
    _cretval = garrow_field_import(cAbiSchema, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow24.field.Field otherField) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_field_equal(cast(GArrowField*)this._cPtr, otherField ? cast(GArrowField*)otherField._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  void* export_()
  {
    GError *_err;
    auto _retval = garrow_field_export(cast(GArrowField*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow24.data_type.DataType getDataType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_field_get_data_type(cast(GArrowField*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.data_type.DataType)(cast(GArrowDataType*)_cretval, No.Take);
    return _retval;
  }

  /** */
  string[string] getMetadata() nothrow
  {
    GHashTable* _cretval;
    _cretval = garrow_field_get_metadata(cast(GArrowField*)this._cPtr);
    auto _retval = gHashTableToD!(string, string, GidOwnership.Full)(cast(GHashTable*)_cretval);
    return _retval;
  }

  /** */
  string getName() nothrow
  {
    const(char)* _cretval;
    _cretval = garrow_field_get_name(cast(GArrowField*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(No.Free);
    return _retval;
  }

  /** */
  bool hasMetadata() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_field_has_metadata(cast(GArrowField*)this._cPtr);
    return _retval;
  }

  /** */
  bool isNullable() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_field_is_nullable(cast(GArrowField*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow24.field.Field removeMetadata() nothrow
  {
    GArrowField* _cretval;
    _cretval = garrow_field_remove_metadata(cast(GArrowField*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = garrow_field_to_string(cast(GArrowField*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  string toStringMetadata(bool showMetadata) nothrow
  {
    char* _cretval;
    _cretval = garrow_field_to_string_metadata(cast(GArrowField*)this._cPtr, showMetadata);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  gid_apache.arrow24.field.Field withMergedMetadata(string[string] metadata) nothrow
  {
    GArrowField* _cretval;
    auto _metadata = gHashTableFromD!(string, string)(metadata);
    scope(exit) containerFree!(GHashTable*, string, GidOwnership.None)(_metadata);
    _cretval = garrow_field_with_merged_metadata(cast(GArrowField*)this._cPtr, _metadata);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow24.field.Field withMetadata(string[string] metadata) nothrow
  {
    GArrowField* _cretval;
    auto _metadata = gHashTableFromD!(string, string)(metadata);
    scope(exit) containerFree!(GHashTable*, string, GidOwnership.None)(_metadata);
    _cretval = garrow_field_with_metadata(cast(GArrowField*)this._cPtr, _metadata);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.field.Field]
class FieldGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T dataType(gid_apache.arrow24.data_type.DataType propval) nothrow
  {
    return setProperty("data-type", propval);
  }

  /** */
  T field(void* propval) nothrow
  {
    return setProperty("field", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.field.Field]
final class FieldGidBuilder : FieldGidBuilderImpl!FieldGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Field build() nothrow
  {
    return new Field(cast(void*)createGObject(Field._getGType), Yes.Take);
  }
}
