/// Module for [Aggregation] class
module gid_apache.arrow20.aggregation;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.function_options;
import gid_apache.arrow20.types;

/** */
class Aggregation : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_aggregation_get_type != &gidSymbolNotFound ? garrow_aggregation_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowAggregation";
  }

  /** Returns `this`, for use in `with` statements. */
  override Aggregation self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.aggregation.Aggregation]
      Returns: New builder object
  */
  static AggregationGidBuilder builder() nothrow
  {
    return new AggregationGidBuilder;
  }

  /**
      Get `function_` property.
      Returns: The function name to aggregate.
  */
  @property string function_() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("function");
  }

  /**
      Get `input` property.
      Returns: The input field name of aggregate function.
  */
  @property string input() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("input");
  }

  /**
      Get `options` property.
      Returns: The options of aggregate function.
  */
  @property gid_apache.arrow20.function_options.FunctionOptions options() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow20.function_options.FunctionOptions)("options");
  }

  /**
      Get `output` property.
      Returns: The output field name of aggregate function.
  */
  @property string output() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("output");
  }

  /** */
  this(string function_, gid_apache.arrow20.function_options.FunctionOptions options, string input, string output) nothrow
  {
    GArrowAggregation* _cretval;
    const(char)* _function_ = function_.toCString!(No.Malloc, No.Nullable);
    const(char)* _input = input.toCString!(No.Malloc, No.Nullable);
    const(char)* _output = output.toCString!(No.Malloc, No.Nullable);
    _cretval = garrow_aggregation_new(_function_, options ? cast(GArrowFunctionOptions*)options._cPtr(No.Dup) : null, _input, _output);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.aggregation.Aggregation]
class AggregationGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `function_` property.
      Params:
        propval = The function name to aggregate.
      Returns: Builder instance for fluent chaining
  */
  T function_(string propval) nothrow
  {
    return setProperty("function", propval);
  }

  /**
      Set `input` property.
      Params:
        propval = The input field name of aggregate function.
      Returns: Builder instance for fluent chaining
  */
  T input(string propval) nothrow
  {
    return setProperty("input", propval);
  }

  /**
      Set `options` property.
      Params:
        propval = The options of aggregate function.
      Returns: Builder instance for fluent chaining
  */
  T options(gid_apache.arrow20.function_options.FunctionOptions propval) nothrow
  {
    return setProperty("options", propval);
  }

  /**
      Set `output` property.
      Params:
        propval = The output field name of aggregate function.
      Returns: Builder instance for fluent chaining
  */
  T output(string propval) nothrow
  {
    return setProperty("output", propval);
  }
}

/// Fluent builder for [gid_apache.arrow20.aggregation.Aggregation]
final class AggregationGidBuilder : AggregationGidBuilderImpl!AggregationGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Aggregation build() nothrow
  {
    return new Aggregation(cast(void*)createGObject(Aggregation._getGType), Yes.Take);
  }
}
