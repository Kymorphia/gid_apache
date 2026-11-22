/// Module for [JoinOptions] class
module gid_apache.arrow24.join_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.function_options;
import gid_apache.arrow24.types;

/** */
class JoinOptions : gid_apache.arrow24.function_options.FunctionOptions
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
    return cast(void function())garrow_join_options_get_type != &gidSymbolNotFound ? garrow_join_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowJoinOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override JoinOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.join_options.JoinOptions]
      Returns: New builder object
  */
  static JoinOptionsGidBuilder builder() nothrow
  {
    return new JoinOptionsGidBuilder;
  }

  /**
      Get `nullHandling` property.
      Returns: How to handle null values. (A null separator always results in a null output.)
  */
  @property gid_apache.arrow24.types.JoinNullHandlingBehavior nullHandling() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.types.JoinNullHandlingBehavior)("null-handling");
  }

  /**
      Set `nullHandling` property.
      Params:
        propval = How to handle null values. (A null separator always results in a null output.)
  */
  @property void nullHandling(gid_apache.arrow24.types.JoinNullHandlingBehavior propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow24.types.JoinNullHandlingBehavior)("null-handling", propval);
  }

  /**
      Get `nullReplacement` property.
      Returns: Replacement string for null values when null-handling is REPLACE.
  */
  @property string nullReplacement() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("null-replacement");
  }

  /**
      Set `nullReplacement` property.
      Params:
        propval = Replacement string for null values when null-handling is REPLACE.
  */
  @property void nullReplacement(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("null-replacement", propval);
  }

  /** */
  this() nothrow
  {
    GArrowJoinOptions* _cretval;
    _cretval = garrow_join_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.join_options.JoinOptions]
class JoinOptionsGidBuilderImpl(T) : gid_apache.arrow24.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `nullHandling` property.
      Params:
        propval = How to handle null values. (A null separator always results in a null output.)
      Returns: Builder instance for fluent chaining
  */
  T nullHandling(gid_apache.arrow24.types.JoinNullHandlingBehavior propval) nothrow
  {
    return setProperty("null-handling", propval);
  }

  /**
      Set `nullReplacement` property.
      Params:
        propval = Replacement string for null values when null-handling is REPLACE.
      Returns: Builder instance for fluent chaining
  */
  T nullReplacement(string propval) nothrow
  {
    return setProperty("null-replacement", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.join_options.JoinOptions]
final class JoinOptionsGidBuilder : JoinOptionsGidBuilderImpl!JoinOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  JoinOptions build() nothrow
  {
    return new JoinOptions(cast(void*)createGObject(JoinOptions._getGType), Yes.Take);
  }
}
