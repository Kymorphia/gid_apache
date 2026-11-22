/// Module for [IndexOptions] class
module gid_apache.arrow23.index_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.function_options;
import gid_apache.arrow23.scalar;
import gid_apache.arrow23.types;

/** */
class IndexOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_index_options_get_type != &gidSymbolNotFound ? garrow_index_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowIndexOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override IndexOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.index_options.IndexOptions]
      Returns: New builder object
  */
  static IndexOptionsGidBuilder builder() nothrow
  {
    return new IndexOptionsGidBuilder;
  }

  /**
      Get `value` property.
      Returns: The value to be compared.
  */
  @property gid_apache.arrow23.scalar.Scalar value() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.scalar.Scalar)("value");
  }

  /**
      Set `value` property.
      Params:
        propval = The value to be compared.
  */
  @property void value(gid_apache.arrow23.scalar.Scalar propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow23.scalar.Scalar)("value", propval);
  }

  /** */
  this() nothrow
  {
    GArrowIndexOptions* _cretval;
    _cretval = garrow_index_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.index_options.IndexOptions]
class IndexOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `value` property.
      Params:
        propval = The value to be compared.
      Returns: Builder instance for fluent chaining
  */
  T value(gid_apache.arrow23.scalar.Scalar propval) nothrow
  {
    return setProperty("value", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.index_options.IndexOptions]
final class IndexOptionsGidBuilder : IndexOptionsGidBuilderImpl!IndexOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  IndexOptions build() nothrow
  {
    return new IndexOptions(cast(void*)createGObject(IndexOptions._getGType), Yes.Take);
  }
}
