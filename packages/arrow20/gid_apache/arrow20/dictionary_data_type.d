/// Module for [DictionaryDataType] class
module gid_apache.arrow20.dictionary_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.data_type;
import gid_apache.arrow20.fixed_width_data_type;
import gid_apache.arrow20.types;

/** */
class DictionaryDataType : gid_apache.arrow20.fixed_width_data_type.FixedWidthDataType
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
    return cast(void function())garrow_dictionary_data_type_get_type != &gidSymbolNotFound ? garrow_dictionary_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDictionaryDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override DictionaryDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.dictionary_data_type.DictionaryDataType]
      Returns: New builder object
  */
  static DictionaryDataTypeGidBuilder builder() nothrow
  {
    return new DictionaryDataTypeGidBuilder;
  }

  /** */
  this(gid_apache.arrow20.data_type.DataType indexDataType, gid_apache.arrow20.data_type.DataType valueDataType, bool ordered) nothrow
  {
    GArrowDictionaryDataType* _cretval;
    _cretval = garrow_dictionary_data_type_new(indexDataType ? cast(GArrowDataType*)indexDataType._cPtr(No.Dup) : null, valueDataType ? cast(GArrowDataType*)valueDataType._cPtr(No.Dup) : null, ordered);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow20.data_type.DataType getIndexDataType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_dictionary_data_type_get_index_data_type(cast(GArrowDictionaryDataType*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow20.data_type.DataType getValueDataType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_dictionary_data_type_get_value_data_type(cast(GArrowDictionaryDataType*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  bool isOrdered() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_dictionary_data_type_is_ordered(cast(GArrowDictionaryDataType*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.dictionary_data_type.DictionaryDataType]
class DictionaryDataTypeGidBuilderImpl(T) : gid_apache.arrow20.fixed_width_data_type.FixedWidthDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.dictionary_data_type.DictionaryDataType]
final class DictionaryDataTypeGidBuilder : DictionaryDataTypeGidBuilderImpl!DictionaryDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DictionaryDataType build() nothrow
  {
    return new DictionaryDataType(cast(void*)createGObject(DictionaryDataType._getGType), Yes.Take);
  }
}
