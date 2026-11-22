/// Module for [UnionArray] class
module gid_apache.arrow21.union_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow21.array;
import gid_apache.arrow21.c.functions;
import gid_apache.arrow21.c.types;
import gid_apache.arrow21.int8_array;
import gid_apache.arrow21.types;

/** */
class UnionArray : gid_apache.arrow21.array.Array
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
    return cast(void function())garrow_union_array_get_type != &gidSymbolNotFound ? garrow_union_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowUnionArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override UnionArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow21.union_array.UnionArray]
      Returns: New builder object
  */
  static UnionArrayGidBuilder builder() nothrow
  {
    return new UnionArrayGidBuilder;
  }

  /** */
  @property gid_apache.arrow21.int8_array.Int8Array typeIds() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow21.int8_array.Int8Array)("type-ids");
  }

  /** */
  int getChildId(long i) nothrow
  {
    int _retval;
    _retval = garrow_union_array_get_child_id(cast(GArrowUnionArray*)this._cPtr, i);
    return _retval;
  }

  /** */
  gid_apache.arrow21.array.Array getField(int i) nothrow
  {
    GArrowArray* _cretval;
    _cretval = garrow_union_array_get_field(cast(GArrowUnionArray*)this._cPtr, i);
    auto _retval = gid.gobject2.object.ObjectWrap._getDObject!(gid_apache.arrow21.array.Array)(cast(GArrowArray*)_cretval, Yes.Take);
    return _retval;
  }

  /** */
  byte getTypeCode(long i) nothrow
  {
    byte _retval;
    _retval = garrow_union_array_get_type_code(cast(GArrowUnionArray*)this._cPtr, i);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow21.union_array.UnionArray]
class UnionArrayGidBuilderImpl(T) : gid_apache.arrow21.array.ArrayGidBuilderImpl!T
{

  /** */
  T typeIds(gid_apache.arrow21.int8_array.Int8Array propval) nothrow
  {
    return setProperty("type-ids", propval);
  }
}

/// Fluent builder for [gid_apache.arrow21.union_array.UnionArray]
final class UnionArrayGidBuilder : UnionArrayGidBuilderImpl!UnionArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  UnionArray build() nothrow
  {
    return new UnionArray(cast(void*)createGObject(UnionArray._getGType), Yes.Take);
  }
}
