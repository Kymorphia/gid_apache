/// Module for [NullArray] class
module gid_apache.arrow24.null_array;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow24.array;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.types;

/** */
class NullArray : gid_apache.arrow24.array.Array
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
    return cast(void function())garrow_null_array_get_type != &gidSymbolNotFound ? garrow_null_array_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowNullArray";
  }

  /** Returns `this`, for use in `with` statements. */
  override NullArray self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.null_array.NullArray]
      Returns: New builder object
  */
  static NullArrayGidBuilder builder() nothrow
  {
    return new NullArrayGidBuilder;
  }

  /** */
  this(long length) nothrow
  {
    GArrowNullArray* _cretval;
    _cretval = garrow_null_array_new(length);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.null_array.NullArray]
class NullArrayGidBuilderImpl(T) : gid_apache.arrow24.array.ArrayGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow24.null_array.NullArray]
final class NullArrayGidBuilder : NullArrayGidBuilderImpl!NullArrayGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  NullArray build() nothrow
  {
    return new NullArray(cast(void*)createGObject(NullArray._getGType), Yes.Take);
  }
}
