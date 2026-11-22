/// Module for [SetLookupOptions] class
module gid_apache.arrow23.set_lookup_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.datum;
import gid_apache.arrow23.function_options;
import gid_apache.arrow23.types;

/** */
class SetLookupOptions : gid_apache.arrow23.function_options.FunctionOptions
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
    return cast(void function())garrow_set_lookup_options_get_type != &gidSymbolNotFound ? garrow_set_lookup_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSetLookupOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override SetLookupOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.set_lookup_options.SetLookupOptions]
      Returns: New builder object
  */
  static SetLookupOptionsGidBuilder builder() nothrow
  {
    return new SetLookupOptionsGidBuilder;
  }

  /**
      Get `skipNulls` property.
      Returns: Whether NULLs are skipped or not.
  */
  @property bool skipNulls() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("skip-nulls");
  }

  /**
      Set `skipNulls` property.
      Params:
        propval = Whether NULLs are skipped or not.
  */
  @property void skipNulls(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("skip-nulls", propval);
  }

  /**
      Get `valueSet` property.
      Returns: The set of values to look up input values into.
  */
  @property gid_apache.arrow23.datum.Datum valueSet() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow23.datum.Datum)("value-set");
  }

  /**
      Set `valueSet` property.
      Params:
        propval = The set of values to look up input values into.
  */
  @property void valueSet(gid_apache.arrow23.datum.Datum propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow23.datum.Datum)("value-set", propval);
  }

  /** */
  this(gid_apache.arrow23.datum.Datum valueSet = null) nothrow
  {
    GArrowSetLookupOptions* _cretval;
    _cretval = garrow_set_lookup_options_new(valueSet ? cast(GArrowDatum*)valueSet._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.set_lookup_options.SetLookupOptions]
class SetLookupOptionsGidBuilderImpl(T) : gid_apache.arrow23.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `skipNulls` property.
      Params:
        propval = Whether NULLs are skipped or not.
      Returns: Builder instance for fluent chaining
  */
  T skipNulls(bool propval) nothrow
  {
    return setProperty("skip-nulls", propval);
  }

  /**
      Set `valueSet` property.
      Params:
        propval = The set of values to look up input values into.
      Returns: Builder instance for fluent chaining
  */
  T valueSet(gid_apache.arrow23.datum.Datum propval) nothrow
  {
    return setProperty("value-set", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.set_lookup_options.SetLookupOptions]
final class SetLookupOptionsGidBuilder : SetLookupOptionsGidBuilderImpl!SetLookupOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SetLookupOptions build() nothrow
  {
    return new SetLookupOptions(cast(void*)createGObject(SetLookupOptions._getGType), Yes.Take);
  }
}
