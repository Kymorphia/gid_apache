/// Module for [NullArrayBuilder] class
module gid_apache.arrow23.null_array_builder;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.array_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.types;

/** */
class NullArrayBuilder : gid_apache.arrow23.array_builder.ArrayBuilder
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
    return cast(void function())garrow_null_array_builder_get_type != &gidSymbolNotFound ? garrow_null_array_builder_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowNullArrayBuilder";
  }

  /** Returns `this`, for use in `with` statements. */
  override NullArrayBuilder self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.null_array_builder.NullArrayBuilder]
      Returns: New builder object
  */
  static NullArrayBuilderGidBuilder builder() nothrow
  {
    return new NullArrayBuilderGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowNullArrayBuilder* _cretval;
    _cretval = garrow_null_array_builder_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.null_array_builder.NullArrayBuilder]
class NullArrayBuilderGidBuilderImpl(T) : gid_apache.arrow23.array_builder.ArrayBuilderGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.null_array_builder.NullArrayBuilder]
final class NullArrayBuilderGidBuilder : NullArrayBuilderGidBuilderImpl!NullArrayBuilderGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  NullArrayBuilder build() nothrow
  {
    return new NullArrayBuilder(cast(void*)createGObject(NullArrayBuilder._getGType), Yes.Take);
  }
}
