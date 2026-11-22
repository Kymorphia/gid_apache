/// Module for [ListFlattenOptions] class
module gid_apache.arrow23.list_flatten_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.function_options;
import gid_apache.arrow23.types;

/** */
class ListFlattenOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_list_flatten_options_get_type != &gidSymbolNotFound ? garrow_list_flatten_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowListFlattenOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override ListFlattenOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.list_flatten_options.ListFlattenOptions]
      Returns: New builder object
  */
  static ListFlattenOptionsGidBuilder builder() nothrow
  {
    return new ListFlattenOptionsGidBuilder;
  }

  /**
      Get `recursive` property.
      Returns: If true, the list is flattened recursively until a non-list array is formed.
  */
  @property bool recursive() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("recursive");
  }

  /**
      Set `recursive` property.
      Params:
        propval = If true, the list is flattened recursively until a non-list array is formed.
  */
  @property void recursive(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("recursive", propval);
  }

  /** */
  this() nothrow
  {
    GArrowListFlattenOptions* _cretval;
    _cretval = garrow_list_flatten_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.list_flatten_options.ListFlattenOptions]
class ListFlattenOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `recursive` property.
      Params:
        propval = If true, the list is flattened recursively until a non-list array is formed.
      Returns: Builder instance for fluent chaining
  */
  T recursive(bool propval) nothrow
  {
    return setProperty("recursive", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.list_flatten_options.ListFlattenOptions]
final class ListFlattenOptionsGidBuilder : ListFlattenOptionsGidBuilderImpl!ListFlattenOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ListFlattenOptions build() nothrow
  {
    return new ListFlattenOptions(cast(void*)createGObject(ListFlattenOptions._getGType), Yes.Take);
  }
}
