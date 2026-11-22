/// Module for [FinishOptions] class
module gid_apache.arrowdataset25.finish_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.schema;
import gid_apache.arrowdataset25.c.functions;
import gid_apache.arrowdataset25.c.types;
import gid_apache.arrowdataset25.types;

/** */
class FinishOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_finish_options_get_type != &gidSymbolNotFound ? gadataset_finish_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetFinishOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override FinishOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset25.finish_options.FinishOptions]
      Returns: New builder object
  */
  static FinishOptionsGidBuilder builder() nothrow
  {
    return new FinishOptionsGidBuilder;
  }

  /**
      Get `inspectNFragments` property.
      Returns: The number of fragments to be used to inspect schema.
  */
  @property int inspectNFragments() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(int)("inspect-n-fragments");
  }

  /**
      Set `inspectNFragments` property.
      Params:
        propval = The number of fragments to be used to inspect schema.
  */
  @property void inspectNFragments(int propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(int)("inspect-n-fragments", propval);
  }

  /**
      Get `schema` property.
      Returns: The schema to finalize the dataset's schema.
  */
  @property gid_apache.arrow25.schema.Schema schema() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow25.schema.Schema)("schema");
  }

  /**
      Set `schema` property.
      Params:
        propval = The schema to finalize the dataset's schema.
  */
  @property void schema(gid_apache.arrow25.schema.Schema propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow25.schema.Schema)("schema", propval);
  }

  /**
      Get `validateFragments` property.
      Returns: Whether validate fragments against the given schema or not.
  */
  @property bool validateFragments() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("validate-fragments");
  }

  /**
      Set `validateFragments` property.
      Params:
        propval = Whether validate fragments against the given schema or not.
  */
  @property void validateFragments(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("validate-fragments", propval);
  }

  /** */
  this() nothrow
  {
    GADatasetFinishOptions* _cretval;
    _cretval = gadataset_finish_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset25.finish_options.FinishOptions]
class FinishOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T finishOptions(void* propval) nothrow
  {
    return setProperty("finish-options", propval);
  }

  /**
      Set `inspectNFragments` property.
      Params:
        propval = The number of fragments to be used to inspect schema.
      Returns: Builder instance for fluent chaining
  */
  T inspectNFragments(int propval) nothrow
  {
    return setProperty("inspect-n-fragments", propval);
  }

  /**
      Set `schema` property.
      Params:
        propval = The schema to finalize the dataset's schema.
      Returns: Builder instance for fluent chaining
  */
  T schema(gid_apache.arrow25.schema.Schema propval) nothrow
  {
    return setProperty("schema", propval);
  }

  /**
      Set `validateFragments` property.
      Params:
        propval = Whether validate fragments against the given schema or not.
      Returns: Builder instance for fluent chaining
  */
  T validateFragments(bool propval) nothrow
  {
    return setProperty("validate-fragments", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset25.finish_options.FinishOptions]
final class FinishOptionsGidBuilder : FinishOptionsGidBuilderImpl!FinishOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FinishOptions build() nothrow
  {
    return new FinishOptions(cast(void*)createGObject(FinishOptions._getGType), Yes.Take);
  }
}
