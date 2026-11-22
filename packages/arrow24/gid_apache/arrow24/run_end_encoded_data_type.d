/// Module for [RunEndEncodedDataType] class
module gid_apache.arrow24.run_end_encoded_data_type;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.data_type;
import gid_apache.arrow24.fixed_width_data_type;
import gid_apache.arrow24.types;

/** */
class RunEndEncodedDataType : gid_apache.arrow24.fixed_width_data_type.FixedWidthDataType
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
    return cast(void function())garrow_run_end_encoded_data_type_get_type != &gidSymbolNotFound ? garrow_run_end_encoded_data_type_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRunEndEncodedDataType";
  }

  /** Returns `this`, for use in `with` statements. */
  override RunEndEncodedDataType self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.run_end_encoded_data_type.RunEndEncodedDataType]
      Returns: New builder object
  */
  static RunEndEncodedDataTypeGidBuilder builder() nothrow
  {
    return new RunEndEncodedDataTypeGidBuilder;
  }

  /** */
  this(gid_apache.arrow24.data_type.DataType runEndDataType, gid_apache.arrow24.data_type.DataType valueDataType) nothrow
  {
    GArrowRunEndEncodedDataType* _cretval;
    _cretval = garrow_run_end_encoded_data_type_new(runEndDataType ? cast(GArrowDataType*)runEndDataType._cPtr(No.Dup) : null, valueDataType ? cast(GArrowDataType*)valueDataType._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow24.data_type.DataType getRunEndDataType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_run_end_encoded_data_type_get_run_end_data_type(cast(GArrowRunEndEncodedDataType*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow24.data_type.DataType getValueDataType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_run_end_encoded_data_type_get_value_data_type(cast(GArrowRunEndEncodedDataType*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow24.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.run_end_encoded_data_type.RunEndEncodedDataType]
class RunEndEncodedDataTypeGidBuilderImpl(T) : gid_apache.arrow24.fixed_width_data_type.FixedWidthDataTypeGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.run_end_encoded_data_type.RunEndEncodedDataType]
final class RunEndEncodedDataTypeGidBuilder : RunEndEncodedDataTypeGidBuilderImpl!RunEndEncodedDataTypeGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RunEndEncodedDataType build() nothrow
  {
    return new RunEndEncodedDataType(cast(void*)createGObject(RunEndEncodedDataType._getGType), Yes.Take);
  }
}
