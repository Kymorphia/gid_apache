/// Module for [PivotWiderOptions] class
module gid_apache.arrow23.pivot_wider_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.function_options;
import gid_apache.arrow23.types;

/** */
class PivotWiderOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_pivot_wider_options_get_type != &gidSymbolNotFound ? garrow_pivot_wider_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowPivotWiderOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override PivotWiderOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.pivot_wider_options.PivotWiderOptions]
      Returns: New builder object
  */
  static PivotWiderOptionsGidBuilder builder() nothrow
  {
    return new PivotWiderOptionsGidBuilder;
  }

  /**
      Get `keyNames` property.
      Returns: The values expected in the pivot key column.
  */
  @property string[] keyNames() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string[])("key-names");
  }

  /**
      Set `keyNames` property.
      Params:
        propval = The values expected in the pivot key column.
  */
  @property void keyNames(string[] propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string[])("key-names", propval);
  }

  /**
      Get `unexpectedKeyBehavior` property.
      Returns: The behavior when pivot keys not in key_names are encountered.
  */
  @property gid_apache.arrow23.types.PivotWiderUnexpectedKeyBehavior unexpectedKeyBehavior() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.types.PivotWiderUnexpectedKeyBehavior)("unexpected-key-behavior");
  }

  /**
      Set `unexpectedKeyBehavior` property.
      Params:
        propval = The behavior when pivot keys not in key_names are encountered.
  */
  @property void unexpectedKeyBehavior(gid_apache.arrow23.types.PivotWiderUnexpectedKeyBehavior propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow23.types.PivotWiderUnexpectedKeyBehavior)("unexpected-key-behavior", propval);
  }

  /** */
  this() nothrow
  {
    GArrowPivotWiderOptions* _cretval;
    _cretval = garrow_pivot_wider_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.pivot_wider_options.PivotWiderOptions]
class PivotWiderOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `keyNames` property.
      Params:
        propval = The values expected in the pivot key column.
      Returns: Builder instance for fluent chaining
  */
  T keyNames(string[] propval) nothrow
  {
    return setProperty("key-names", propval);
  }

  /**
      Set `unexpectedKeyBehavior` property.
      Params:
        propval = The behavior when pivot keys not in key_names are encountered.
      Returns: Builder instance for fluent chaining
  */
  T unexpectedKeyBehavior(gid_apache.arrow23.types.PivotWiderUnexpectedKeyBehavior propval) nothrow
  {
    return setProperty("unexpected-key-behavior", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.pivot_wider_options.PivotWiderOptions]
final class PivotWiderOptionsGidBuilder : PivotWiderOptionsGidBuilderImpl!PivotWiderOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  PivotWiderOptions build() nothrow
  {
    return new PivotWiderOptions(cast(void*)createGObject(PivotWiderOptions._getGType), Yes.Take);
  }
}
