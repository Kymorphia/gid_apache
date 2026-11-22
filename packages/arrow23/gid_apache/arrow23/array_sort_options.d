/// Module for [ArraySortOptions] class
module gid_apache.arrow23.array_sort_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.function_options;
import gid_apache.arrow23.types;

/** */
class ArraySortOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_array_sort_options_get_type != &gidSymbolNotFound ? garrow_array_sort_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowArraySortOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override ArraySortOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.array_sort_options.ArraySortOptions]
      Returns: New builder object
  */
  static ArraySortOptionsGidBuilder builder() nothrow
  {
    return new ArraySortOptionsGidBuilder;
  }

  /**
      Get `order` property.
      Returns: How to order values.
  */
  @property gid_apache.arrow23.types.SortOrder order() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.types.SortOrder)("order");
  }

  /**
      Set `order` property.
      Params:
        propval = How to order values.
  */
  @property void order(gid_apache.arrow23.types.SortOrder propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow23.types.SortOrder)("order", propval);
  }

  /** */
  this(gid_apache.arrow23.types.SortOrder order) nothrow
  {
    GArrowArraySortOptions* _cretval;
    _cretval = garrow_array_sort_options_new(order);
    this(_cretval, Yes.Take);
  }

  alias equal = gid_apache.arrow23.function_options.FunctionOptions.equal;

  /** */
  bool equal(gid_apache.arrow23.array_sort_options.ArraySortOptions otherOptions) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_array_sort_options_equal(cast(GArrowArraySortOptions*)this._cPtr, otherOptions ? cast(GArrowArraySortOptions*)otherOptions._cPtr(No.Dup) : null);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.array_sort_options.ArraySortOptions]
class ArraySortOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `order` property.
      Params:
        propval = How to order values.
      Returns: Builder instance for fluent chaining
  */
  T order(gid_apache.arrow23.types.SortOrder propval) nothrow
  {
    return setProperty("order", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.array_sort_options.ArraySortOptions]
final class ArraySortOptionsGidBuilder : ArraySortOptionsGidBuilderImpl!ArraySortOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ArraySortOptions build() nothrow
  {
    return new ArraySortOptions(cast(void*)createGObject(ArraySortOptions._getGType), Yes.Take);
  }
}
