/// Module for [PairwiseOptions] class
module gid_apache.arrow23.pairwise_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.function_options;
import gid_apache.arrow23.types;

/** */
class PairwiseOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_pairwise_options_get_type != &gidSymbolNotFound ? garrow_pairwise_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowPairwiseOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override PairwiseOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.pairwise_options.PairwiseOptions]
      Returns: New builder object
  */
  static PairwiseOptionsGidBuilder builder() nothrow
  {
    return new PairwiseOptionsGidBuilder;
  }

  /**
      Get `periods` property.
      Returns: Periods to shift for applying the binary operation, accepts negative values.
  */
  @property long periods() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("periods");
  }

  /**
      Set `periods` property.
      Params:
        propval = Periods to shift for applying the binary operation, accepts negative values.
  */
  @property void periods(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("periods", propval);
  }

  /** */
  this() nothrow
  {
    GArrowPairwiseOptions* _cretval;
    _cretval = garrow_pairwise_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.pairwise_options.PairwiseOptions]
class PairwiseOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `periods` property.
      Params:
        propval = Periods to shift for applying the binary operation, accepts negative values.
      Returns: Builder instance for fluent chaining
  */
  T periods(long propval) nothrow
  {
    return setProperty("periods", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.pairwise_options.PairwiseOptions]
final class PairwiseOptionsGidBuilder : PairwiseOptionsGidBuilderImpl!PairwiseOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  PairwiseOptions build() nothrow
  {
    return new PairwiseOptions(cast(void*)createGObject(PairwiseOptions._getGType), Yes.Take);
  }
}
