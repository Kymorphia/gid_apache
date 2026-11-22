/// Module for [PrimitiveArray] class
module gid_apache.arrow23.primitive_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.array;
import gid_apache.arrow23.buffer;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.types;

/** */
class PrimitiveArray : gid_apache.arrow23.array.Array
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
    return cast(void function())garrow_primitive_array_get_type != &gidSymbolNotFound ? garrow_primitive_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowPrimitiveArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override PrimitiveArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.primitive_array.PrimitiveArray]
      Returns: New builder object
  */
  static PrimitiveArrayGidBuilder builder() nothrow
  {
    return new PrimitiveArrayGidBuilder;
  }

  /** */
  gid_apache.arrow23.buffer.Buffer getBuffer() nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_primitive_array_get_buffer(cast(GArrowPrimitiveArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  gid_apache.arrow23.buffer.Buffer getDataBuffer() nothrow
  {
    GArrowBuffer* _cretval;
    _cretval = garrow_primitive_array_get_data_buffer(cast(GArrowPrimitiveArray*)this._cPtr);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow23.buffer.Buffer)(cast(GArrowBuffer*)_cretval, Yes.Take);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.primitive_array.PrimitiveArray]
class PrimitiveArrayGidBuilderImpl(T) : gid_apache.arrow23.array.ArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.primitive_array.PrimitiveArray]
final class PrimitiveArrayGidBuilder : PrimitiveArrayGidBuilderImpl!PrimitiveArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  PrimitiveArray build() nothrow
  {
    return new PrimitiveArray(cast(void*)createGObject(PrimitiveArray._getGType), Yes.Take);
  }
}
