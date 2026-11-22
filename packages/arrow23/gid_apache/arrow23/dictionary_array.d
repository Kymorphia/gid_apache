/// Module for [DictionaryArray] class
module gid_apache.arrow23.dictionary_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.array;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.data_type;
import gid_apache.arrow23.dictionary_data_type;
import gid_apache.arrow23.types;

/** */
class DictionaryArray : gid_apache.arrow23.array.Array
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
    return cast(void function())garrow_dictionary_array_get_type != &gidSymbolNotFound ? garrow_dictionary_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDictionaryArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override DictionaryArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.dictionary_array.DictionaryArray]
      Returns: New builder object
  */
  static DictionaryArrayGidBuilder builder() nothrow
  {
    return new DictionaryArrayGidBuilder;
  }

  /** */
  @property gid_apache.arrow23.array.Array dictionary() nothrow
  {
    return getDictionary();
  }

  /** */
  @property gid_apache.arrow23.array.Array indices() nothrow
  {
    return getIndices();
  }

  /** */
  this(gid_apache.arrow23.data_type.DataType dataType, gid_apache.arrow23.array.Array indices, gid_apache.arrow23.array.Array dictionary)
  {
    GArrowDictionaryArray* _cretval;
    GError *_err;
    _cretval = garrow_dictionary_array_new(dataType ? cast(GArrowDataType*)dataType._cPtr(No.Dup) : null, indices ? cast(GArrowArray*)indices._cPtr(No.Dup) : null, dictionary ? cast(GArrowArray*)dictionary._cPtr(No.Dup) : null, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow23.array.Array getDictionary() nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_dictionary_array_get_dictionary(cast(GArrowDictionaryArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.dictionary_data_type.DictionaryDataType getDictionaryDataType() nothrow
  {
    GArrowDictionaryDataType* _cretval;
    _cretval = garrow_dictionary_array_get_dictionary_data_type(cast(GArrowDictionaryArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.dictionary_data_type.DictionaryDataType)(cast(GArrowDictionaryDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.array.Array getIndices() nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_dictionary_array_get_indices(cast(GArrowDictionaryArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.dictionary_array.DictionaryArray]
class DictionaryArrayGidBuilderImpl(T) : gid_apache.arrow23.array.ArrayGidBuilderImpl!T
{

  /** */
  T dictionary(gid_apache.arrow23.array.Array propval) nothrow
  {
    return setProperty("dictionary", propval);
  }

  /** */
  T indices(gid_apache.arrow23.array.Array propval) nothrow
  {
    return setProperty("indices", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.dictionary_array.DictionaryArray]
final class DictionaryArrayGidBuilder : DictionaryArrayGidBuilderImpl!DictionaryArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DictionaryArray build() nothrow
  {
    return new DictionaryArray(cast(void*)createGObject(DictionaryArray._getGType), Yes.Take);
  }
}
