/// Module for [RunEndEncodeOptions] class
module gid_apache.arrow20.run_end_encode_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.data_type;
import gid_apache.arrow20.function_options;
import gid_apache.arrow20.types;

/** */
class RunEndEncodeOptions : gid_apache.arrow20.function_options.FunctionOptions
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
    return cast(void function())garrow_run_end_encode_options_get_type != &gidSymbolNotFound ? garrow_run_end_encode_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRunEndEncodeOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override RunEndEncodeOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.run_end_encode_options.RunEndEncodeOptions]
      Returns: New builder object
  */
  static RunEndEncodeOptionsGidBuilder builder() nothrow
  {
    return new RunEndEncodeOptionsGidBuilder;
  }

  /**
      Get `runEndDataType` property.
      Returns: The data type for run-end.
  */
  @property gid_apache.arrow20.data_type.DataType runEndDataType() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow20.data_type.DataType)("run-end-data-type");
  }

  /**
      Set `runEndDataType` property.
      Params:
        propval = The data type for run-end.
  */
  @property void runEndDataType(gid_apache.arrow20.data_type.DataType propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow20.data_type.DataType)("run-end-data-type", propval);
  }

  /** */
  this(gid_apache.arrow20.data_type.DataType runEndDataType = null) nothrow
  {
    GArrowRunEndEncodeOptions* _cretval;
    _cretval = garrow_run_end_encode_options_new(runEndDataType ? cast(GArrowDataType*)runEndDataType._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.run_end_encode_options.RunEndEncodeOptions]
class RunEndEncodeOptionsGidBuilderImpl(T) : gid_apache.arrow20.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `runEndDataType` property.
      Params:
        propval = The data type for run-end.
      Returns: Builder instance for fluent chaining
  */
  T runEndDataType(gid_apache.arrow20.data_type.DataType propval) nothrow
  {
    return setProperty("run-end-data-type", propval);
  }
}

/// Fluent builder for [gid_apache.arrow20.run_end_encode_options.RunEndEncodeOptions]
final class RunEndEncodeOptionsGidBuilder : RunEndEncodeOptionsGidBuilderImpl!RunEndEncodeOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RunEndEncodeOptions build() nothrow
  {
    return new RunEndEncodeOptions(cast(void*)createGObject(RunEndEncodeOptions._getGType), Yes.Take);
  }
}
