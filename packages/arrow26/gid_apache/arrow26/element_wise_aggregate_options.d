/// Module for [ElementWiseAggregateOptions] class
module gid_apache.arrow26.element_wise_aggregate_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.function_options;
import gid_apache.arrow26.types;

/** */
class ElementWiseAggregateOptions : gid_apache.arrow26.function_options.FunctionOptions
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
    return cast(void function())garrow_element_wise_aggregate_options_get_type != &gidSymbolNotFound ? garrow_element_wise_aggregate_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowElementWiseAggregateOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override ElementWiseAggregateOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.element_wise_aggregate_options.ElementWiseAggregateOptions]
      Returns: New builder object
  */
  static ElementWiseAggregateOptionsGidBuilder builder() nothrow
  {
    return new ElementWiseAggregateOptionsGidBuilder;
  }

  /**
      Get `skipNulls` property.
      Returns: Whether to skip (ignore) nulls in the input.
        If false, any null in the input forces the output to null.
  */
  @property bool skipNulls() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("skip-nulls");
  }

  /**
      Set `skipNulls` property.
      Params:
        propval = Whether to skip (ignore) nulls in the input.
          If false, any null in the input forces the output to null.
  */
  @property void skipNulls(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("skip-nulls", propval);
  }

  /** */
  this() nothrow
  {
    GArrowElementWiseAggregateOptions* _cretval;
    _cretval = garrow_element_wise_aggregate_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.element_wise_aggregate_options.ElementWiseAggregateOptions]
class ElementWiseAggregateOptionsGidBuilderImpl(T) : gid_apache.arrow26.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `skipNulls` property.
      Params:
        propval = Whether to skip (ignore) nulls in the input.
          If false, any null in the input forces the output to null.
      Returns: Builder instance for fluent chaining
  */
  T skipNulls(bool propval) nothrow
  {
    return setProperty("skip-nulls", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.element_wise_aggregate_options.ElementWiseAggregateOptions]
final class ElementWiseAggregateOptionsGidBuilder : ElementWiseAggregateOptionsGidBuilderImpl!ElementWiseAggregateOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ElementWiseAggregateOptions build() nothrow
  {
    return new ElementWiseAggregateOptions(cast(void*)createGObject(ElementWiseAggregateOptions._getGType), Yes.Take);
  }
}
