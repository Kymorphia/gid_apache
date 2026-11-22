/// Module for [Tensor] class
module gid_apache.arrow20.tensor;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.buffer;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.data_type;
import gid_apache.arrow20.types;

/** */
class Tensor : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_tensor_get_type != &gidSymbolNotFound ? garrow_tensor_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTensor";
  }

  /** Returns `this`, for use in `with` statements. */
  override Tensor self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.tensor.Tensor]
      Returns: New builder object
  */
  static TensorGidBuilder builder() nothrow
  {
    return new TensorGidBuilder;
  }

  /** */
  @property gid_apache.arrow20.buffer.Buffer buffer() nothrow
  {
    return getBuffer();
  }

  /** */
  this(gid_apache.arrow20.data_type.DataType dataType, gid_apache.arrow20.buffer.Buffer data, long[] shape, long[] strides = null, string[] dimensionNames = null) nothrow
  {
    GArrowTensor* _cretval;
    size_t _nDimensions;
    if (shape)
      _nDimensions = cast(size_t)shape.length;

    auto _shape = cast(long*)shape.ptr;
    size_t _nStrides;
    if (strides)
      _nStrides = cast(size_t)strides.length;

    auto _strides = cast(long*)strides.ptr;
    size_t _nDimensionNames;
    if (dimensionNames)
      _nDimensionNames = cast(size_t)dimensionNames.length;

    auto _dimensionNames_arr = new char*[](dimensionNames.length);
    auto _dimensionNames = cast(char**)_dimensionNames_arr.ptr;
    foreach (i, s; dimensionNames) _dimensionNames[i] = s.toCString!(No.Malloc);
    _cretval = garrow_tensor_new(dataType ? cast(GArrowDataType*)dataType._cPtr(No.Dup) : null, data ? cast(GArrowBuffer*)data._cPtr(No.Dup) : null, _shape, _nDimensions, _strides, _nStrides, _dimensionNames, _nDimensionNames);
    this(_cretval, Yes.Take);
  }

  /** */
  bool equal(gid_apache.arrow20.tensor.Tensor otherTensor) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_tensor_equal(cast(GArrowTensor*)this._cPtr, otherTensor ? cast(GArrowTensor*)otherTensor._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  gid_apache.arrow20.buffer.Buffer getBuffer() nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_tensor_get_buffer(cast(GArrowTensor*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  string getDimensionName(int i) nothrow
  {
    const(char)* _cretval;
    _cretval = garrow_tensor_get_dimension_name(cast(GArrowTensor*)this._cPtr, i);
    string _retval = (cast(const(char)*)_cretval).fromCString!(No.Free);
    return _retval;
  }

  /** */
  int getNDimensions() nothrow
  {
    int _retval;
    _retval = garrow_tensor_get_n_dimensions(cast(GArrowTensor*)this._cPtr);
    return _retval;
  }

  /** */
  long[] getShape() nothrow
  {
    long* _cretval;
    int _cretlength;
    _cretval = garrow_tensor_get_shape(cast(GArrowTensor*)this._cPtr, &_cretlength);
    long[] _retval;

    if (_cretval)
    {
      _retval = cast(long[])_cretval[0 .. _cretlength].dup;
      gFree(cast(void*)_cretval);
    }
    return _retval;
  }

  /** */
  long getSize() nothrow
  {
    long _retval;
    _retval = garrow_tensor_get_size(cast(GArrowTensor*)this._cPtr);
    return _retval;
  }

  /** */
  long[] getStrides() nothrow
  {
    long* _cretval;
    int _cretlength;
    _cretval = garrow_tensor_get_strides(cast(GArrowTensor*)this._cPtr, &_cretlength);
    long[] _retval;

    if (_cretval)
    {
      _retval = cast(long[])_cretval[0 .. _cretlength].dup;
      gFree(cast(void*)_cretval);
    }
    return _retval;
  }

  /** */
  gid_apache.arrow20.data_type.DataType getValueDataType() nothrow
  {
    GArrowDataType* _cretval;
    _cretval = garrow_tensor_get_value_data_type(cast(GArrowTensor*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow20.data_type.DataType)(cast(GArrowDataType*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow20.types.Type getValueType() nothrow
  {
    GArrowType _cretval;
    _cretval = garrow_tensor_get_value_type(cast(GArrowTensor*)this._cPtr);
    gid_apache.arrow20.types.Type _retval = cast(gid_apache.arrow20.types.Type)_cretval;
    return _retval;
  }

  /** */
  bool isColumnMajor() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_tensor_is_column_major(cast(GArrowTensor*)this._cPtr);
    return _retval;
  }

  /** */
  bool isContiguous() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_tensor_is_contiguous(cast(GArrowTensor*)this._cPtr);
    return _retval;
  }

  /** */
  bool isMutable() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_tensor_is_mutable(cast(GArrowTensor*)this._cPtr);
    return _retval;
  }

  /** */
  bool isRowMajor() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_tensor_is_row_major(cast(GArrowTensor*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.tensor.Tensor]
class TensorGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T buffer(gid_apache.arrow20.buffer.Buffer propval) nothrow
  {
    return setProperty("buffer", propval);
  }

  /** */
  T tensor(void* propval) nothrow
  {
    return setProperty("tensor", propval);
  }
}

/// Fluent builder for [gid_apache.arrow20.tensor.Tensor]
final class TensorGidBuilder : TensorGidBuilderImpl!TensorGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Tensor build() nothrow
  {
    return new Tensor(cast(void*)createGObject(Tensor._getGType), Yes.Take);
  }
}
