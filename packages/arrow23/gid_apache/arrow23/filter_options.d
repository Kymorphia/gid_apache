/// Module for [FilterOptions] class
module gid_apache.arrow23.filter_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.function_options;
import gid_apache.arrow23.types;

/** */
class FilterOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_filter_options_get_type != &gidSymbolNotFound ? garrow_filter_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFilterOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override FilterOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.filter_options.FilterOptions]
      Returns: New builder object
  */
  static FilterOptionsGidBuilder builder() nothrow
  {
    return new FilterOptionsGidBuilder;
  }

  /**
      Get `nullSelectionBehavior` property.
      Returns: How to handle filtered values.
  */
  @property gid_apache.arrow23.types.FilterNullSelectionBehavior nullSelectionBehavior() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.types.FilterNullSelectionBehavior)("null-selection-behavior");
  }

  /**
      Set `nullSelectionBehavior` property.
      Params:
        propval = How to handle filtered values.
  */
  @property void nullSelectionBehavior(gid_apache.arrow23.types.FilterNullSelectionBehavior propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow23.types.FilterNullSelectionBehavior)("null-selection-behavior", propval);
  }

  /** */
  this() nothrow
  {
    GArrowFilterOptions* _cretval;
    _cretval = garrow_filter_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.filter_options.FilterOptions]
class FilterOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `nullSelectionBehavior` property.
      Params:
        propval = How to handle filtered values.
      Returns: Builder instance for fluent chaining
  */
  T nullSelectionBehavior(gid_apache.arrow23.types.FilterNullSelectionBehavior propval) nothrow
  {
    return setProperty("null-selection-behavior", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.filter_options.FilterOptions]
final class FilterOptionsGidBuilder : FilterOptionsGidBuilderImpl!FilterOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FilterOptions build() nothrow
  {
    return new FilterOptions(cast(void*)createGObject(FilterOptions._getGType), Yes.Take);
  }
}
