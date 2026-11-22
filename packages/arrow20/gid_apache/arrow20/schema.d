/// Module for [Schema] class
module gid_apache.arrow20.schema;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.field;
import gid_apache.arrow20.types;

/** */
class Schema : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_schema_get_type != &gidSymbolNotFound ? garrow_schema_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSchema";
  }

  /** Returns `this`, for use in `with` statements. */
  override Schema self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.schema.Schema]
      Returns: New builder object
  */
  static SchemaGidBuilder builder() nothrow
  {
    return new SchemaGidBuilder;
  }

  /** */
  this(gid_apache.arrow20.field.Field[] fields) nothrow
  {
    GArrowSchema* _cretval;
    auto _fields = gListFromD!(gid_apache.arrow20.field.Field)(fields);
    scope(exit) containerFree!(GList*, gid_apache.arrow20.field.Field, GidOwnership.None)(_fields);
    _cretval = garrow_schema_new(_fields);
    this(_cretval, Yes.Take);
  }

  /** */
  static gid_apache.arrow20.schema.Schema import_(void* cAbiSchema)
  {
    GArrowSchema* _cretval;
    GError *_err;
    _cretval = garrow_schema_import(cAbiSchema, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow20.schema.Schema addField(uint i, gid_apache.arrow20.field.Field field)
  {
    GArrowSchema* _cretval;
    GError *_err;
    _cretval = garrow_schema_add_field(cast(GArrowSchema*)this._cPtr, i, field ? cast(GArrowField*)field._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool equal(gid_apache.arrow20.schema.Schema otherSchema) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_schema_equal(cast(GArrowSchema*)this._cPtr, otherSchema ? cast(GArrowSchema*)otherSchema._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  void* export_()
  {
    GError *_err;
    auto _retval = garrow_schema_export(cast(GArrowSchema*)this._cPtr, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow20.field.Field getField(uint i) nothrow
  {
    GArrowField* _cretval;
    _cretval = garrow_schema_get_field(cast(GArrowSchema*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow20.field.Field getFieldByName(string name) nothrow
  {
    GArrowField* _cretval;
    const(char)* _name = name.toCString!(No.Malloc, No.Nullable);
    _cretval = garrow_schema_get_field_by_name(cast(GArrowSchema*)this._cPtr, _name);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.field.Field)(cast(GArrowField*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  int getFieldIndex(string name) nothrow
  {
    int _retval;
    const(char)* _name = name.toCString!(No.Malloc, No.Nullable);
    _retval = garrow_schema_get_field_index(cast(GArrowSchema*)this._cPtr, _name);
    return _retval;
  }

  /** */
  gid_apache.arrow20.field.Field[] getFields() nothrow
  {
    GList* _cretval;
    _cretval = garrow_schema_get_fields(cast(GArrowSchema*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow20.field.Field, GidOwnership.Full)(cast(GList*)_cretval);
    return _retval;
  }

  /** */
  string[string] getMetadata() nothrow
  {
    GHashTable* _cretval;
    _cretval = garrow_schema_get_metadata(cast(GArrowSchema*)this._cPtr);
    auto _retval = gHashTableToD!(string, string, GidOwnership.Full)(cast(GHashTable*)_cretval);
    return _retval;
  }

  /** */
  bool hasMetadata() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_schema_has_metadata(cast(GArrowSchema*)this._cPtr);
    return _retval;
  }

  /** */
  uint nFields() nothrow
  {
    uint _retval;
    _retval = garrow_schema_n_fields(cast(GArrowSchema*)this._cPtr);
    return _retval;
  }

  /** */
  gid_apache.arrow20.schema.Schema removeField(uint i)
  {
    GArrowSchema* _cretval;
    GError *_err;
    _cretval = garrow_schema_remove_field(cast(GArrowSchema*)this._cPtr, i, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow20.schema.Schema replaceField(uint i, gid_apache.arrow20.field.Field field)
  {
    GArrowSchema* _cretval;
    GError *_err;
    _cretval = garrow_schema_replace_field(cast(GArrowSchema*)this._cPtr, i, field ? cast(GArrowField*)field._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = garrow_schema_to_string(cast(GArrowSchema*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  string toStringMetadata(bool showMetadata) nothrow
  {
    char* _cretval;
    _cretval = garrow_schema_to_string_metadata(cast(GArrowSchema*)this._cPtr, showMetadata);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  gid_apache.arrow20.schema.Schema withMetadata(string[string] metadata) nothrow
  {
    GArrowSchema* _cretval;
    auto _metadata = gHashTableFromD!(string, string)(metadata);
    scope(exit) containerFree!(GHashTable*, string, GidOwnership.None)(_metadata);
    _cretval = garrow_schema_with_metadata(cast(GArrowSchema*)this._cPtr, _metadata);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.schema.Schema)(cast(GArrowSchema*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.schema.Schema]
class SchemaGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T schema(void* propval) nothrow
  {
    return setProperty("schema", propval);
  }
}

/// Fluent builder for [gid_apache.arrow20.schema.Schema]
final class SchemaGidBuilder : SchemaGidBuilderImpl!SchemaGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Schema build() nothrow
  {
    return new Schema(cast(void*)createGObject(Schema._getGType), Yes.Take);
  }
}
