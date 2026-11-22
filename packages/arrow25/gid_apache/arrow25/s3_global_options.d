/// Module for [S3GlobalOptions] class
module gid_apache.arrow25.s3_global_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.types;

/** */
class S3GlobalOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_s3_global_options_get_type != &gidSymbolNotFound ? garrow_s3_global_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowS3GlobalOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override S3GlobalOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.s3_global_options.S3GlobalOptions]
      Returns: New builder object
  */
  static S3GlobalOptionsGidBuilder builder() nothrow
  {
    return new S3GlobalOptionsGidBuilder;
  }

  /**
      Get `logLevel` property.
      Returns: The log level of S3 APIs.
  */
  @property gid_apache.arrow25.types.S3LogLevel logLevel() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow25.types.S3LogLevel)("log-level");
  }

  /**
      Set `logLevel` property.
      Params:
        propval = The log level of S3 APIs.
  */
  @property void logLevel(gid_apache.arrow25.types.S3LogLevel propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow25.types.S3LogLevel)("log-level", propval);
  }

  /** */
  this() nothrow
  {
    GArrowS3GlobalOptions* _cretval;
    _cretval = garrow_s3_global_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.s3_global_options.S3GlobalOptions]
class S3GlobalOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `logLevel` property.
      Params:
        propval = The log level of S3 APIs.
      Returns: Builder instance for fluent chaining
  */
  T logLevel(gid_apache.arrow25.types.S3LogLevel propval) nothrow
  {
    return setProperty("log-level", propval);
  }
}

/// Fluent builder for [gid_apache.arrow25.s3_global_options.S3GlobalOptions]
final class S3GlobalOptionsGidBuilder : S3GlobalOptionsGidBuilderImpl!S3GlobalOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  S3GlobalOptions build() nothrow
  {
    return new S3GlobalOptions(cast(void*)createGObject(S3GlobalOptions._getGType), Yes.Take);
  }
}
