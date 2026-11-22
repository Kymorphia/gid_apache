/// Module for [CumulativeOptions] class
module gid_apache.arrow23.cumulative_options;

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
class CumulativeOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_cumulative_options_get_type != &gidSymbolNotFound ? garrow_cumulative_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowCumulativeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override CumulativeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.cumulative_options.CumulativeOptions]
      Returns: New builder object
  */
  static CumulativeOptionsGidBuilder builder() nothrow
  {
    return new CumulativeOptionsGidBuilder;
  }

  /**
      Get `skipNulls` property.
      Returns: If true, nulls in the input are ignored and produce a corresponding null output.
        When false, the first null encountered is propagated through the remaining output.
  */
  @property bool skipNulls() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("skip-nulls");
  }

  /**
      Set `skipNulls` property.
      Params:
        propval = If true, nulls in the input are ignored and produce a corresponding null output.
          When false, the first null encountered is propagated through the remaining output.
  */
  @property void skipNulls(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("skip-nulls", propval);
  }

  /**
      Get `start` property.
      Returns: Optional starting value for cumulative operation computation.
  */
  @property gid_apache.arrow23.scalar.Scalar start() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.scalar.Scalar)("start");
  }

  /**
      Set `start` property.
      Params:
        propval = Optional starting value for cumulative operation computation.
  */
  @property void start(gid_apache.arrow23.scalar.Scalar propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow23.scalar.Scalar)("start", propval);
  }

  /** */
  this() nothrow
  {
    GArrowCumulativeOptions* _cretval;
    _cretval = garrow_cumulative_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.cumulative_options.CumulativeOptions]
class CumulativeOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `skipNulls` property.
      Params:
        propval = If true, nulls in the input are ignored and produce a corresponding null output.
          When false, the first null encountered is propagated through the remaining output.
      Returns: Builder instance for fluent chaining
  */
  T skipNulls(bool propval) nothrow
  {
    return setProperty("skip-nulls", propval);
  }

  /**
      Set `start` property.
      Params:
        propval = Optional starting value for cumulative operation computation.
      Returns: Builder instance for fluent chaining
  */
  T start(gid_apache.arrow23.scalar.Scalar propval) nothrow
  {
    return setProperty("start", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.cumulative_options.CumulativeOptions]
final class CumulativeOptionsGidBuilder : CumulativeOptionsGidBuilderImpl!CumulativeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  CumulativeOptions build() nothrow
  {
    return new CumulativeOptions(cast(void*)createGObject(CumulativeOptions._getGType), Yes.Take);
  }
}
